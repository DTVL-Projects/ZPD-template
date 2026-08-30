use File::Path qw(make_path);

$pdf_mode = 1;

$out_dir = 'output';
$aux_dir = 'build';

make_path($out_dir) unless -d $out_dir;
make_path($aux_dir) unless -d $aux_dir;

$pdflatex = 'pdflatex -synctex=1 -interaction=nonstopmode -file-line-error %O %S';