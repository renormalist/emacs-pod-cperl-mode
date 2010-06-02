use strict;
use warnings;

use CPAN::Meta;

my $VERSION = `egrep '^;+ Version:' pod-cperl-mode.el | cut -d: -f2 | sed 's/ //g'`;
chomp $VERSION;

my $distmeta = {
                abstract       => "Emacs multimode for cperl in pod verbatim blocks",
                description    => "Emacs multimode for cperl in pod verbatim blocks",
                dynamic_config => "0",
                generated_by   => "An inappropriate amount of Emacs and Perl",
                name           => "emacs-pod-cperl-mode",
                release_status => "unstable",
                version        => "$VERSION",
                author         => [
                                   'Steffen Schwigon <ss5@renormalist.net>',
                                  ],
                keywords       => [ "emacs", "multimode", "perl", "cperl", "pod" ],
                license        => [ "gpl_3" ],
                resources      => {
                                   bugtracker => {
                                                  mailto => 'bug-emacs-pod-cperl-mode@rt.cpan.org',
                                                  web    => "http://rt.cpan.org/Public/Dist/Display.html?Name=emacs-pod-cperl-mode"
                                                 },
                                   homepage => "http://search.cpan.org/dist/emacs-pod-cperl-mode",
                                   repository => {
                                                  type => "git",
                                                  url  => "git://github.com/renormalist/emacs-pod-cperl-mode.git",
                                                  web  => "http://github.com/renormalist/emacs-pod-cperl-mode",
                                                 },
                                  },
               };

my $cpanmeta = CPAN::Meta->create($distmeta)->save("META.json");
