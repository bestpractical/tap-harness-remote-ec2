use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'TAP::Harness::Remote::EC2',
    license             => 'perl',
    dist_author         => 'Alex Vandiver <alexmv@bestpractical.com>',
    dist_version_from   => 'lib/TAP/Harness/Remote/EC2.pm',
    requires => {
        'TAP::Harness' => 3.04,
        'TAP::Harness::Remote' => 0,
        'Net::Amazon::EC2' => 0,
    },
    add_to_cleanup      => [ 'TAP-Harness-Remote-EC2-*' ],
);

$builder->create_build_script();
