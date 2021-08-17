<?php
require_once("../../fncs/toolskit.php");
require_once("./professoresfuncoes.php");
$bloco=( ISSET($_POST['bloco']) ) ? $_POST['bloco'] : 1;
$cordefundo=($bloco<3) ? TRUE : FALSE;
iniciapagina($cordefundo,"Professores","Listar");
$_REQUEST['salto']=$_REQUEST['salto']+1;

switch (TRUE)
{
  case ( $bloco==1 ):
  { 
    montamenu("Professores","Listar","$_REQUEST[salto]");
    printf(" <form action='./professoreslistar.php' method='post'>\n");
    printf("  <input type='hidden' name='bloco' value=2>\n");
    printf("  <input type='hidden' name='salto' value='$_REQUEST[salto]'>\n");
    printf("  <table>\n");
    printf("   <tr><td colspan=2>Escolha a <negrito>ordem</negrito> como os dados serão exibidos no relatório:</td></tr>\n");
    printf("   <tr><td>Código do Professor...:</td><td>(<input type='radio' name='ordem' value='B.cpprofessor' checked>)</td></tr>\n");
    printf("   <tr><td>Escola...:</td><td>(<input type='radio' name='ordem' value='L.txnomeescola'>)</td></tr>\n");
    printf("   <tr><td>Logradouro...:</td><td>(<input type='radio' name='ordem' value='D.txnomelogradouro'>)</td></tr>\n");
    printf("   <tr><td colspan=2>Escolha valores para selação de <negrito>dados</negrito> do relatório:</td></tr>\n");
    printf("   <tr><td>Escolha uma escola:</td><td>");
    $cmdsql="SELECT cpescola,txnomeescola FROM escolas ORDER BY txnomeescola";
    $execcmd=mysqli_query($link,$cmdsql);
    printf("<select name='ceescola'>");
    printf("<option value='TODOS'>Todos</option>");
    while ( $reg=mysqli_fetch_array($execcmd) )
    {
      printf("<option value='$reg[cpescola]'>$reg[txnomeescola] - ($reg[cpescola])</option>");
    }
    printf("<select>\n");
    printf("</td></tr>\n");
    printf("   <tr><td>Escolha um Logradouro:</td><td>");
    $cmdsql="SELECT cplogradouro,txnomelogradouro FROM logradouros ORDER BY txnomelogradouro";
    $execcmd=mysqli_query($link,$cmdsql);
    printf("<select name='celogradouro'>");
    printf("<option value='TODOS'>Todos</option>");
    while ( $reg=mysqli_fetch_array($execcmd) )
    {
      printf("<option value='$reg[cplogradouro]'>$reg[txnomelogradouro] - ($reg[cplogradouro])</option>");
    }
    printf("<select>\n");
    printf("</td></tr>\n");
    $dtini="1901-01-01";
    $dtfim=date("Y-m-d");
    printf("<tr><td>Intervalo de datas de cadastro:</td><td><input type='date' name='dtcadini' value='$dtini'> até <input type='date' name='dtcadfim' value='$dtfim'></td></tr>");
    printf("   <tr><td></td><td>");
    botoes('Listar',TRUE,$_REQUEST['salto']-2,$_REQUEST['salto']-1,"$_REQUEST[salto]");
    printf("</td></tr>\n");
    printf("  </table>\n");
    printf(" </form>\n");
    break;
  }
  case ( $bloco==2 || $bloco==3 ):
  { 
    $selecao=" WHERE (B.dtcadprofessor between '$_REQUEST[dtcadini]' and '$_REQUEST[dtcadfim]')";
    $selecao=( $_REQUEST['ceescola']!='TODOS' ) ? $selecao." AND B.ceescola='$_REQUEST[ceescola]'" : $selecao ;
    $selecao=( $_REQUEST['celogradouro']!='TODOS' ) ? $selecao." AND B.celogradouro='$_REQUEST[celogradouro]'" : $selecao ;
    $finaldecomando=$selecao." ORDER BY $_REQUEST[ordem]";
    $cmdsql='SELECT B.*,
                    L.txnomeescola,
                    D.txnomelogradouro
                    FROM professores AS B INNER JOIN escolas AS L ON B.ceescola=L.cpescola
                                        INNER JOIN logradouros AS D ON B.celogradouro=D.cplogradouro'.$finaldecomando;
   
    $execsql=mysqli_query($link,$cmdsql);
    ($bloco==2) ? montamenu("Professores","Listar","$_REQUEST[salto]"):"";
    printf("<table border=1 style=' border-collapse: collapse; '>
            <tr><td valign=top>Código:</td>\n
                <td valign=top>Nome do professor.:</td>\n
                <td valign=top>Escola.:</td>\n
                <td valign=top>Logradouro.:</td>\n
                <td valign=top>Complemento.:</td>\n
                <td valign=top>Telefone.:</td>\n
                <td valign=top>Bairro.:</td>\n
                <td valign=top>Cep.:</td>\n
                <td valign=top>Data de Nascimento.:</td>\n
                <td valign=top>Data do Cadastro do Professor.:</td></tr>\n");
    while ( $le=mysqli_fetch_array($execsql) )
    {
      printf("<tr><td>$le[cpprofessor]</td>\n
                  <td valign=top>$le[txnomeprofessor]</td>\n
                  <td valign=top>$le[txnomeescola]-($le[ceescola])</td>\n
                  <td valign=top>$le[txnomelogradouro]-($le[celogradouro])</td>\n
                  <td valign=top>$le[txcomplemento]</td>\n
                  <td valign=top>$le[nutelefone]</td>\n
                  <td valign=top>$le[txbairro]</td>\n
                  <td valign=top>$le[nucep]</td>\n
                  <td valign=top>$le[dtnascimento]</td>\n
                  <td valign=top>$le[dtcadprofessor]</td></tr>\n");
    }
    printf("</table>\n");
    if ( $bloco==2 )
    {
      printf("<form action='./professoreslistar.php' method='POST' target='_NEW'>\n");
      printf(" <input type='hidden' name='bloco' value=3>\n");
      printf(" <input type='hidden' name='salto' value='$_REQUEST[salto]'>\n");
      printf("<input type='hidden' name='ceescola' value=$_REQUEST[ceescola]>\n");
      printf("<input type='hidden' name='celogradouro' value=$_REQUEST[celogradouro]>\n");
      printf("<input type='hidden' name='dtcadini' value=$_REQUEST[dtcadini]>\n");
      printf("<input type='hidden' name='dtcadfim' value=$_REQUEST[dtcadfim]>\n");
      printf("<input type='hidden' name='ordem' value=$_REQUEST[ordem]>\n");
      
      botoes("Gerar cópia para Impressão",FALSE,$_REQUEST['salto']-2,$_REQUEST['salto']-1,"$_REQUEST[salto]");
      printf("</form>\n");
    }
    else
    {
      printf("<button type='submit' onclick='window.print();'>Imprimir</button> - Corte a folha abaixo da linha no final da página<br>\n<hr>\n");
    }

    break;
  }
}
terminapagina("professores","Listar","professoreslistar.php");
?>