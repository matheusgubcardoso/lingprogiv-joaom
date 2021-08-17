<?php

require_once("../../fncs/toolskit.php");

require_once("./funcionariosplanosfuncoes.php");

$bloco=( ISSET($_REQUEST['bloco']) ) ? $_REQUEST['bloco'] : 1;

iniciapagina(TRUE,"Funcionários Planos","Excluir");
$_REQUEST['salto']=$_REQUEST['salto']+1;
montamenu("Funcionários Planos","Excluir","$_REQUEST[salto]");

switch (TRUE)
{
  case ($bloco==1):
  { 
    picklist("E");
    break;
  }
  case ($bloco==2):
  { 
    printf("<form action='funcionariosplanosexcluir.php' method='POST'>\n");
    printf(" <input type='hidden' name='bloco' value='3'>\n");
    printf(" <input type='hidden' name='salto' value='$_REQUEST[salto]'>\n");
    printf(" <input type='hidden' name='cpfuncionarioplano' value='$_REQUEST[cpfuncionarioplano]'>\n");
    mostraregistro("$_REQUEST[cpfuncionarioplano]",'Confirmar Excluir',FALSE,$_REQUEST['salto']-2,$_REQUEST['salto']-1,"$_REQUEST[salto]");
    printf("</form>");
    break;
  }
  case ($bloco==3):
  { 
    $cmdsql="DELETE FROM funcionariosplanos WHERE funcionariosplanos.cpfuncionarioplano='$_REQUEST[cpfuncionarioplano]'";
    
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
        $mens="Registro com código $_REQUEST[cpfuncionarioplano] excluído!";
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
terminapagina("funcionariosplanos","Excluir","funcionariosplanosexcluir.php");
?>
