<?php

header("Content-Type: text/plain");

function getGetParameter(string $name): ?string
{
	return isset($_GET[$name]) ? (string)$_GET[$name] : null;
}

$text = trim(getGetParameter('text'));
$text = preg_replace('/\s+/', ' ', $text);

echo $text;


