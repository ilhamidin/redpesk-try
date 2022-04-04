###########################################################################
# Copyright 2015 - 2020 IoT.bzh
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
###########################################################################

# Temporary redefinition of afm_files_redtest
# To delete when afm-rpm-macros will be updated in all stacks
%define afm_files_redtest \
%defattr(770,root,users) \
%dir %{_libexecdir}/redtest/ \
%dir %{_libexecdir}/redtest/%{name}/ \
%dir %{afm_extra_files_test} \
%{_libexecdir}/redtest/%{name}/* \
%{afm_extra_files_test} \
%{nil}

Name:    modem-binding
Version: 1.0
Release: 0%{?dist}
License: APL2.0
Summary: Modem service set to be used in redpesk
URL:     https://github.com/ilhamidin/redpesk-try
Source0: %{name}-%{version}.tar.gz

Requires: afb-binder

BuildRequires: mock
BuildRequires: afm-rpm-macros
BuildRequires: cmake
BuildRequires: gcc gcc-c++
BuildRequires: afb-cmake-modules
BuildRequires: pkgconfig(json-c)
BuildRequires: pkgconfig(libsystemd) >= 222
BuildRequires: pkgconfig(afb-binding)
BuildRequires: pkgconfig(afb-libhelpers)

%description
Provide API to communicate with Sierra Modem HL7692 through serial interface

# main package: default install in /var/local/lib/afm/applications/%%{name}
%afm_package
# test package: default install in /var/local/lib/afm/applications/%%{name}-test
%afm_package_test
%afm_package_redtest

%prep
%autosetup -p 1

%build
%afm_configure_cmake
%afm_build_cmake

%install

mkdir -p %{buildroot}%{_libexecdir}/redtest/%{name}/
cp -a redtest/. %{buildroot}%{_libexecdir}/redtest/%{name}/

%afm_makeinstall

%files
/var/local/lib/afm/applications/%{name}/*
/var/local/lib/afm/applications/libexec/redtest/%{name}/*

%check

%clean

%changelog

* Fri Dec 11 2020 IoT.bzh <armand.beneteau.iot.bzh> 8.99.7
- Adaptation for RedPesk 33

* Wed Jun 24 2020 IoT.bzh <armand.beneteau.iot.bzh> 8.99.6
- Add the use of cmake template for run-redtest

* Mon May 18 2020 IoT.bzh(iotpkg) <redpesk.list@iot.bzh> gcde438ae
- Upgrade version from source commit sha: cde438aed1e990b69d4ed2fb3aa3b4ba22e78a6a
- Commit message:
- 	Correction inside the run-redtest script (#3)
-

* Mon May 18 2020 IoT.bzh <clement.benier@iot.bzh> 8.99.6
- bump version of afm-rpm-macros

* Wed Apr 29 2020 IoT.bzh <redpesk.list.iot.bzh> 8.99.6
- Modifications in order to add a redtest subpackage

* Wed Feb 19 2020 IoT.bzh <redpesk.list.iot.bzh> 8.99.5
- Modifications in order to add a test subpackage

* Fri Feb 14 2020 IoT.bzh <redpesk.list.iot.bzh> 8.99.5
- Creation of the spec file from RedPesk generator
