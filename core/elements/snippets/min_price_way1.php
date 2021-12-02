<?php
$params = array(
  'parents' => $id,
  'includeTVs' => 'price',
  'tpl' => '@INLINE{$_pls["tv.price"]}',
  'outputSeparator' => ';'
);
return min(explode(";",$modx->runSnippet('pdoResources', $params)));