<?php

require_once("../../fncs/toolskit.php");

require_once("./feitosporfuncoes.php");

$bloco=( ISSET($_REQUEST['bloco']) ) ? $_REQUEST['bloco'] : 1;

iniciapagina(TRUE,"Feitos Por","Incluir");
$_REQUEST['salto']=$_REQUEST['salto']+1;
montamenu("Feitos Por","Incluir","$_REQUEST[salto]");

switch (TRUE)
{
  case ($bloco==1):
  { # montando o form
    printf("  <form action='feitosporincluir.php' method='POST'>\n");
    printf("  <input type='hidden' name='bloco' value='2'>\n");
    printf("  <input type='hidden' name='salto' value='$_REQUEST[salto]'>\n");
    printf("  <table>\n");
    
    printf("   <tr><td>Código:</td><td>O código será gerado pelo Sistema</td></tr>\n");

    printf("<tr><td>Código da Oficina:</td><td>");
    mostrafklist('cpoficina','Concat(txnomeoficina, " - ", txapelido)','oficinas','ceoficina','');
    printf("</td></tr>\n");

    printf("<tr><td>Código do Serviço:</td><td>");
    mostrafklist('cpservico','Concat(txnomeservico)','servicos','ceservico','');
    printf("</td></tr>\n");
  
    printf("   <tr><td>Descrição:</td><td><textarea name='txdescricaocomplementar' rows='20' cols='60'></textarea></td></tr>");

    printf("   <tr><td>Data do Cadastro: </td><td><input type='date' name='dtcadfeitospor'></td></tr>\n");

    printf("   <tr><td></td><td>");
    botoes('Incluir',TRUE,$_REQUEST['salto']-2,$_REQUEST['salto']-1,"$_REQUEST[salto]");
    printf("</td></tr>\n");
    printf("  </table>\n");
    printf("  </form>\n");
    break;
  }
  case ($bloco==2):
  { 
    
    $mostrar=FALSE;
    $tenta=TRUE;
    while ( $tenta )
    { 
      mysqli_query($link,"START TRANSACTION");

      $ultimacp=mysqli_fetch_array(mysqli_query($link,"SELECT MAX(cpfeitospor) AS CpMAX FROM feitospor"));
      $CP=$ultimacp['CpMAX']+1;
 
      $cmdsql="INSERT INTO feitospor (cpfeitospor,ceoficina,ceservico,txdescricaocomplementar,dtcadfeitospor)
                      VALUES ('$CP',
                              '$_REQUEST[ceoficina]',
                              '$_REQUEST[ceservico]',
                              '$_REQUEST[txdescricaocomplementar]',
                              '$_REQUEST[dtcadfeitospor]')";
 

      mysqli_query($link,$cmdsql);
       if ( mysqli_errno($link)==0 )
      { 
        mysqli_query($link,"COMMIT");
        $tenta=FALSE;
        $mostrar=TRUE;
        $mens="Registro incluído! Valor do Código: $CP";
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
    if ( $mostrar )
    {
      mostraregistro("$CP",'',FALSE,$_REQUEST['salto']-2,$_REQUEST['salto']-1,"$_REQUEST[salto]");
    }
    break;
  }
}
terminapagina("Feitos Por","Incluir","feitosporincluir.php");
?>
