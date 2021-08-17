<?php

require_once("../../fncs/toolskit.php");

require_once("./funcionariosplanosfuncoes.php");

$bloco=( ISSET($_REQUEST['bloco']) ) ? $_REQUEST['bloco'] : 1;

iniciapagina(TRUE,"Funcionários Planos","Incluir");
$_REQUEST['salto']=$_REQUEST['salto']+1;
montamenu("Funcionários Planos","Incluir","$_REQUEST[salto]");

switch (TRUE)
{
  case ($bloco==1):
  { # montando o form
    printf("  <form action='funcionariosplanosincluir.php' method='POST'>\n");
    printf("  <input type='hidden' name='bloco' value='2'>\n");
    printf("  <input type='hidden' name='salto' value='$_REQUEST[salto]'>\n");
    printf("  <table>\n");
    
    printf("   <tr><td>Código:</td><td>O código será gerado pelo Sistema</td></tr>\n");

    printf("<tr><td>Código do Funcionário:</td><td>");
    mostrafklist('cpfuncionario','Concat(txnomefunc, " ", txsobrenomefunc)','funcionarios','cefuncionario','');
    printf("</td></tr>\n");

    printf("<tr><td>Código do Plano de Saúde:</td><td>");
    mostrafklist('cpplanodesaude','Concat(txnomeplano, " - ", txrazaosocial)','planosdesaude','ceplanodesaude','');
    printf("</td></tr>\n");
  
    printf("   <tr><td>Data da Vinculação: </td><td><input type='date' name='dtvinculacao'></td></tr>\n");

    printf("   <tr><td>Data do Desligamento: </td><td><input type='date' name='dtdesligamento'></td></tr>\n");

    printf("   <tr><td>Data do Cadastro do Plano do Funcionário: </td><td><input type='date' name='dtcadfuncplano'></td></tr>\n");

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

      $ultimacp=mysqli_fetch_array(mysqli_query($link,"SELECT MAX(cpfuncionarioplano) AS CpMAX FROM funcionariosplanos"));
      $CP=$ultimacp['CpMAX']+1;
 
      $cmdsql="INSERT INTO funcionariosplanos (cpfuncionarioplano,cefuncionario,ceplanodesaude,dtvinculacao,dtdesligamento,dtcadfuncplano)
                      VALUES ('$CP',
                              '$_REQUEST[cefuncionario]',
                              '$_REQUEST[ceplanodesaude]',
                              '$_REQUEST[dtvinculacao]',
                              '$_REQUEST[dtdesligamento]',
                              '$_REQUEST[dtcadfuncplano]')";
 

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
terminapagina("funcionariosplanos","Incluir","funcionariosplanosincluir.php");
?>
