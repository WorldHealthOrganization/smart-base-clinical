<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://smart.who.int/base-clinical/1.0.0/StructureDefinition-sg-location.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://smart.who.int/base-clinical/1.0.0/StructureDefinition-sg-location.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://smart.who.int/base-clinical/1.0.0/StructureDefinition-sg-location.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://smart.who.int/base-clinical/1.0.0/StructureDefinition-sg-location.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://smart.who.int/base-clinical/1.0.0/StructureDefinition-sg-location.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://smart.who.int/base-clinical/1.0.0/StructureDefinition-sg-location.html');
else 
  Redirect('https://smart.who.int/base-clinical/1.0.0/StructureDefinition-sg-location.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
