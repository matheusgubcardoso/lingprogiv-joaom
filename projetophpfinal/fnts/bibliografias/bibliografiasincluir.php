<?php

require_once("../../fncs/toolskit.php");

require_once("./bibliografiasfuncoes.php");

$bloco=( ISSET($_REQUEST['bloco']) ) ? $_REQUEST['bloco'] : 1;

iniciapagina(TRUE,"Bibliografias","Incluir");
$_REQUEST['salto']=$_REQUEST['salto']+1;
montamenu("Bibliografias","Incluir","$_REQUEST[salto]");

switch (TRUE)
{
  case ($bloco==1):
  { # montando o form
    printf("  <form action='bibliografiasincluir.php' method='POST'>\n");
    printf("  <input type='hidden' name='bloco' value='2'>\n");
    printf("  <input type='hidden' name='salto' value='$_REQUEST[salto]'>\n");
    printf("  <table>\n");
    
    printf("   <tr><td>Código:</td><td>O código será gerado pelo Sistema</td></tr>\n");

    printf("<tr><td>Código da Disciplina:</td><td>");
    mostrafklist('cpdisciplina','Concat(txnome)','disciplinas','cedisciplina','');
    printf("</td></tr>\n");

    printf("<tr><td>Código do Livro:</td><td>");
    mostrafklist('cplivro','Concat(txtituloacervo)','livros','celivro','');
    printf("</td></tr>\n");
  
    printf("   <tr><td>Tipo:</td><td><input type='text' name='aotipo' placeholder='' size=1 maxlength=1> - Somente letras</td></tr>");

    printf("   <tr><td>Data do Cadastro do Livro: </td><td><input type='date' name='dtadocaodolivro'></td></tr>\n");

    printf("   <tr><td>Data do Cadastro da Bibliografia: </td><td><input type='date' name='dtcadbibliografia'></td></tr>\n");

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

      $ultimacp=mysqli_fetch_array(mysqli_query($link,"SELECT MAX(cpbibliografia) AS CpMAX FROM bibliografias"));
      $CP=$ultimacp['CpMAX']+1;
 
      $cmdsql="INSERT INTO bibliografias (cpbibliografia,cedisciplina,celivro,aotipo,dtadocaodolivro,dtcadbibliografia)
                      VALUES ('$CP',
                              '$_REQUEST[cedisciplina]',
                              '$_REQUEST[celivro]',
                              '$_REQUEST[aotipo]',
                              '$_REQUEST[dtadocaodolivro]',
                              '$_REQUEST[dtcadbibliografia]')";
 

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
terminapagina("bibliografias","Incluir","bibliografiasincluir.php");
?>
