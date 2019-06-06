#!/usr/bin/perl
use strict;
use 5.014;
use Data::Dumper;

package Torpedo;
use Moose;
extends 'Weapon';


with 'Explosion';

#калибр торпеды
has 'caliber' => (
    is => 'rw',
    isa => 'Int'
    );

#подрыв и уничтожение объекта
sub blasting {
    my $self = shift;
    $self->DEMOLISH();
}

#выстрел
override  ('shoot',
    sub {
        my $self = shift;
        $self->blasting;
    }
);

