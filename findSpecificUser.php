<?php
$mongo = new MongoClient("");
$db = $mongo->assignment;
$collection = $db->Members;

$cursor = $collection->find(array('members_username' => 'steve'));
foreach ($cursor as $doc) {
    print_r($doc);
}


?>