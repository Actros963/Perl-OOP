#!/usr/bin/perl
use strict;
use 5.014;
use Data::Dumper;

package Gun;
use Moose;
extends 'Weapon';


override ('shoot',
    sub{

}
);

with 'Reload';
#перезарядка
augment 'reload' => sub {
    my $self = shift;
        if ($self->ammo > 0){
            $self->is_load = 1;
            $self->ammo -=1;
            say 'Gun reloaded. Ready for battle.';
        }elsif ($self->ammo == 0){
            say 'Ammunition is empty.';
        }
    }

