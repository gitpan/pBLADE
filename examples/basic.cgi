#! /usr/bin/perl -w
use strict;

use BLADE;

my $blade = blade_page_init(\@ARGV,'','en');
$blade->run( \&body, 'Hello World', 'Hello World', '', '', 1);
$blade->destroy;

exit 0;

sub body {
	my $blade = shift;
	print "\nHR\n";
	$blade->hr();
	print "@_\n";
	$blade->hr();
	print "\nHR\n";
}
