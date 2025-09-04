#!/usr/bin/env bash

echo "🔧 Corrigindo importação quebrada do xhtml2pdf..."
X2P_PATH=$(pip show xhtml2pdf | grep Location | cut -d' ' -f2)/xhtml2pdf/context.py

# Faz o patch automático da importação quebrada
sed -i 's/from reportlab.platypus.frames import Frame, ShowBoundaryValue/from reportlab.platypus.frames import Frame\nfrom reportlab.pdfgen.canvas import ShowBoundaryValue/' "$X2P_PATH"
