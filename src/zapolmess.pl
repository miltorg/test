#!/usr/bin/perl

print "Content-type: text/html\n\n";
use utf8;
#use strict;
#use warnings FATAL => 'all';
use DBI;

#-------------------------------------------------------------------

$dbh = DBI->connect("DBI:mysql:","", "",{'RaiseError' => 1});
$dbh->do('SET CHARACTER SET utf8');

#--------------------------------------------------------------------


open(D, 'out');


while (<D>) {
  
  if (/<=/) { 
    
    if (/id=/){
      
      my ($d, $t, $ids, $n, $adr, @m) = split/ /;
      
      
      
      my $id; my $strlogm;
      for (@m) {
        $id = $_ if /id=/;
        
        $id =~ s/id=//;
        
        $strlogm .= "$_ ";
        
        }
      
      print my $strlog = "$ids $n $adr $strlogm";
      
      print "$d $t $id $ids $adr <br>\n";

      print $kod=qq~INSERT INTO `message2` SET created = "$d $t", int_id = "$ids", id = "$id", str =	"$strlog", address="$adr"~;
      $dbh->do($kod);


      
      
#last M1;      
  
}}


  }

M1:
close D;
