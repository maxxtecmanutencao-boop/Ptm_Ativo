#!/bin/bash

echo "========================================"
echo "  PTM JSL - Construindo Executavel"
echo "========================================"
echo

echo "[1/4] Instalando dependencias..."
pip install -r requirements.txt
pip install pyinstaller

echo
echo "[2/4] Limpando builds anteriores..."
rm -rf build dist *.spec

echo
echo "[3/4] Criando executavel com PyInstaller..."
pyinstaller setup.py --onefile --windowed --clean

echo
echo "[4/4] Copiando arquivos necessarios..."
cp BD.xlsm dist/ 2>/dev/null || true
cp Petrobras.png dist/ 2>/dev/null || true
cp "logo jsl.png" dist/ 2>/dev/null || true

echo
echo "========================================"
echo "  CONCLUIDO!"
echo "  Executavel em: dist/PTM_JSL_Sistema"
echo "========================================"