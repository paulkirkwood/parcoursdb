package TourOfItaly;

use Moose;

use DateTime;
use ParcoursDB::Country::Italy::Locations qw(
    barletta
    campotenese
    campi_salentina
    castiglione_della_pescaia
    cles
    fiuggi
    foggia
    gatteo_a_mare
    genoa
    giulianova
    imperia
    longarone
    marina_di_pisa
    milan
    orvieto
    palinuro
    parma
    pisa
    pontedera
    portoferraio
    roccaraso
    rio_marina
    saronno
    sirmione
    sondrio
    sorrento
    termamo
    turbigo
    turin
    villapiana_lido
    zoldo_alto
);

use ParcoursDB::StageRace::TourOfItaly::Builder;

sub build {
    my ( $self, $year ) = @_;
    my $method = "_" . $year;
    return $self->$method;
}

sub _1980 {
    my ( $self ) = @_;

    my $builder = ParcoursDB::StageRace::TourOfItaly::Builder->new(
        date    => DateTime->new( year => 1980, month => 5, day => 15 ),
    );

    # Prologue
    $builder->out_and_back_prologue( genoa(), 7 );

    # Stage 1
    $builder->road_stage( genoa(), imperia(),  123);

    # Stage 2
    $builder->road_stage( imperia(), turin(), 179);

    # Stage 3
    $builder->road_stage( turin(), parma(), 243);

    # Stage 4
    $builder->road_stage( parma(), marina_di_pisa(), 193);

    # Stage 5
    $builder->individual_time_trial( pontedera(), pisa(), 36);

    # Transfer day
    $builder->transfer_day;

    # Stage 6
    $builder->road_stage( rio_marina(), portoferraio(), 126);

    # Stage 7
    $builder->road_stage( castiglione_della_pescaia(), orvieto(), 200);

    # Stage 8
    $builder->road_stage( orvieto(), fiuggi(), 216);

    # Stage 9
    $builder->road_stage( fiuggi(), sorrento(), 247);

    # Stage 10
    $builder->road_stage( sorrento(), palinuro(), 177);

    # Stage 11
    $builder->road_stage( palinuro(), campotenese(), 145);

    # Stage 12
    $builder->road_stage( villapiana_lido(), campi_salentina(), 203);

    # Stage 13
    $builder->road_stage( campi_salentina(), barletta(), 220);

    # Stage 14
    $builder->road_stage( foggia(), roccaraso(), 186);

    # Stage 15
    $builder->road_stage( roccaraso(), termamo(), 194);

    # Stage 16
    $builder->road_stage( giulianova(), gatteo_a_mare(), 229);

    # Stage 17
    $builder->road_stage( gatteo_a_mare(), sirmione(), 237);

    # Stage 18
    $builder->road_stage( sirmione(), zoldo_alto(), 239);

    # Stage 19
    $builder->road_stage( longarone(), cles(), 241);

    # Stage 20
    $builder->road_stage( cles(), sondrio(), 221);

    # Stage 21
    $builder->individual_time_trial( saronno(), turbigo(), 50);

    # Stage 22
    $builder->criterium( milan(), 114.0);

    return $builder->build;
}

no Moose;
1;
