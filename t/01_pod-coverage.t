#!/usr/bin/perl -T

# t/01_pod-coverage.t
#  Ensures all subroutines are documented with POD
#
# $Id$

use strict;
BEGIN {
  $^W = 1;
}

use Test::More;

unless ($ENV{TEST_AUTHOR}) {
  plan skip_all => 'Set TEST_AUTHOR to enable module author tests';
}

eval 'use Test::Pod::Coverage 1.04';
if ($@) {
  plan skip_all => 'Test::Pod::Coverage required to test POD Coverage';
}

all_pod_coverage_ok();
