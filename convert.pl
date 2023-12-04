#!/usr/bin/env perl
use 5.020;
use utf8;
use warnings;
use autodie;
use feature qw/signatures postderef/;
no warnings qw/experimental::postderef/;
use open qw(:std :utf8);

while (<>) {
    if (/\{$/ .. /^\}$/ and not /\{$/) {
        print;
        next;
    }
    s/#write[+]?//g;
    s/[.]md-p/p/g;
    s/h2[.]md-heading a/h2 a/g;
    s/[.]md-heading\s+(\S+)/$1:parent.h1.h2.h3.h4.h5.h6/g;
    s/[.]md-toc-content/#TOC/g;
    s/li[.]md-list-item/li/g;
    print;
}
