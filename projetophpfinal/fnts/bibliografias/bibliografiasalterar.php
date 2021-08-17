<?php

require_once("../../fncs/toolskit.php");

require_once("./bibliografiasfuncoes.php");

$bloco=( ISSET($_REQUEST['bloco']) ) ? $_REQUEST['bloco'] : 1;

iniciapagina(TRUE,"Bibliografias","Alterar");
$_REQUEST['salto']=$_REQUEST['salto']+1;
montamenu("Bibliografias","Alterar","$_REQUEST[salto]");

switch (TRUE)
{
  case ($bloco==1):
  { 
    picklist("A");
    break;
  }
  case ($bloco==2):
  { 
    $reglido=mysqli_fetch_array(mysqli_query($link,"SELECT * FROM bibliografias WHERE cpbibliografia='$_REQUEST[cpbibliografia]'"));

    printf("<form action='bibliografiasalterar.php' method='POST'>\n");
    printf(" <input type='hidden' name='bloco' value='3'>\n");
    printf(" <input type='hidden' name='salto' value='$_REQUEST[salto]'>\n");
    printf(" <input type='hidden' name='cpbibliografia' value='$_REQUEST[cpbibliografia]'>\n");
    printf(" <table>");
    
    printf("  <tr><td>Código:</td><td>$reglido[cpbibliografia] - O código NÃO será Alterado pelo Sistema</td></tr>\n");

    printf("  <tr><td>Código da Disciplina:</td><td>");
    mostrafklist('cpdisciplina','Concat(txnome)','disciplinas','cedisciplina',"$reglido[cedisciplina]");
   
    printf("</td></tr>\n");

    printf("  <tr><td>Código do Livro:</td><td>");
    mostrafklist('cplivro','Concat(txtituloacervo)','livros','celivro',"$reglido[celivro]");
   
    printf("</td></tr>\n");

    printf("  <tr><td>Tipo: </td><td><input type='text' name='aotipo' value='$reglido[aotipo]'></td></tr>\n");

    printf("  <tr><td>Data do Cadastro do Livro:</td><td><input type='date' name='dtadocaodolivro' value='$reglido[dtadocaodolivro]'></td></tr>\n");

    printf("  <tr><td>Data do Cadastro da Bibliografia:</td><td><input type='date' name='dtcadbibliografia' value='$reglido[dtcadbibliografia]'></td></tr>\n");

    printf("  <tr><td></td><td>");

    botoes('Alterar',TRUE,$_REQUEST['salto']-2,$_REQUEST['salto']-1,"$_REQUEST[salto]");
    printf("</td></tr>\n");
    printf(" </table>");
    printf("</form>");
    break;
  }
  case ($bloco==3):
  { 
    $cmdsql="UPDATE bibliografias
                    SET cedisciplina = '$_REQUEST[cedisciplina]',
                        celivro     = '$_REQUEST[celivro]',
                        aotipo      = '$_REQUEST[aotipo]',
                        dtadocaodolivro     = '$_REQUEST[dtadocaodolivro]',
                        dtcadbibliografia = '$_REQUEST[dtcadbibliografia]'
                    WHERE
                        cpbibliografia='$_REQUEST[cpbibliografia]'";

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
        $mens="Registro com código $_REQUEST[cpbibliografia] Alterado!";
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
      mostraregistro("$_REQUEST[cpbibliografia]",'',FALSE,$_REQUEST['salto']-2,$_REQUEST['salto']-1,"$_REQUEST[salto]");
    }
    break;
  }
}
terminapagina("bibliografias","Alterar","bibliografiasalterar.php");
?>
