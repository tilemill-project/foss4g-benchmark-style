#!/usr/bin/env python
import string
import sys
import csv

def Usage():
    print 'Usage: create_table.py <filename>'
    sys.exit(1)

# =============================================================================

mapnik_url = 'http://12.189.158.78:8091/?srs=epsg:3857&width={width}&height={height}&bbox={bbox}'
mapserver_url = 'http://12.189.158.78:8081/fcgi-bin/mapserv6.fcgi?service=wms&request=getmap&version=1.1.1&srs=EPSG:3857&format=image/png&layers=default&styles=&transparent=false&map=/benchmarking/wms/2011/mapserver/osm-google.map&bbox={bbox}&height={height}&width={width}'


header = """<!DOCTYPE html>
<html>
<head>
  <title>Image comparison</title>
  <style>
    body { background:black; color:white; font-family:Helvetica, sans-serif; }
    .compare, .header { position:relative; width:1537px; height:768px; margin:0 auto; }
    .compare > div { display:none; }
    .compare > div.active { display:block; }
    .header { height:28px; overflow:hidden; }
    .label { width:768px; float:left; text-align:center; }
    .counter { position:absolute; top:0; text-align:center; width: 1537px; font-weight:bold; }
    img { position:absolute; max-width: 768px; max-height:768px; left:769px; }
    .compare img:first-child { left:auto; right: 769px; }
  </style>
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>
  <script type="text/javascript" charset="utf-8">
    $(function() {
      var active = $('.compare > div:first-child').addClass('active');
      var index = 1, total = $('.compare > div').size();
      var counter = $('.counter').text(index + '/' + total);
      $(window).keydown(function(ev) {
        if (ev.keyCode == 39 || ev.keyCode == 32) {
          if (active.next().size()) {
            active = active.removeClass('active').next().addClass('active');
            counter.text(++index + '/' + total);
          }
          return false;
        } else if (ev.keyCode == 37) {
          if (active.prev().size()) {
            active = active.removeClass('active').prev().addClass('active');
            counter.text(--index + '/' + total);
          }
          return false;
        }
      });
    });
  </script>
</head>
<body>
  
<div class="header">
  <div class="label">MapServer</div>
  <div class="label">Mapnik</div>
  <div class="counter"></div>
</div>

<div class="compare">
"""

footer = """
</div>

</body>
</html>
"""

if __name__ == '__main__':
    if len(sys.argv) < 2:
        Usage()

    input_file = sys.argv[1]

    html = open('comparison.html', 'w')
    
    html.write(header)

    mapserver_url = mapserver_url.replace('&', '&amp;')
    mapnik_url = mapnik_url.replace('&', '&amp;')

    for row in csv.reader(open(input_file, 'rb'), delimiter=';'):
        html.write('  <div>\n')
        html.write('    <img src="' + mapserver_url.format(width = row[0], height = row[1], bbox = row[2]) + '">\n')
        html.write('    <img src="' + mapnik_url.format(width = row[0], height = row[1], bbox = row[2]) + '">\n')
        html.write('  </div>\n')

    html.write(footer)

    html.close()
