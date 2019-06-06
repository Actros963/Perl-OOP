#!/usr/bin/perl
use strict;
use 5.014;
use Data::Dumper;

package Machinegun;
use Moose;
extends 'Weapon';


#емкость полной обоймы 
has 'capacity' => (is => 'ro', isa => 'Int', required => 1);
#текущий остаток патронов в обойме
has 'cur_capacity' => (is => 'rw', isa => 'Int', default => 0,);

override  ('shoot',
    sub{

}
);
with 'Reload';
#перезарядка
augment 'reload' => sub {
    my $self = shift;
    if ($self->cur_capacity == 0){
        if ($self->ammo > 0){
            $self->cur_capacity = $self->capacity;
            $self->ammo -= 1;
            $self->is_load = 1;
            say "Machinegun reloaded. Ready for battle.";
        }elsif ($self->ammo == 0){
            say 'Ammunition is empty.';
        }
    }
}
