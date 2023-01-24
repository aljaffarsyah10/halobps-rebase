<?php
class DB extends DBmysql {
   // public $dbhost = '10.0.26.6';
   // public $dbuser = 'halodev';
   // public $dbpassword = 'bh!nneKa1';
   // public $dbdefault = 'glpi_dev';
   public $dbhost = 'localhost';
   public $dbuser = 'root';
   public $dbpassword = '';
   public $dbdefault = 'glpi_dev';
   public $use_timezones = true;
   public $use_utf8mb4 = true;
   public $allow_myisam = false;
   public $allow_datetime = false;
   public $allow_signed_keys = false;
}
