# Configuración de latexmk para la plantilla UMU Thesis.
#
# Con este fichero, compilar la tesis completa (incluyendo bibliografía,
# glosario, acrónimos y todas las pasadas necesarias) se reduce a ejecutar:
#
#     latexmk
#
# y para borrar los ficheros intermedios:
#
#     latexmk -c        (deja el PDF)
#     latexmk -C        (borra también el PDF)
#
# Funciona igual en Windows, macOS y Linux, con TeX Live o MiKTeX.

# La plantilla usa fontspec, así que EXIGE XeLaTeX. No funciona con pdflatex.
$pdf_mode = 5;

# -shell-escape es obligatorio: el paquete 'minted' necesita lanzar un
# proceso externo para resaltar la sintaxis del código fuente.
$xelatex = 'xelatex -shell-escape -synctex=1 -interaction=nonstopmode %O %S';

# Bibliografía con biber (biblatex), no con bibtex.
$bibtex_use = 2;

# latexmk no gestiona 'glossaries' por su cuenta: hay que declararle las
# dependencias del glosario (.glo -> .gls) y de los acrónimos (.acn -> .acr).
add_cus_dep('glo', 'gls', 0, 'makeglo2gls');
add_cus_dep('acn', 'acr', 0, 'makeacn2acr');

sub makeglo2gls {
    system("makeindex -s \"$_[0].ist\" -t \"$_[0].glg\" -o \"$_[0].gls\" \"$_[0].glo\"");
}

sub makeacn2acr {
    system("makeindex -s \"$_[0].ist\" -t \"$_[0].alg\" -o \"$_[0].acr\" \"$_[0].acn\"");
}

# Ficheros que 'latexmk -c' debe limpiar además de los que ya conoce.
$clean_ext = 'acn acr alg glg glo gls glsdefs ist xdv synctex.gz';
