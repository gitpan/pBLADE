use ExtUtils::MakeMaker;
use strict;

# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.

my $name = 'BLADE';
my $distname = 'pBLADE';

my $cflags = `libblade-config --cflags`;
chomp $cflags;

my $libs = `libblade-config --libs`;
chomp $libs;

my $blade_prefix = `blade-config --prefix`;
chomp $blade_prefix;

my $pmfile = $name.'.pm';
my $specfile = $distname.'.spec';
my $version = get_version($pmfile);

# create spec file before WriteMakefile(), since it is listed in MANIFEST
write_spec_file($distname, $version, $blade_prefix, $specfile);

WriteMakefile(
    'NAME'	=> $name,
    'DISTNAME' => $distname,
    'VERSION_FROM' => $pmfile, # finds $VERSION
    'LIBS'	=> [$libs],
    'DEFINE'	=> '',
    'INC'	=> $cflags,
    'OBJECT' => 'BLADE.o blade_obj_simple_init.o blade_run.o blade_theme_simple_init.o util.o',
    'dist' => { 'COMPRESS' => 'gzip -f --best' },
);

exit 0;

# create the rpm, special document targets
sub MY::postamble {

    my $doc_dir = "$blade_prefix/doc/blade/pBLADE";
    my @doc_files = ('README', 'ChangeLog', 'LICENSE', $specfile);

    my $postamble = <<EOP;
rpm: dist
	rpm -ta $distname-$version.tar.gz

install :: mydocs

mydocs:
	\$(MKPATH) $doc_dir
EOP
    foreach my $file (@doc_files) {
	$postamble .= "\t\$(CP) $file $doc_dir\n";
    }

    return $postamble;
}


# function for writing an rpm spec file
sub write_spec_file {
    my ($distname, $version, $prefix, $outfile) = @_;

    open(SPEC,">$outfile") or die "Could not open output spec file '$outfile': $!";
    print SPEC <<EOP;
# Note that this is NOT a relocatable package
\%define ver      $version
\%define rel      1
\%define prefix   $prefix

Summary:   $distname
Name:      $distname
Version:   \%ver
Release:   \%rel
License:   GPL or Artistic License
Group:     Development/Libraries
Source:    $distname-\%{ver}.tar.gz
URL:       http://www.thestuff.net/bob/projects/blade
BuildRoot: /tmp/$distname-\%{PACKAGE_VERSION}-root
Packager:  Pete Ratzlaff <pratzlaff\@cfa.harvard.edu>

\%description
$distname is a Perl interface to the BLADE web development environment.

\%changelog

\%prep

\%setup
perl Makefile.PL PREFIX=\$RPM_BUILD_ROOT\%{prefix}

\%build
make

\%install
rm -rf \$RPM_BUILD_ROOT
make install

\%clean
rm -rf \$RPM_BUILD_ROOT

\%files
\%defattr(-, root, root)

/*
EOP
}

# not pretty, but gets the job done
sub get_version {
    my $pmfile = shift;

    open(PMFILE,$pmfile) or die "Could not open file '$pmfile': $!";
    my @lines = grep /^\$VERSION\s*=\s*\'.*\'/, <PMFILE> or
	die "No version found in file '$pmfile'";

    my $version;
    ($version) = ($lines[0] =~ /^\$VERSION\s*=\s*\'(.*)\'/);

    return $version;
}
