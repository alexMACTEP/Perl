#!/usr/bin/perl
use strict;
use warnings;

my $n1 = vvod_chisla();

while ( 1 ){
   print "Введите действие(Для выходы введите 'exit'): ";
   my $znak = <STDIN>;
   chomp( $znak );
   last if ($znak eq "exit");
   $znak =~ tr/-+*\///cd;
   my $n2 = vvod_chisla();
   if (($znak =~ m/\//) && ($n2 == 0)){
      print "На ноль делить нельзя\n";
      last;
   } else {
 #    print "---------'$n1','$znak','$n2'------\n";
      $n1 = eval($n1.$znak.$n2);
      print "$n1 \n";
   }
}

sub vvod_chisla{
   print "Введите число: ";
   my $number = <STDIN>;
   $number =~ tr/0-9.//cd;
   chomp( $number );
return $number;
}
1;