package ParcoursDB::Stage::Racing;

use Moose;
extends 'ParcoursDB::Stage';

use ParcoursDB::Col::Collection;

has 'id' => (
    is       => 'ro',
    isa      => 'Str',
    required => 1,
);

has 'start' => (
    is       => 'ro',
    required => 1,
);

has 'finish' => (
    is       => 'ro',
    required => 1,
);

has 'distance' => (
    is       => 'ro',
    isa      => 'Num',
    required => 1,
);

has 'cols' => (
    is      => 'ro',
    isa     => 'ParcoursDB::Col::Collection',
    default => sub { ParcoursDB::Col::Collection->new },
);

sub is_summit_finish {
    my ( $self ) = @_;
    return if $self->cols->has_no_cols;
    my @sorted = sort { $a <=> $b } $self->cols->summits;
    return $sorted[-1] == $self->distance;
}

1;
