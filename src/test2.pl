#!/usr/bin/perl

print "Content-type: text/html\n\n";
use utf8;
#use strict;
#use warnings FATAL => 'all';
use DBI;

$p= &decoderovka();
utf8::decode($p);

#------------------------------------------------------------------------------

&verx($p);
print $p;

if($p){
  
print "\n<p> </p>\n";

#-------------------------------------------------------------------

$dbh = DBI->connect("DBI:mysql:","", "",{'RaiseError' => 1});
$dbh->do('SET CHARACTER SET utf8');

$zap = qq{
SELECT `created`, `str`, `int_id`
FROM log WHERE address="$p"
UNION SELECT `created`, `str`, `int_id` FROM message2 WHERE address="$p" ORDER BY `int_id`  LIMIT 100};


my $sth = $dbh->prepare($zap);
$sth->execute();

#--------------------------------------------------------------------

print q~
<table id="example" class="display nowrap" style="padding: 20px;">
  <thead>
    <tr><th>Дата</th><th>Лог</th><th>int_id</th></tr>
  </thead>
  <tbody>~;

#--------------------------------------------------------------------------
while (my ($cr, $str, $int_id ) = $sth->fetchrow_array()){
  $str =~ s/\n//;
  print "\n  <tr>\n    <td>$cr</td>\n    <td>$str</td>\n    <td>$int_id</td>\n  </tr>";
  ++$i;
  }
$sth->finish();

#------------------------------------------------------------------------------
print 'В выборке больше 100 строк' if $i>99;

print q~

  </tbody>

</table>~;

}

print q~
</body>

</html>~;

#-----------------------------------------------------------------------------
sub decoderovka{
	$_= $ENV{QUERY_STRING};
  
  if(/q=%22.*/) {return 'нельзя';}
	s/\+/ /g;
    s/%([0-9A-H]{2})/pack("C",hex($1))/eg;
    s/q=//;
    s/"//g;
    s/>//g;
    s/<//g;
    return $_;
    }

#-----------------------------------------------------------------------------
sub verx{
	print q~<!DOCTYPE html>
<html lang="ru">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Тест</title>
  <link rel="stylesheet" href="https://cdn.datatables.net/1.13.5/css/jquery.dataTables.css" />
  <script type="text/javascript" language="javascript" src="https://code.jquery.com/jquery-3.7.0.js"></script>
	<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.13.5/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/buttons/2.4.1/js/dataTables.buttons.min.js"></script>
	<script type="text/javascript" language="javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.10.1/jszip.min.js"></script>
	<script type="text/javascript" language="javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
	<script type="text/javascript" language="javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
	<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.html5.min.js"></script>
	<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.print.min.js"></script>

	<script type="text/javascript" class="init">
    $(document).ready(function() {
	    $('#example').DataTable( {
        dom: 'Bfrtip',
        language: {
          url: '//cdn.datatables.net/plug-ins/1.13.5/i18n/ru.json',
          },
		    buttons: ['copy', 'excel', 'csv', 'pdf', 'print']
	    } );
    } );
	</script>

</head>

<body>

<form>
  Адрес получателя:
  <input name="q">
  <input type="submit">
</form>

~;
}
