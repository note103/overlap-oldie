#!/usr/bin/env perl
use strict;
use warnings;
use feature 'say';
use Time::Piece;
use Time::Seconds;

my ($stamp_local, $stamp_day);
my @week = <DATA>;
for (@week) {
    chomp $_;
    my $output = $_;
    $_ =~ s/\//-/g;
    $stamp_local = localtime->strptime($_, '%Y-%m-%d');
    #$stamp_day = $stamp_local->fullday; #Sunday
    $stamp_day = $stamp_local->wdayname; #Sun
    say $output."\t".$stamp_day;
}

__DATA__
2014/3/4
2014/3/21
2014/3/26
2014/3/27
