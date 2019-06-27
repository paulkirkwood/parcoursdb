package ParcoursDB::Stage::Collection;

use Moose;

has 'stages' => (
    traits => ['Array'],
    is     => 'ro',
    isa    => 'ArrayRef[ParcoursDB::Stage]',
    default => sub { [] },
    handles => {
        all_stages    => 'elements',
        add_stage     => 'push',
        filter_stages => 'grep',
        find_stage    => 'first',
        get_stage     => 'get',
        count_stages  => 'count',
        sorted_stages => 'sort',
    },
);

no Moose;
1;
