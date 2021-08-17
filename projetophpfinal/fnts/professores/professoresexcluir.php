<?php

require_once("../../fncs/toolskit.php");

require_once("./professoresfuncoes.php");

$bloco=( ISSET($_REQUEST['bloco']) ) ? $_REQUEST['bloco'] : 1;

iniciapagina(TRUE,"Professores","Excluir");
$_REQUEST['salto']=$_REQUEST['salto']+1;
montamenu("Professores","Excluir","$_REQUEST[salto]");

switch (TRUE)
{
  case ($bloco==1):
  { 
    picklist("E");
    break;
  }
  case ($bloco==2):
  { 
    printf("<form action='professoresexcluir.php' method='POST'>\n");
    printf(" <input type='hidden' name='bloco' value='3'>\n");
    printf(" <input type='hidden' name='salto' value='$_REQUEST[salto]'>\n");
    printf(" <input type='hidden' name='cpprofessor' value='$_REQUEST[cpprofessor]'>\n");
    mostraregistro("$_REQUEST[cpprofessor]",'Confirmar Excluir',FALSE,$_REQUEST['salto']-2,$_REQUEST['salto']-1,"$_REQUEST[salto]");
    printf("</form>");
    break;
  }
  case ($bloco==3):
  { 
    $cmdsql="DELETE FROM professores WHERE professores.cpprofessor='$_REQUEST[cpprofessor]'";
    
    $mostrar=FALSE;
    $tenta=TRUE;
    while ( $tenta )
    { 
      mysqli_query($link,"START TRANSACTION");
  
      mysqli_query($link,$cmdsql);
   
      if ( mysqli_errno($link)==0 )
      { 
        mysqli_query($link,"COMMIT");
        $tenta=FALSE;
        $mostrar=TRUE;
        $mens="Registro com código $_REQUEST[cpprofessor] excluído!";
      }
      else
      {
        if ( mysqli_errno($link)==1213 )
        { 
          $tenta=TRUE;
        }
        else
        { 
          $tenta=FALSE;
          $mens=mysqli_errno($linkmy)."-".mysqli_error($linkmy);
        }
        mysqli_query($link,"ROLLBACK");
        $mostrar=FALSE;
      }
    }
    printf("$mens<br>\n");
    
    botoes('',FALSE,0,$_REQUEST['salto']-1,"$_REQUEST[salto]");
    break;
  }
}
terminapagina("professores","Excluir","professoresexcluir.php");
?>
