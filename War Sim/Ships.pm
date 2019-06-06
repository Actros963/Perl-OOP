#!/usr/bin/perl
use strict;
use 5.010;
use Data::Dumper;

package Ships; 
use Moose;
extends 'Military_equipment'; 
#переопределенный метод move
sub move {

}
#включить локатор
sub locator_on {
    my $self = shift;
    ...
}
#отшвартоваться
sub unmoor {
    my $self = shift;
    ...
}
#пришвартоваться
sub moor {
    my $self = shift;
    ...
}