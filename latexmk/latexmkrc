#!/usr/bin/env perl

$latex = 'platex -synctex=1 -halt-on-error';
$latex_silent = 'platex -synctex=1 -halt-on-error -interaction=batchmode';
$biber = 'biber  -u -U --output_safechars';
$bibtex = 'pbibtex';
$dvipdf = 'dvipdfmx %O -o %D %S';
$makeindex = 'mendex %O -o %D %S';
$pdf_mode = 3;  # Use dvipdf
$pvc_view_file_via_temporary = 0;  # Do not create backup file
$max_repeat = 5;
$preview_continuous_mode = 1;
if ($^O eq 'darwin') {
  $pdf_previewer = 'open -ga Skim';
} elsif ($^O eq 'linux') {
  $pdf_previewer = 'evince';
}
