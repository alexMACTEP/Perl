#!/usr/bin/perl
use strict;
use warnings;

my $flag = 1;
my $n1 = <STDIN>;
$n1 =~ s/\D//g;

while ( $flag ){
   my $znak = <STDIN>;
   chomp( $znak );
   last if ($znak eq "exit");
   $znak =~ s/['\#','\@','\~','\!','0-9','a-z','\&',' ']//g;
   my $n2 = <STDIN>;
   last if ($n2 eq "exit");
   $n2 =~ s/\D//g;
   if (($znak =~ m/\//) && ($n2 == 0)){
      print "na 0 ne delyt\n";
      last;
   } else {
 #     print "---------'$n1','$znak','$n2'------\n";
      $n1 = eval($n1.$znak.$n2);
      print "$n1 \n";
   }
}
