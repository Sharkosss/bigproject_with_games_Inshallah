<?php 
session_start();

// Connexion à la base de données contact
$pdo_contact = new PDO(
    'mysql:host=localhost;dbname=contact;',
    'root',
    'root',
    array(PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8')
);
$pdo_contact->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_WARNING);

// Connexion à la base de données projects
$pdo_projects = new PDO(
    'mysql:host=localhost;dbname=projects;',
    'root',
    'root',
    array(PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8')
);
$pdo_projects->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_WARNING);
?>