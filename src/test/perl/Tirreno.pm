package Tirreno;

use Moose;

use DateTime;
use ParcoursDB::Col;
use ParcoursDB::Country::Italy::Locations qw(
    amatrice
    arezzo
    bucchianico
    camaiore
    cascina
    castelraimondo
    chieti
    cittareale
    donoratico
    fano
    foligno
    follonica
    guardiagrele
    indicatore
    lido_di_camaiore
    narni_scalo
    numana
    ortona
    porto_sant_elpidio
    prati_di_tivo
    san_benedetto_del_tronto
    san_vincenzo
);

use ParcoursDB::StageRace::TirrenoAdriatico::Builder;

sub build {
    my ( $self, $year ) = @_;
    my $method = "_" . $year;
    return $self->$method;
}

sub _2013 {
    my ( $self ) = @_;

    my $builder = ParcoursDB::StageRace::TirrenoAdriatico::Builder->new(
        date    => DateTime->new( year => 2013, month => 3, day => 6 ),
    );

    # Prologue
    $builder->prologue( san_vincenzo, donoratico, 16.9 );

    # Stage 1
    $builder->road_stage( san_vincenzo, indicatore, 232 );

    # Stage 2
    $builder->road_stage( indicatore, narni_scalo, 190 );

    # Stage 3
    $builder->road_stage( narni_scalo, prati_di_tivo, 173 );

    # Stage 4
    $builder->road_stage( ortona, chieti, 230 );

    # Stage 5
    $builder->criterium( porto_sant_elpidio, 209 );

    # Stage 6
    $builder->out_and_back_individual_time_trial( san_benedetto_del_tronto, 9.2 );

    return $builder->build;
}

sub _2014 {
    my ( $self ) = @_;

    my $builder = ParcoursDB::StageRace::TirrenoAdriatico::Builder->new(
        date    => DateTime->new( year => 2014, month => 3, day => 12 ),
    );

    # Prologue
    $builder->prologue( donoratico, san_vincenzo, 18.5 );

    # Stage 1
    $builder->road_stage( san_vincenzo, cascina, 166 );

    # Stage 2
    $builder->road_stage( cascina, arezzo, 212 );

    # Stage 3
    $builder->road_stage( indicatore, cittareale, 244 );

    # Stage 4
    $builder->road_stage( amatrice, guardiagrele, 192 );

    # Stage 5
    $builder->road_stage( bucchianico, porto_sant_elpidio, 193 );

    # Stage 6
    $builder->out_and_back_individual_time_trial( san_benedetto_del_tronto, 9.1 );

    return $builder->build;
}

sub _2018 {
    my ( $self ) = @_;

    my $builder = ParcoursDB::StageRace::TirrenoAdriatico::Builder->new(
        date    => DateTime->new( year => 2018, month => 3, day => 3 ),
    );

    # Stage 1
    $builder->out_and_back_team_time_trial( lido_di_camaiore, 21.5 );

    # Stage 2
    $builder->road_stage( camaiore, follonica, 172 );

    # Stage 3
    $builder->mountain_stage( follonica );

    my $roccastrada           = $builder->_make_col( name => "Roccastrada", height => 377 );
    my $passo_del_lume_spento = $builder->_make_col( name => "Passo del Lume Spento", height => 631 );
    my $la_foce               = $builder->_make_col( name => "La Foce", height => 551 );
    my $trevi                 = $builder->_make_col( name => "Trevi", height => 425 );

    $builder->uc_col( $roccastrada, 35.7 );
    $builder->uc_col( $passo_del_lume_spento, 76.8 );
    $builder->uc_col( $la_foce, 113.8 );
    $builder->summit_finish( $trevi, 'UC', 239 );

    # Stage 4
    $builder->mountain_stage( foligno );

    my $san_ginesio        = $builder->_make_col( name => "San Ginesio",        height => 638 );
    my $gualdo             = $builder->_make_col( name => "Gualdo",             height => 651 );
    my $penna_san_giovanni = $builder->_make_col( name => "Penna San Giovanni", height => 599 );
    my $sarnano_sassotetto = $builder->_make_col( name => "Sarnano Sassotetto", height => 1335 );

    $builder->uc_col( $san_ginesio, 137.6 );
    $builder->uc_col( $gualdo, 151.3 );
    $builder->uc_col( $penna_san_giovanni, 170.9 );
    $builder->summit_finish( $sarnano_sassotetto, 'UC', 219 );

    # Stage 5
    $builder->mountain_stage( castelraimondo );

    my $montelupone = $builder->_make_col( name => "Montelupone", height => 251 );
    my $osimo       = $builder->_make_col( name => "Osimo",       height => 265 );
    my $filottrano  = $builder->_make_col( name => "Filottrano",  height => 245 );

    $builder->uc_col( $montelupone, 49.9 );
    $builder->uc_col( $osimo, 117.8 );
    $builder->uc_col( $filottrano, 142.7 );
    $builder->uc_col( $filottrano, 158.8 );
    $builder->summit_finish( $filottrano, 'UC', 178 );

    # Stage 6
    $builder->mountain_stage( numana );

    my $offagna = $builder->_make_col( name => "Offagna", height => 291 );
    my $ostra   = $builder->_make_col( name => "Ostra", height => 188 );

    $builder->uc_col( $offagna, 36.2 );
    $builder->uc_col( $ostra, 75.8 );

    $builder->road_stage( numana, fano, 153 );

    # Stage 7
    $builder->out_and_back_individual_time_trial( san_benedetto_del_tronto, 10.1 );

    return $builder->build;
}

no Moose;
1;
