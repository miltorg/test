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
  

  
  #s/"/\"/g;
  
  if ($_ !~ /<=/) { 
    
    if (/id=/){
      
      s/"/\\"/g;
      
      print;
      
      print "\n-------";
      
      my ($d, $t, $ids, $n, $adr, @m) = split/ /;
      
      
      
      my $id; my $strlogm;
      for (@m) {

        $id = $_ if /id=/;
        
        $strlogm .= "$_ ";
        
        }
      
      print my $strlog = "$ids $n $adr $strlogm";
      
      
      print "$d $t $id $ids $adr <br>\n";
      
      print $kod=qq~INSERT INTO `log` SET created = "$d $t", int_id = "$ids", address = "$adr", str =	"$strlog"~;
      $dbh->do($kod);

      #print $kod=qq~INSERT INTO `message` SET created = "$d $t", int_id = "$ids", id = "$id", str =	"$strlog"~;
      #$dbh->do($kod);


      
      
#last M1;      
  
}}


  }

M1:
close D;
