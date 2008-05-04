use inc::Module::Install;

name 'MooseX-MakeImmutable';
all_from 'lib/MooseX/MakeImmutable.pm';

build_requires 'Test::More';
build_requires 'Test::Deep';

for (split m/\n/, <<_END_) {
Carp::Clan
Class::Inspector
Module::Pluggable 3.8
Devel::InnerPackage
List::MoreUtils
Moose
Scalar::Util
_END_
    my ($module, $version) = split m/\s+/, $_;
    requires $module, $version;
}

auto_install;

WriteAll;

