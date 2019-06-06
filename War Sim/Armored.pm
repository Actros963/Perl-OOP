#!/usr/bin/perl
use strict;
use 5.014;
use Data::Dumper;

package Armored; 
use Moose;
extends 'Military_equipment';

#покинуть танк
sub evacuate {
    my $self = shift;
}
#переправа через реку
sub river_crossing {
    my $self = shift;
}
#переопределение метода move
sub move {
    my $self = shift;
}
