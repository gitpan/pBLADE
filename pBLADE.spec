# Note that this is NOT a relocatable package
%define ver      0.05
%define rel      1
%define prefix   /usr/local

Summary:   pBLADE
Name:      pBLADE
Version:   %ver
Release:   %rel
License:   GPL or Artistic License
Group:     Development/Libraries
Source:    pBLADE-%{ver}.tar.gz
URL:       http://www.thestuff.net/bob/projects/blade
BuildRoot: /tmp/pBLADE-%{PACKAGE_VERSION}-root
Packager:  Pete Ratzlaff <pratzlaff@cfa.harvard.edu>

%description
pBLADE is a Perl interface to the BLADE web development environment.

%changelog

%prep

%setup
perl Makefile.PL PREFIX=$RPM_BUILD_ROOT%{prefix}

%build
make

%install
rm -rf $RPM_BUILD_ROOT
make install

%clean
rm -rf $RPM_BUILD_ROOT

%files
%defattr(-, root, root)

/*
