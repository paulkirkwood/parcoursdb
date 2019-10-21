package ParcoursDB::StageRace::TirrenoAdriatico::Builder;

use Moose;
extends 'ParcoursDB::StageRace::Builder';

use ParcoursDB::Col;
use ParcoursDB::StageRace::TirrenoAdriatico;

has '+edition' => ( default => sub { ParcoursDB::StageRace::TirrenoAdriatico->new; } );

sub uc_col {
    my ( $self, $col, $km ) = @_;
    $self->_add_col( $col, 'UC', $km );
}

1;
