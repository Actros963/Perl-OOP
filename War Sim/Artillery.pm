#!/usr/bin/perl
use strict;
use 5.014;
use Data::Dumper;

package Artillery;
use Moose;
extends 'Military_equipment'; 

has 'art_type' => (
    is => 'ro',
    isa => 'HashRef',
    default => sub {{
        1 => 'selfmoving',
        2 => 'trailer',
    }}
);
#занять позицию
sub take_position {
    my $self = shift;

}
#сменить позицию
sub change_position{
    my $self = shift;

}
#замаскироваться
sub mask {
    my $self = shift;

}

#переопределение метода move
sub move {
    my $self = shift;
}

#переопределение метода стоп
sub stop {
    my $self = shift;
    }
