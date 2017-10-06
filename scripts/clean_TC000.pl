#!/usr/bin/perl -w
use File::Find;

$num_args = $#ARGV + 1;
if ($num_args != 1) {
    print "\nUsage: clean_TC000.pl <TXT PREFORMA report>\n";
    exit;
}
$report = $ARGV[0];
$report_new = "$report.tmp";

my @all_files;

open(my $fh1, '<', $report) or die "Can't open $report: $!";
	
while(<$fh1>) 
{
	next unless (/^(.*)\sQ0\s(.*)\s0\s1\s(.*)$/);

	if($1 ne 'TC000')
	{
		push @all_files, $2;
	}
} 
close($fh1);

open(my $fh2, '<', $report) or die "Can't open $report: $!";
open(my $fh, '>', $report_new) or die "Can't open $report_new: $!";

while(<$fh2>) 
{
	next unless (/^(.*)\sQ0\s(.*)\s0\s1\s(.*)$/);
	if( ($1 eq 'TC000') and ($2 ~~ @all_files) )
	{
		next;
	}
		
	print $fh "$_";
} 

close($fh2);
close($fh);	

unlink $report;
rename $report_new, $report;

