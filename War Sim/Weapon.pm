#!/usr/bin/perl
use strict;
use 5.014;
use Data::Dumper;

package Weapon;
use Moose;

#тип оружия
has 'weapon_type' => (is => 'ro', isa => 'Str', required => 1,);
#дальность стрельбы
has 'fire_range' => (is => 'ro', isa => 'Int',);
#боезапас
has 'ammo' => (is => 'rw', isa => 'Int', required => 1,);
#наносимый урон
has 'damage' => (is => 'ro', isa => 'Int', required => 1,);

#выстрел
sub shoot {
    my $self = shift;
    say 'Bzdyshhh`!'
}
    

#прицелиться
sub target {
    my ($self, $target) = @_;
    say 'lock on target ' . $target;

}