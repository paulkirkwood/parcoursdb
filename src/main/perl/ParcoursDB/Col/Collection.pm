package ParcoursDB::Col::Collection;

use Moose;

has '_cols' => (
    traits => ['Hash'],
    is     => 'ro',
    isa    => 'HashRef',
    default => sub { {} },
    handles => {
        all_cols    => 'values',
        get_col     => 'get',
        set_col     => 'set',
        has_col     => 'exists',
        has_no_cols => 'is_empty',
        empty_cols  => 'clear',
        summits     => 'keys',
    },
);

1;
