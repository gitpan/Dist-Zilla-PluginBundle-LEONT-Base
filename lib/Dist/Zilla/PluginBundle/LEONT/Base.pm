package Dist::Zilla::PluginBundle::LEONT::Base;
{
  $Dist::Zilla::PluginBundle::LEONT::Base::VERSION = '0.002';
}
use strict;
use warnings;

use Moose;
use Dist::Zilla;
with 'Dist::Zilla::Role::PluginBundle::Easy';

my @plugins = qw/
AutoPrereqs
MetaJSON
MetaResources
Repository
Bugtracker
MinimumPerl
Git::NextVersion

PodWeaver
PkgVersion
InstallGuide

PodSyntaxTests
PodCoverageTests
Test::Kwalitee
Test::Compile

NextRelease
Signature
CheckChangesHasContent
/;

my @bundles = qw/Git/;

sub configure {
	my $self = shift;

	$self->add_plugins(@plugins);
	$self->add_bundle("\@$_") for @bundles;
	return;
}

1;



=pod

=head1 NAME

Dist::Zilla::PluginBundle::LEONT::Base - Plugins LeonT uses regardless of build system

=head1 VERSION

version 0.002

=head1 DESCRIPTION

Some plugins LEONT uses. It is equivalent to:

    [AutoPrereqs]
    [MetaJSON]
    [MetaResources]
    [Repository]
    [Bugtracker]
    [MinimumPerl]
    [Git::NextVersion]
    
    [PodWeaver]
    [PkgVersion]
    
    [PodSyntaxTests]
    [PodCoverageTests]
    [Test::Kwalitee]
    [Test::Compile]
    
    [NextRelease]
    [Signature]
    [CheckChangesHasContent]
    [@Git]

Note the absense of any module builder. It is intended to be used in combination with a bundle such as @Basic.

=for Pod::Coverage configure

=head1 AUTHOR

Leon Timmermans <leont@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Leon Timmermans.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


__END__

#ABSTRACT: Plugins LeonT uses regardless of build system

