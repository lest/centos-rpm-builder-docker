%define debug_package %{nil}

Name:		 test_rpm_build
Version: 0.1.0
Release: 0.0.1
Summary: Test RPM building.
License: MIT
Source0: test.file

%description

Provides a basic test spec file to ensure that we can build decent RPm building docker containers

%prep
/bin/true

%build
/bin/true

%install
mkdir -vp %{buildroot}/tmp
install -m 644 %{SOURCE0} %{buildroot}/tmp/test_file

%pre
/bin/true

%post
/bin/true

%files
/tmp/test_file