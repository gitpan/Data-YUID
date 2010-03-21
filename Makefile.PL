# $Id$

use Config;
BEGIN {
    warn "A 64-bit Perl is required" && exit
        unless $Config{use64bitint};
}

use inc::Module::Install;

name('Data-YUID');
all_from('lib/Data/YUID.pm');

requires('Danga::Socket');
requires('URI::Escape');

install_script('bin/yuidd');

&WriteAll;
