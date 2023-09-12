#!/usr/bin/perl
use strict;
use warnings;

my @nume = ( 2, 7, 9, 1, 8, 10, 91, 0, 56, 32, 936 );
my $flag = 1;

while ( $flag ) {
$flag = 0;
   for ( my $i = 0; $i < scalar @nume - 1; $i++ ) {
      if ( $nume[$i] > $nume[$i + 1] ) {
         ( $nume[$i], $nume[$i + 1] ) = ( $nume[$i + 1], $nume[$i] );
         $flag = 1;
      }
   }
}

print "@nume \n";