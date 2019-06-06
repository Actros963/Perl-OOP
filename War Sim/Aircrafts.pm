#!/usr/bin/perl
use strict;
use 5.014;
use Data::Dumper;

package Aircrafts; 
use Moose;
extends 'Military_equipment';

#переопределение метода move
sub move {

    }
#переопределение метода stop
sub stop {

    }
#взлет
sub rise_air {
    $self = shift;
    
}
#посадка
sub landing {
    $self = shift;

}