<?php

require_once("../../fncs/toolskit.php");

require_once("./professoresfuncoes.php");

$bloco=( ISSET($_REQUEST['bloco']) ) ? $_REQUEST['bloco'] : 1;

iniciapagina(TRUE,"Professores","Alterar");
$_REQUEST['salto']=$_REQUEST['salto']+1;
montamenu("Professores","Alterar","$_REQUEST[salto]");

switch (TRUE)
{
  case ($bloco==1):
  { 
    picklist("A");
    break;
  }
  case ($bloco==2):
  { 
    $reglido=mysqli_fetch_array(mysqli_query($link,"SELECT * FROM professores WHERE cpprofessor='$_REQUEST[cpprofessor]'"));

    printf("<form action='professoresalterar.php' method='POST'>\n");
    printf(" <input type='hidden' name='bloco' value='3'>\n");
    printf(" <input type='hidden' name='salto' value='$_REQUEST[salto]'>\n");
    printf(" <input type='hidden' name='cpprofessor' value='$_REQUEST[cpprofessor]'>\n");
    printf(" <table>");
    
    printf("  <tr><td>Código:</td><td>$reglido[cpprofessor] - O código NÃO será Alterado pelo Sistema</td></tr>\n");

    printf("  <tr><td>Tipo: </td><td><input type='text' name='txnomeprofessor' value='$reglido[txnomeprofessor]'></td></tr>\n");

    printf("  <tr><td>Código da Escola:</td><td>");
    mostrafklist('cpescola','Concat(txnomeescola)','escolas','ceescola',"$reglido[ceescola]");
   
    printf("</td></tr>\n");

    printf("  <tr><td>Código do Logradouro:</td><td>");
    mostrafklist('cplogradouro','Concat(txnomelogradouro)','logradouros','celogradouro',"$reglido[celogradouro]");
   
    printf("</td></tr>\n");

    printf("  <tr><td>Complemento: </td><td><input type='text' name='txcomplemento' value='$reglido[txcomplemento]'></td></tr>\n");

     printf("  <tr><td>Telefone: </td><td><input type='text' name='nutelefone' value='$reglido[nutelefone]'></td></tr>\n");

      printf("  <tr><td>Bairro: </td><td><input type='text' name='txbairro' value='$reglido[txbairro]'></td></tr>\n");

       printf("  <tr><td>Cep: </td><td><input type='text' name='nucep' value='$reglido[nucep]'></td></tr>\n");

    printf("  <tr><td>Data de Nascimento:</td><td><input type='date' name='dtnascimento' value='$reglido[dtnascimento]'></td></tr>\n");

    printf("  <tr><td>Data do Cadastro do Professor:</td><td><input type='date' name='dtcadprofessor' value='$reglido[dtcadprofessor]'></td></tr>\n");

    printf("  <tr><td></td><td>");

    botoes('Alterar',TRUE,$_REQUEST['salto']-2,$_REQUEST['salto']-1,"$_REQUEST[salto]");
    printf("</td></tr>\n");
    printf(" </table>");
    printf("</form>");
    break;
  }
  case ($bloco==3):
  { 
    $cmdsql="UPDATE professores
                    SET txnomeprofessor = '$_REQUEST[txnomeprofessor]',
                        ceescola     = '$_REQUEST[ceescola]',
                        celogradouro      = '$_REQUEST[celogradouro]',
                        txcomplemento     = '$_REQUEST[txcomplemento]',
                        nutelefone     = '$_REQUEST[nutelefone]',
                        txbairro     = '$_REQUEST[txbairro]',
                        nucep     = '$_REQUEST[nucep]',
                        dtnascimento     = '$_REQUEST[dtnascimento]',
                        dtcadprofessor = '$_REQUEST[dtcadprofessor]'
                    WHERE
                        cpprofessor='$_REQUEST[cpprofessor]'";

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
        $mens="Registro com código $_REQUEST[cpprofessor] Alterado!";
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
      mostraregistro("$_REQUEST[cpprofessor]",'',FALSE,$_REQUEST['salto']-2,$_REQUEST['salto']-1,"$_REQUEST[salto]");
    }
    break;
  }
}
terminapagina("professores","Alterar","professoresalterar.php");
?>
