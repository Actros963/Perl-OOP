#!/usr/bin/perl
use strict;
use 5.014;
use Data::Dumper;

package Rocket;
use Moose;
extends 'Weapon';


#высота полета
has 'flight_altitude' => (
    is => 'rw',
    isa => 'Int'
);
#атакована 1 - да, 0 - нет 
has 'attacked' => (
    is => 'rw',
    isa => 'Int',
    default => 0,
);

with 'Explosion';

#сменить курс
sub course_change {
    my $self = shift;
    ...
}

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
