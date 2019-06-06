#!/usr/bin/perl
use strict;
use 5.014;
use Data::Dumper;


package crewmember {
    use Moose;
    use Moose::Util::TypeConstraints;
    
    enum 'Mil_Rank' => [qw(private sergeant lieutenant captain major)];             #валидация воинского звания
    enum 'Spec' => [qw(commander driver gunlayer charger radioman)];                #валидация специальности
    

    has 'first_name' => (is => 'ro', isa => 'Str', required => 1,);                 #Имя
    has 'midle_name' => (is => 'ro', isa => 'Str', predicate => 'has_midle_name');  #Отчество
    has 'Last_name' => (is => 'ro', isa => 'Str', required => 1,);                  #Фамилия
    has 'seniority' => (is => 'ro', isa => 'Int',required => 1,);                   #Срок службы
    has 'mil_model' => (is => 'rw', isa => 'Str', required => 1,);                  #Модель техники на которой прошел обучение
    has 'military_rank' => (is => 'ro', isa => 'Mil_Rank', required => 1,);         #Воинское звание
    has 'specialty' => (is => 'ro', isa => 'Spec', required => 1,);                 #Специальность

    sub full_name {                                                                 #Установка ФИО
        my $self = shift;
        return $self->first_name . ($self->has_midle_name
            ?' ' . $self->midle_name . ' '
            :' ') . $self->Last_name;
    }
}