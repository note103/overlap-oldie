#!/usr/bin/env perl
use strict;
use warnings;
use feature 'say';

my %count;
for (<DATA>) {
    $count{$_}++;
}

my @overlap = grep {$count{$_} >= 2} keys %count;
#say "overlap:";
#say @overlap;

my @unique = grep {$count{$_} == 1} keys %count;
say "unique:";
say @unique;

__DATA__
