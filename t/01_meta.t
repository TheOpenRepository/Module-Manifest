#!/usr/bin/perl -T

# t/01_meta.t
#  Tests that the META.yml meets the specification
#
# $Id$

use strict;
BEGIN {
	$^W = 1;
}

use Test::More;

eval 'use Test::YAML::Meta';

if ($@) {
  plan skip_all => 'Test::YAML::Meta required to test META.yml';
}

plan tests => 2;

# counts as 2 tests
meta_spec_ok('META.yml', undef, 'META.yml matches the META-spec');