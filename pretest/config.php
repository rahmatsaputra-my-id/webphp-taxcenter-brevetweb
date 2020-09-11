<?php  // Moodle configuration file

unset($CFG);
global $CFG;
$CFG = new stdClass();

$CFG->dbtype    = 'mysqli';
$CFG->dblibrary = 'native';
$CFG->dbhost    = 'localhost';
$CFG->dbname    = 'taxcente_seleksionline';
$CFG->dbuser    = 'taxcente_seleksi';
$CFG->dbpass    = '!!!K3r3nCoi';
$CFG->prefix    = 'pretest_';
$CFG->dboptions = array (
  'dbpersist' => 0,
  'dbport' => 21,
  'dbsocket' => '',
);

$CFG->wwwroot   = 'http://taxcenter.gunadarma.ac.id/kursus/pretest';
$CFG->dataroot  = '/home/taxcenter/moodledata/pretest';
$CFG->admin     = 'admin';

$CFG->directorypermissions = 0777;

require_once(dirname(__FILE__) . '/lib/setup.php');

// There is no php closing tag in this file,
// it is intentional because it prevents trailing whitespace problems!
