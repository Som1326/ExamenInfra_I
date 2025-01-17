#!/usr/bin/env bash
#
# Este script se encarga de invocar los tres programas que permiten la 
# conversion de un PNG a secuencia de pixeles, se procesan esos pixeles y
# posteriormente se convierte esa secuencia de pixeles a un archivo en formato
# PNG
#
# Autor: Sebastian Orrego - orrego.sebastian@correounivalle.edu.co
# Fecha: 2024-10-24
#
for INPUT_JPG in imagenes/*.jpg; do
  TEMP_FILE="${INPUT_JPG%.jpg}.bin"

  python3 fromPNG2Bin.py "${INPUT_JPG}"
  ./main "${TEMP_FILE}"
  python3 fromBin2PNG.py "${TEMP_FILE}.new"
done