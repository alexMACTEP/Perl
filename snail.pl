##!/usr/bin/perl
 use strict;
 use warnings;

 my $realize = $ARGV[0];
 my $add = $ARGV[1];
 my $dolg = $ARGV[2];

 my $kpd= ($realize-$add)*10;
 print $kpd > 0? "snail will win through ". (int($dolg / $kpd) + 1). " sprint \n" : "Snail will lose \n";