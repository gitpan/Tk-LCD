#!/usr/local/bin/perl -w
use Tk;
use lib './blib/lib'; use Tk::LCD;
use Tk::widgets qw//;
use strict;

my $mw = MainWindow->new;

my $frog;
my $lcd = $mw->LCD(-elements => 11, -variable => \$frog)->pack;

$lcd->set(-1234567890);
$mw->idletasks; $mw->after(3000);

$lcd->configure(qw/
    -elements   4
    -background white 
    -onoutline  blue
    -onfill     blue
    -offoutline white
    -offfill    white
/);
$frog = 2002;

MainLoop;
