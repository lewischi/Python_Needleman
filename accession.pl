#!/pkg/bin/perl -w

# As a line is read, it checks if the line has the word ACCESSION
# followed by a space followed later by an accession number.
#It grabs the accession number if so. An accession number is
#a string that has either 1 or 2 capital letters, followed by
#a run of between 3 to 7 digitis. After the digits should
#be either a space, a comma, a period,
#a semi-colon, a colon, or a question mark. 

print "type the input file name please\n";
open (INFO, <>);  

print "type the output file name please\n";
$myoutfile = <>;  
open (OUTFO, "> $myoutfile"); 

while ( $line = <INFO>) {     
                              
	if ($line =~ m/.*?ACCESSION .*?([A-Z]{1,2}\d{3,7})[ ,.;:?]/)  {
		print OUTFO "The input line does contain an Accession number, and it
	is $1.  \n";  # Note the use of OUTFO to direct the printing to the
				  # file associated with OUTFO
	}
	else  {
		print OUTFO "The input line does not contain an Accession number\n";
	}

	print OUTFO "The input line is \n$line";

}  # This is the end of the while block. This } matches the { on while
	   # line. Note that there are two nested {...} blocks inside this block
