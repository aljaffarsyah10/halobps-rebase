![HALO BPS](https://upload.wikimedia.org/wikipedia/commons/thumb/2/28/Lambang_Badan_Pusat_Statistik_%28BPS%29_Indonesia.svg/1280px-Lambang_Badan_Pusat_Statistik_%28BPS%29_Indonesia.svg.png)

## Proyek Pengembangan HALOBPS Berbasis Open Source Software GLPI (PHP)
* Pengembangan ulang HALOSIS dan modul lainnya yang diperlukan (mapping aset, roadmap pengadaan TI, ticketing, report, dll.)
* Dimodifikasi untuk keperluan BPS (halo.bps.go.id) sebagai pengganti web apps ESTIM BPS
* Dikelola dan dikembangkan bersama mahasiswa Polstat STIS
* Inisiasi pertama (23 Oktober 2022) private [gitlab.com]

## Persyaratan Instalasi

* A web server (Apache, Nginx, IIS, etc.)
* MariaDB >= 10.2 or MySQL >= 5.7
* PHP (See compatibility matrix below)

    | GLPI Version | Minimum PHP | Maximum PHP |
    | ------------ | ----------- | ----------- |
    | 9.4.X        | 5.6         | 7.4         |
    | 9.5.X        | 7.2         | 8.0         |
    | 10.0.X       | 7.4         | 8.2         |
* Mandatory PHP extensions:
    - dom, fileinfo, json, session, simplexml (these are enabled in PHP by default)
    - curl (access to remote resources, like inventory agents, marketplace API, RSS feeds, ...)
    - gd (pictures handling)
    - intl (internationalization)
    - libxml (XML handling)
    - mysqli (communication with database server)
    - zlib (handling of compressed communication with inventory agents, installation of gzip packages from marketplace, PDF generation)

* Suggested PHP extensions
    - exif (security enhancement on images validation)
    - ldap (usage of authentication through remote LDAP server)
    - openssl (email sending using SSL/TLS)
    - zip and bz2 (installation of zip and bz2 packages from marketplace)

 * Supported browsers:
    - Edge
    - Firefox (including 2 latest ESR versions)
    - Chrome

## Khusus Tools Pengembangan
* Pertama, [download and install composer](https://getcomposer.org/), tool manajemen dependensi PHP.
* Kedua, [download and install npm](https://www.npmjs.com/), tool manajemen dependensi JS.
Setelah selesai, masuk ke direktori ```glpi``` lalu run:

```bash
$ php bin/console dependencies install
```

## Dokumentasi GLPI

<<<<<<< HEAD
See :
* [releases](https://github.com/glpi-project/glpi/releases) for tarball packages.


## Documentation

* [GLPI Administrator](https://glpi-install.readthedocs.io)
    * Install & Update
    * Command line tools
    * Timezones
    * Advanced configuration
    * [Contribute to this documentation!](https://github.com/glpi-project/doc-install)
=======
[pdf version](https://forge.glpi-project.org/attachments/download/1901/glpidoc-0.85-en-partial.pdf).
[markdown version](https://github.com/glpi-project/doc)
>>>>>>> 6041cd22 (rm unused files; change markdowns)

* [GLPI User](https://glpi-user-documentation.readthedocs.io)
    * First Steps with GLPI
    * Overview of all modules
    * Configuration & Administration
    * Plugins & Marketplace
    * GLPI command-line interface
    * [Contribute to this documentation!](https://github.com/glpi-project/doc)

* [GLPI Developer](https://glpi-developer-documentation.readthedocs.io)
    * Source Code management
    * Coding standards
    * Developer API
    * Plugins Guidelines
    * Packaging
    * [Contribute to this documentation!](https://github.com/glpi-project/docdev)

* [GLPI Agent](https://glpi-agent.readthedocs.io)
    * Installation (Windows / Linux / Mac OS / Source)
    * Configuration / Settings
    * Usage / Execution mode
    * Tasks / HTTP Interface / Plugins
    * Bug reporting / Man pages
    * [Contribute to this documentation!](https://github.com/glpi-project/doc-agent)

* [GLPI Plugins](https://glpi-plugins.readthedocs.io)
    * Usage and features for some GLPI plugins
    * [Contribute to this documentation!](https://github.com/pluginsglpi/doc)

## Sumber Tambahan

* [Official website](http://glpi-project.org)
* [Demo](https://www.glpi-network.cloud)
* [Terjemahan](https://www.transifex.com/glpi/public/)
* [Issues](https://github.com/glpi-project/glpi/issues)
* [Suggestions](http://suggest.glpi-project.org)
* [Forum](http://forum.glpi-project.org)
* [Development documentation](http://glpi-developer-documentation.readthedocs.io/en/master/)
* [Plugin directory](http://plugins.glpi-project.org)
* [Plugin development documentation](http://glpi-developer-documentation.readthedocs.io/en/master/plugins/index.html)