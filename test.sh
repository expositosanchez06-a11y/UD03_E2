#!/bin/bash


set -e


echo "Comprobando archivos de la aplicación..."


test -f app/src/main/webapp/index.html
test -f app.war


echo "Comprobando contenido de la aplicación..."


grep -q "<h1>Mi aplicación web</h1>" app/src/main/webapp/index.html


jar tf app.war | grep -q '^index.html$'


echo "Todas las pruebas se han superado correctamente."
