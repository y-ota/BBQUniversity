<?php

  if(isset($_GET['university'])) {
      $university = $_GET['university'];
  }


$conn = pg_connect("host=webdb dbname=yota user=yota password=MJlIhErh");
pg_set_client_encoding($conn, "UTF-8");
if (!$conn) {
    die('接続失敗です。'.pg_last_error());
}


$result = pg_query("SELECT * FROM userinfo where university like '%$university%'");
if (!$result) {
    die('クエリーが失敗しました。'.pg_last_error());
}

$rootNode = new SimpleXMLElement( "<?xml version='1.0' encoding='SHIFT_JIS' standalone='yes'?><items></items>" );
 

for ($i = 0 ; $i < pg_num_rows($result) ; $i++){
    $rows = pg_fetch_array($result, NULL, PGSQL_ASSOC);
    $itemNode = $rootNode->addChild('item');
    $itemNode->addChild( 'name', $rows['name']);
    $itemNode->addChild( 'university', $rows['university']);
    $itemNode->addChild( 'location', $rows['location']);
    $itemNode->addChild( 'hobby', $rows['hobby']);
    $itemNode->addChild( 'image', $rows['image']);

}
 
// 作ったxmlツリーを出力する
$dom = new DOMDocument( '1.0' );
$dom->loadXML( $rootNode->asXML() );
$dom->formatOutput = true;
echo $dom->saveXML();

$close_flag = pg_close($conn);

if ($close_flag){
  //  print('切断に成功しました。<br>');
}

?>
