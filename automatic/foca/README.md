# [<img src="https://cdn.jsdelivr.net/gh/dgalbraith/chocolatey-packages@a5529e7b188f10bb91d6dafe44560118ade9030a/icons/foca.png" width="48" height="48" />FOCA - Fingerprinting Organizations with Collected Archives](https://chocolatey.org/packages/foca)

[![GitHub license](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://github.com/ElevenPaths/FOCA/blob/master/LICENSE.txt)
[![Maintenance status](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://gitHub.com/dgalbraith/chocolatey-packages/graphs/commit-activity)
[![AppVeyor build](https://img.shields.io/appveyor/ci/dgalbraith/chocolatey-packages)](https://ci.appveyor.com/project/dgalbraith/chocolatey-packages)
[![Software version](https://img.shields.io/badge/Source-v3.4.7.0-blue.svg)](https://github.com/ElevenPaths/FOCA/releases/tag/v3.4.7.0)
[![Chocolatey package version](https://img.shields.io/chocolatey/v/foca?label=Chocolatey)](https://chocolatey.org/packages/foca)

FOCA is a tool used mainly to find metadata and hidden information in the documents it scans. These documents may be on
web pages, and can be downloaded and analysed with FOCA.

It is capable of analysing a wide variety of documents, with the most common being Microsoft Office, Open Office, or
PDF files, although it also analyses Adobe InDesign or SVG files, for instance.

These documents are searched for using three possible search engines: Google, Bing, and DuckDuckGo. The sum of the
results from the three engines amounts to a lot of documents. It is also possible to add local files to extract the
EXIF information from graphic files, and a complete analysis of the information discovered through the URL is conducted
even before downloading the file.

With all data extracted from all files, FOCA matches information in an attempt to identify which documents have been
created by the same team and what servers and clients may be infered from them.

![screenshot](https://cdn.jsdelivr.net/gh/dgalbraith/chocolatey-packages@a5529e7b188f10bb91d6dafe44560118ade9030a/automatic/foca/screenshot.png)

## Features

FOCA includes a server discovery module, whose purpose is to automate the servers search process using recursively
interconnected routines. The techniques used to this end are:

* **Web Search:** searches for hosts and domain names through URLs associated to the main domain. Each link is analyzed
to extract from it new host and domain names.
* **DNS Search:** each domain is checked to ascertain which are the host names configured in NS, MX, and SPF servers to
discover new host and domain names.
* **IP resolution:** each host name is resolved by comparison to the DNS to obtain the IP address associated to this
server name.
* **PTR Scanning:** to find more servers in the same segment of a determined address, IP FOCA executes a PTR logs scan.
* **Bing IP:** for each IP address discovered, a search process is launched for new domain names associated to that IP
address.
* **Common names:** this module is designed to carry out dictionary attacks against the DNS.
* **DNS Prediction:** used for those environments where a machine name has been discovered that is reason to suspect
that a pattern is used in the naming system.
* **Robtex:** the Robtex service is one of many services available on the Internet to analyze IP addresses and domain
names. FOCA uses it in its attempt to discover new domains by searching the information available in Robtext on the
latter.

## Package Parameters

The following package parameter can be set:

* `/AddToDesktop`   - add a desktop shortcut for FOCA. By default the shortcut will be added for all users
* `/AddToStartMenu` - add a start menue entry for FOCA. By default the shortcut will be added for all users
* `/User`           - where the user parameter is specified any shortcuts created (`/AddToDesktop`, `/AddToStartMenu`)
will only be added for the current user

eg. `choco install -y foca --package-parameters="/AddToDesktop /AddToStartMenu /User"`

To have Chocolatey remember parameters on upgrade, be sure to set `choco feature enable -n=useRememberedArgumentsForUpgrades`.

## Notes

* A SQL Server 2014 or greater database is required.
* When starting the FOCA will check if there is a SQL Server instance available. If none is found, FOCA will prompt a
window for introducing a connection string.
* This package is automatically updated using the [Chocolatey Automatic Package Update Model (AU)](https://github.com/majkinetor/au/blob/master/README.md).
If you find it is out of date by more than a day or two, please contact the maintainer(s) and let them know the package is no longer updating correctly.
