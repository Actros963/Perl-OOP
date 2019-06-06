#!/usr/bin/perl
use strict;
use 5.014;
use Data::Dumper;

package Military_equipment; 
use Moose;
#размер экипажа
has 'number_crew' => (
    is => 'ro',
     isa => 'Int',
);     
#экипаж                     
has 'crew' => (
    is => 'rw',
    isa => 'HashRef',
);        
#Имя модели                     
has 'model_name' => (
    is => 'ro',
    isa => 'Str',
);  
#прочность
has 'strenght' => (
    is => 'rw',
    isa => 'Int',
);   
#максимальная скорость
has 'max_speed' => (
    is => 'rw', 
    isa => 'Int',
);   
#текущая скорость                          
has 'current_speed' => (
    is => 'rw', 
    isa => 'Int', 
    default => 0,
); 
#толщина брони          
has 'armor_thickness' => (
    is => 'ro', 
    isa => 'Int',

);   
#установленное оружие                    
has 'weapon' => (
    is => 'ro', 
    builder => '_build_weapon', 
    predicate => 'has_predicate',
);   
#наносимый урон     
has 'damage' => (
    is => 'rw', 
    builder => '_build_damage', 
    predicate => 'has_predicate',       
);

#двигаться
sub move {
    my ($self, $speed) = @_;
    if (($self -> current_speed) == 0){
        if ($_ <= ($self->max_speed)) {
            $self -> current_speed = $speed;
            say 'Start moving at a speed ' . $speed;
        } else {
            $self->current_speed = 0;
            say 'I can\'t go that fast! Reduse speed!';
        }
    } else {
        say 'I\'m going at a speed of ' . $self->current_speed;
    } 
}
#остановиться
sub stop {
    my $self = shift;
    $self->current_speed = 0;
    say 'I stopped';        
}
#ускориться
sub accelerate {
    my ($self, $accel) = @_;
    if (($self->current_speed) != 0){
        if ($accel <= ($self->max_speed)) {
            $self->current_speed += $accel;
        }
    }
    if ($self->current_speed > $self->max_speed){
        $self->current_speed = $self->max_speed;
    }
}
#замедлиться
sub decelerate {
    my ($self, $decel) = @_;
    if ($self->current_speed != 0){
        $self->current_speed -= $decel;
    } 
    if ($self->current_speed < 1){
        $self->stop;
    }
}
#атаковать 
sub attack {
    my ($self, $weapon) = @_;
    ...       
}
#получить повреждения
sub get_damaged {
    my ($self, $other) = @_;
    $self->strenght -= $other->damage;
    if ($self->strenght <= 0){
        $self->DEMOLISH();
    }      
}
sub _build_weapon {
    ...
}

sub _build_damage {
    ...
}
