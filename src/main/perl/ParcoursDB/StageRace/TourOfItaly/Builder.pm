package ParcoursDB::StageRace::TourOfItaly::Builder;

use Moose;
extends 'ParcoursDB::StageRace::Builder';

use ParcoursDB::Col;
use ParcoursDB::StageRace::TourOfItaly;

has '+edition' => ( default => sub { ParcoursDB::StageRace::TourOfItaly->new; } );

sub c1_col {
    my ( $self, $col, $km ) = @_;
    $self->_add_col( $col, 'C1', $km );
}

sub c2_col {
    my ( $self, $col, $km ) = @_;
    $self->_add_col( $col, 'C2', $km );
}

sub c3_col {
    my ( $self, $col, $km ) = @_;
    $self->_add_col( $col, 'C3', $km );
}

sub c4_col {
    my ( $self, $col, $km ) = @_;
    $self->_add_col( $col, 'C3', $km );
}

1;
