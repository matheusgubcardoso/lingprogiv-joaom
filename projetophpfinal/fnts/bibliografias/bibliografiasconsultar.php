<?php

require_once("../../fncs/toolskit.php");

require_once("./bibliografiasfuncoes.php");
iniciapagina(TRUE,"Bibliografias","Consultar");
$_REQUEST['salto']=$_REQUEST['salto']+1;
montamenu("Bibliografias","Consultar","$_REQUEST[salto]");

$bloco=( ISSET($_REQUEST['bloco']) ) ? $_REQUEST['bloco'] : 1 ;
switch (TRUE)
{
  case ($bloco==1):
  { 
    picklist("C");
    break;
  }
  case ( $bloco==2 ):
  { 
    mostraregistro("$_REQUEST[cpbibliografia]",'',FALSE,$_REQUEST['salto']-2,$_REQUEST['salto']-1,"$_REQUEST[salto]");
    break;
  }
}
terminapagina("bibliografias","Consultar","bibliografiasconsultar.php");
 ?>
