<?php

require_once("../../fncs/toolskit.php");

require_once("./feitosporfuncoes.php");

$bloco=( ISSET($_REQUEST['bloco']) ) ? $_REQUEST['bloco'] : 1;

iniciapagina(TRUE,"Feitos Por","Alterar");
$_REQUEST['salto']=$_REQUEST['salto']+1;
montamenu("Feitos Por","Alterar","$_REQUEST[salto]");

switch (TRUE)
{
  case ($bloco==1):
  { 
    picklist("A");
    break;
  }
  case ($bloco==2):
  { 
    $reglido=mysqli_fetch_array(mysqli_query($link,"SELECT * FROM feitospor WHERE cpfeitospor='$_REQUEST[cpfeitospor]'"));

    printf("<form action='feitosporalterar.php' method='POST'>\n");
    printf(" <input type='hidden' name='bloco' value='3'>\n");
    printf(" <input type='hidden' name='salto' value='$_REQUEST[salto]'>\n");
    printf(" <input type='hidden' name='cpfeitospor' value='$_REQUEST[cpfeitospor]'>\n");
    printf(" <table>");
    
    printf("  <tr><td>Código:</td><td>$reglido[cpfeitospor] - O código NÃO será Alterado pelo Sistema</td></tr>\n");

    printf("  <tr><td>Código da Oficina:</td><td>");
    mostrafklist('cpoficina','Concat(txnomeoficina, " - ", txapelido)','oficinas','ceoficina',"$reglido[ceoficina]");
   
    printf("</td></tr>\n");

    printf("  <tr><td>Código do Serviço:</td><td>");
    mostrafklist('cpservico','Concat(txnomeservico)','servicos','ceservico',"$reglido[ceservico]");
   
    printf("</td></tr>\n");

    printf("  <tr><td>Descrição: </td><td><textarea name='txdescricaocomplementar' rows='20' cols='60'value='$reglido[txdescricaocomplementar]'></textarea></td></tr>\n");


    printf("  <tr><td>Data do Cadastro:</td><td><input type='date' name='dtcadfeitospor' value='$reglido[dtcadfeitospor]'></td></tr>\n");

    printf("  <tr><td></td><td>");

    botoes('Alterar',TRUE,$_REQUEST['salto']-2,$_REQUEST['salto']-1,"$_REQUEST[salto]");
    printf("</td></tr>\n");
    printf(" </table>");
    printf("</form>");
    break;
  }
  case ($bloco==3):
  { 
    $cmdsql="UPDATE feitospor
                    SET ceoficina = '$_REQUEST[ceoficina]',
                        ceservico     = '$_REQUEST[ceservico]',
                        txdescricaocomplementar     = '$_REQUEST[txdescricaocomplementar]',
                        dtcadfeitospor = '$_REQUEST[dtcadfeitospor]'
                    WHERE
                        cpfeitospor='$_REQUEST[cpfeitospor]'";

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
        $mens="Registro com código $_REQUEST[cpfeitospor] Alterado!";
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
          $mens=mysqli_errno($link)."-".mysqli_error($link);
        }
        mysqli_query($link,"ROLLBACK");
        $mostrar=FALSE;
      }
    }
    printf("$mens<br>\n");
    if ( $mostrar )
    {
      mostraregistro("$_REQUEST[cpfeitospor]",'',FALSE,$_REQUEST['salto']-2,$_REQUEST['salto']-1,"$_REQUEST[salto]");
    }
    break;
  }
}
terminapagina("Feitos Por","Alterar","feitosporalterar.php");
?>
