package Giro;

use Moose;

use DateTime;
use ParcoursDB::Country;
use ParcoursDB::Location;
use ParcoursDB::StageRace::Builder;

my $name = "Giro d'Italia";
my $italy = ParcoursDB::Country->new( name => "Italy" );

sub build {
    my ( $self, $year ) = @_;
    my $method = "_" . $year;
    return $self->$method;
}

sub _1980 {
    my ( $self ) = @_;

    my $builder = ParcoursDB::StageRace::Builder->new(
        country => $italy,
        date    => DateTime->new( year => 1980, month => 5, day => 15 ),
        name    => $name,
    );

    $builder->prologue(start => "Genoa", distance => 7 );
    $builder->road_stage(start => "Genoa", finish => "Imperia", distance => 123);
    $builder->road_stage(start => "Imperia", finish => "Turin", distance => 179);
    $builder->road_stage(start => "Turin", finish => "Parma", distance => 243);
    $builder->road_stage(start => "Parma", finish => "Marina di Pisa", distance => 193);
    $builder->individual_time_trial(start => "Pontedera", finish => "Pisa", distance => 36);
    $builder->rest_day;
    $builder->road_stage(start => "Rio Marina", finish => "Portoferraio", distance => 126);
    $builder->road_stage(start => "Castiglione della Pescaia", finish => "Orvieto", distance => 200);
    $builder->road_stage(start => "Orvieto", finish => "Fiuggi", distance => 216);
    $builder->road_stage(start => "Fiuggi", finish => "Sorrento", distance => 247);
    $builder->road_stage(start => "Sorrento", finish => "Palinuro", distance => 177);
    $builder->road_stage(start => "Palinuro", finish => "Campotenese", distance => 145);
    $builder->road_stage(start => "Villapiana Lido", finish => "Campi Salentina", distance => 203);
    $builder->road_stage(start => "Campi Salentina", finish => "Barletta", distance => 220);
    $builder->road_stage(start => "Foggia", finish => "Roccaraso", distance => 186);
    $builder->road_stage(start => "Roccaraso", finish => "Termamo", distance => 194);
    $builder->road_stage(start => "Giulianova", finish => "Gatteo a Mare", distance => 229);
    $builder->road_stage(start => "Gatteo a Mare", finish => "Sirmione", distance => 237);
    $builder->road_stage(start => "Sirmione", finish => "Zoldo Alto", distance => 239);
    $builder->road_stage(start => "Longarone", finish => "Cles", distance => 241);
    $builder->road_stage(start => "Cles", finish => "Sondrio", distance => 221);
    $builder->individual_time_trial(start => "Saronno", finish => "Turbigo", distance => 50);
    $builder->road_stage( start => "Milan", distance => 114.0);

    return $builder->build;
}

no Moose;
1;
