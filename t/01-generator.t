# $Id: 01-generator.t 1 2007-12-19 22:39:22Z miyagawa $

use strict;
use Data::YUID::Generator;
use Test::More tests => 3;

my $gen = Data::YUID::Generator->new;
isa_ok($gen, 'Data::YUID::Generator');
my $id1 = $gen->get_id;
ok($id1);
my $id2 = $gen->get_id;
isnt($id1, $id2);
