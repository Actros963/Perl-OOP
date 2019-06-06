#!/usr/bin/perl
use strict;
use 5.014;
use Data::Dumper;

package Reload;
use Moose::Role;

require 'reload';

#заряжено 1, нет 0
has 'is_load' => (is => 'rw', isa => 'Bool', default => 0,);
#боезапас
has 'ammo' => (is => 'rw', isa => 'Int', required => 1,);

sub reload {
    my $self = shift;
    if ($self->is_load == 0) {
        inner();
    }else{
        say 'Weapon is loaded.'
    }         
}