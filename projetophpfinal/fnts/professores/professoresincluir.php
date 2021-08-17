<?php

require_once("../../fncs/toolskit.php");

require_once("./professoresfuncoes.php");

$bloco=( ISSET($_REQUEST['bloco']) ) ? $_REQUEST['bloco'] : 1;

iniciapagina(TRUE,"Professores","Incluir");
$_REQUEST['salto']=$_REQUEST['salto']+1;
montamenu("Professores","Incluir","$_REQUEST[salto]");

switch (TRUE)
{
  case ($bloco==1):
  { # montando o form
    printf("  <form action='professoresincluir.php' method='POST'>\n");
    printf("  <input type='hidden' name='bloco' value='2'>\n");
    printf("  <input type='hidden' name='salto' value='$_REQUEST[salto]'>\n");
    printf("  <table>\n");
    
    printf("   <tr><td>Código:</td><td>O código será gerado pelo Sistema</td></tr>\n");

    printf("   <tr><td>Nome do professor:</td><td><input type='text' name='txnomeprofessor'></td></tr>");

    printf("<tr><td>Código da Escola:</td><td>");
    mostrafklist('cpescola','Concat(txnomeescola)','escolas','ceescola','');
    printf("</td></tr>\n");

    printf("<tr><td>Logradouro:</td><td>");
    mostrafklist('cplogradouro','Concat(txnomelogradouro)','logradouros','celogradouro','');
    printf("</td></tr>\n");

    printf("   <tr><td>Complemento:</td><td><input type='text' name='txcomplemento'></td></tr>");

    printf("   <tr><td>Telefone:</td><td><input type='tel' name='nutelefone'></td></tr>");
  
    printf("   <tr><td>Bairro:</td><td><input type='text' name='txbairro'></td></tr>");

    printf("   <tr><td>Cep:</td><td><input type='text' name='nucep' class='form-control cep-mask'></td></tr>");

    printf("   <tr><td>Data de Nascimento:</td><td><input type='date' name='dtnascimento'></td></tr>\n");

    printf("   <tr><td>Data do Cadastro do Professor:</td><td><input type='date' name='dtcadprofessor'></td></tr>\n");

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

      $ultimacp=mysqli_fetch_array(mysqli_query($link,"SELECT MAX(cpprofessor) AS CpMAX FROM professores"));
      $CP=$ultimacp['CpMAX']+1;
 
      $cmdsql="INSERT INTO professores (cpprofessor,txnomeprofessor,ceescola,celogradouro,txcomplemento,nutelefone,txbairro, nucep, dtnascimento, dtcadprofessor)
                      VALUES ('$CP',
                              '$_REQUEST[txnomeprofessor]',
                              '$_REQUEST[ceescola]',
                              '$_REQUEST[celogradouro]',
                              '$_REQUEST[txcomplemento]',
                              '$_REQUEST[nutelefone]',
                              '$_REQUEST[txbairro]',
                              '$_REQUEST[nucep]',
                              '$_REQUEST[dtnascimento]',
                              '$_REQUEST[dtcadprofessor]')";
 

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
terminapagina("professores","Incluir","professoresincluir.php");
?>
