#!/usr/bin/perl
use strict;
use warnings;

my $file_to_glue_to = $ARGV[0] or die "Need to provide the file name to glue files to\n";
my $directory = $ARGV[1] or die "Need to provide the processing directory containing CSV files to attach\n";
my $start_num = $ARGV[2]  or die "Need to add a start number\n";
my $end_num = $ARGV[3] or die "Need to to add a end number\n";
my $this_line = 0;
my $glue_line = '';
my %hash_store;
my @files_to_attach = <$directory/*>;
my $complete_line = '';
my $first_time = 1;

unlink($file_to_glue_to);
unless(open GLUE_TO_DATA, '>'.$file_to_glue_to) {
    # Die with error message
    # if we can't open it.
    die "\nUnable to create $file_to_glue_to\n";
}

foreach my $file_to_attach (@files_to_attach) {

    open(GLUE_TO_DATA, '<', $file_to_glue_to);
    $this_line = 0;
    print $file_to_glue_to . "\n";
    while ($glue_line = <GLUE_TO_DATA>) {
        if ($first_time == 1) {
            my @fields = split ",", $glue_line;
            if (defined $fields[0]) {
                $hash_store{$this_line} = "$fields[0],$fields[1]\n";
            }
            else {
                $hash_store{$this_line} = "";
            }
            $first_time = 0;
        } else {
            $hash_store{$this_line} = $glue_line;
        }
        $this_line += 1;
    }
    close GLUE_TO_DATA || die "Couldn't close GLUE_TO_DATA_READ file properly";

    open(GLUE_TO_DATA, '+>', $file_to_glue_to) or die "Could not open '$file_to_glue_to' $!\n";
    print $file_to_attach . "\n";
    open(ATTACH_DATA, '<', $file_to_attach) or die "Could not open '$file_to_attach' $!\n";
    $this_line = 0;
    while (my $attach_line = <ATTACH_DATA>) {
        $hash_store{$this_line} //= "";

        if ($this_line >= $start_num - 1 && $this_line < $end_num) {
            my @fields = split ",", $attach_line;
            my $hash_check = $hash_store{$this_line-($start_num-1)};
            chomp $hash_check;
            if (defined $fields[0] && defined $fields[1]) {

                if ($hash_check ne "") {
                    $complete_line = "$hash_check, , $fields[0], $fields[1]";
                    $complete_line =~ s/[\n\r]//g;
                    $complete_line = "$complete_line\n";
                }
                else {
                    $complete_line = "$fields[0], $fields[1]";
                }
            }
            else {
                if ($hash_check ne "") {
                    $complete_line = "$hash_check,,,";
                }
                else {
                    $complete_line = ",";

                }
            }

            print GLUE_TO_DATA $complete_line;

        }

        chomp $attach_line;
        $this_line += 1;
    }

    close GLUE_TO_DATA || die "Couldn't close GLUE_TO_DATA_READ_WRITE file properly";
    close ATTACH_DATA || die "Couldn't close ATTACH_DATA file properly";
}


