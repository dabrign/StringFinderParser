#!/usr/bin/perl
###########################################################
#               MODULE DEFINITION                         #
###########################################################

use 5.010;
use strict;
use warnings;
use Path::Class; #for use the file
use autodie; # die if problem reading or writing a file

###########################################################
#               VARIABLE DEFINITION                       #
###########################################################


###########################################################
#               SUB-ROUTINE                               #
###########################################################

###########################################################
#               INITIALIZATION                            #
###########################################################
my $file_write= file("data.txt");
my $file_write_handle =$file_write->openw();

my $filename = 'OutPutFilename.txt';
my $substr='SubstringToFind';

###########################################################
#               PARSE FILE                                #
###########################################################

open(my $fh, '<:encoding(UTF-8)', $filename)
  or die "Could not open file '$filename' $!";
 
while (my $row = <$fh>) {
	  chomp $row;
	  if (index($row, $substr) != -1) {
		$file_write_handle->print("$row\n");
		} 	 
	  print "$row\n";
}
