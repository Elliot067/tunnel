<?php

require 'Database.php';
require 'panier.class.php';
require 'aproduit.class.php';
require 'idclient.class.php';
$DB = new DB();
$panier = new panier($DB);
$aproduit = new aproduit($DB);
$idclient = new idclient($DB);
