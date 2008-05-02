use inc::Module::Install;

name 'MooseX-MakeImmutable';
all_from 'lib/MooseX/MakeImmutable.pm';

build_requires 'Test::More';

auto_install;

WriteAll;

