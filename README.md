Description
===========

Installs and configures zenphoto 1.3. from a public repository on github
including a proper vhost for your Apache webserver.

Please note that you still need to run setup.php within your Browser to
finish the installation process of Zenphoto.

Requirements
============

Platform:

* Debian
* Ubuntu
* CentOS
* RedHat
* Fedora

This cookbook relies on the application and database cookbook to work.

Attributes
==========

No attributes so far.

Usage
=====

    {
      "id": "zenphoto",
      "server_roles": [
        "zenphoto"
      ],
      "type": {
        "zenphoto": [
          "php",
          "mod_php_apache2"
        ]
      },
      "name": "img",
      "database_master_role": [
        "zenphoto_database_master"
      ],
      "repository": "git://github.com/fooforge/zenphoto-mirror.git",
      "revision": {
        "_default": "master"
      },
      "force": {
        "_default": false
      },
      "databases": {
        "_default": {
          "reconnect": "true",
          "encoding": "utf8",
          "username": "db_user",
          "adapter": "mysql",
          "password": "awesome_password",
          "database": "zenphoto_production"
        }
      },
      "mysql_root_password": {
        "_default": "mysql_root"
      },
      "mysql_debian_password": {
        "_default": "mysql_debian"
      },
      "mysql_repl_password": {
        "_default": "mysql_repl"
      },
      "deploy_to": "/srv/zenphoto",
      "owner": "nobody",
      "group": "nogroup",
      "packages": {
        "php5-mysql": "",
        "php5-intl": "",
        "php5-gd": "",
        "php5-imagick": "",
        "php5-sqlite": ""
      },
      "pears": {
      },
      "local_settings_file": "zp-core/zp-config.php"
    }
