<?php

require_once("../../fncs/toolskit.php");

require_once("./feitosporfuncoes.php");
iniciapagina(TRUE,"Feitos Por","Consultar");
$_REQUEST['salto']=$_REQUEST['salto']+1;
montamenu("Feitos Por","Consultar","$_REQUEST[salto]");

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
    mostraregistro("$_REQUEST[cpfeitospor]",'',FALSE,$_REQUEST['salto']-2,$_REQUEST['salto']-1,"$_REQUEST[salto]");
    break;
  }
}
terminapagina("Feitos Por","Consultar","feitosporconsultar.php");
 ?>
