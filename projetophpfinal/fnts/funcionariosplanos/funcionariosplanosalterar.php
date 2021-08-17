<?php

require_once("../../fncs/toolskit.php");

require_once("./funcionariosplanosfuncoes.php");

$bloco=( ISSET($_REQUEST['bloco']) ) ? $_REQUEST['bloco'] : 1;

iniciapagina(TRUE,"Funcionários Planos","Alterar");
$_REQUEST['salto']=$_REQUEST['salto']+1;
montamenu("Funcionários Planos","Alterar","$_REQUEST[salto]");

switch (TRUE)
{
  case ($bloco==1):
  { 
    picklist("A");
    break;
  }
  case ($bloco==2):
  { 
    $reglido=mysqli_fetch_array(mysqli_query($link,"SELECT * FROM funcionariosplanos WHERE cpfuncionarioplano='$_REQUEST[cpfuncionarioplano]'"));

    printf("<form action='funcionariosplanosalterar.php' method='POST'>\n");
    printf(" <input type='hidden' name='bloco' value='3'>\n");
    printf(" <input type='hidden' name='salto' value='$_REQUEST[salto]'>\n");
    printf(" <input type='hidden' name='cpfuncionarioplano' value='$_REQUEST[cpfuncionarioplano]'>\n");
    printf(" <table>");
    
    printf("  <tr><td>Código:</td><td>$reglido[cpfuncionarioplano] - O código NÃO será Alterado pelo Sistema</td></tr>\n");

    printf("  <tr><td>Código do Funcionário:</td><td>");
    mostrafklist('cpfuncionario','Concat(txnomefunc, " ", txsobrenomefunc)','funcionarios','cefuncionario',"$reglido[cefuncionario]");

    printf("</td></tr>\n");

    printf("  <tr><td>Código do Plano de Saúde:</td><td>");
    mostrafklist('cpplanodesaude','Concat(txnomeplano, " - ", txrazaosocial)','planosdesaude','ceplanodesaude',"$reglido[ceplanodesaude]");
   
    printf("</td></tr>\n");

    printf("  <tr><td>Data do Cadastro do Livro:</td><td><input type='date' name='dtvinculacao' value='$reglido[dtvinculacao]'></td></tr>\n");

    printf("  <tr><td>Data do Cadastro do Livro:</td><td><input type='date' name='dtdesligamento' value='$reglido[dtdesligamento]'></td></tr>\n");

    printf("  <tr><td>Data do Cadastro da Bibliografia:</td><td><input type='date' name='dtcadfuncplano' value='$reglido[dtcadfuncplano]'></td></tr>\n");

    printf("  <tr><td></td><td>");

    botoes('Alterar',TRUE,$_REQUEST['salto']-2,$_REQUEST['salto']-1,"$_REQUEST[salto]");
    printf("</td></tr>\n");
    printf(" </table>");
    printf("</form>");
    break;
  }
  case ($bloco==3):
  { 
    $cmdsql="UPDATE funcionariosplanos
                    SET cefuncionario = '$_REQUEST[cefuncionario]',
                        ceplanodesaude     = '$_REQUEST[ceplanodesaude]',
                        dtvinculacao      = '$_REQUEST[dtvinculacao]',
                        dtdesligamento     = '$_REQUEST[dtdesligamento]',
                        dtcadfuncplano = '$_REQUEST[dtcadfuncplano]'
                    WHERE
                        cpfuncionarioplano='$_REQUEST[cpfuncionarioplano]'";

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
        $mens="Registro com código $_REQUEST[cpfuncionarioplano] Alterado!";
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
      mostraregistro("$_REQUEST[cpfuncionarioplano]",'',FALSE,$_REQUEST['salto']-2,$_REQUEST['salto']-1,"$_REQUEST[salto]");
    }
    break;
  }
}
terminapagina("funcionariosplanos","Alterar","funcionariosplanosalterar.php");
?>
