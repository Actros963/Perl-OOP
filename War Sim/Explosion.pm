#!/usr/bin/perl
use strict;
use 5.014;
use Data::Dumper;

package Explosion;
use Moose::Role;

require 'blasting';
#заряжено 1, нет 0
has 'is_load' => (is => 'ro', isa => 'Bool', default => 1,);

