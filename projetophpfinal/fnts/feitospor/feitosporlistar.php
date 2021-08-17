<?php
require_once("../../fncs/toolskit.php");

require_once("./feitosporfuncoes.php");

$bloco=( ISSET($_POST['bloco']) ) ? $_POST['bloco'] : 1;
$cordefundo=($bloco<3) ? TRUE : FALSE;
iniciapagina($cordefundo,"Feitos Por","Listar");
$_REQUEST['salto']=$_REQUEST['salto']+1;

switch (TRUE)
{
  case ( $bloco==1 ):
  { 
    montamenu("Feitos Por","Listar","$_REQUEST[salto]");
    printf(" <form action='./feitosporlistar.php' method='post'>\n");
    printf("  <input type='hidden' name='bloco' value=2>\n");
    printf("  <input type='hidden' name='salto' value='$_REQUEST[salto]'>\n");
    printf("  <table>\n");
    printf("   <tr><td colspan=2>Escolha a <negrito>ordem</negrito> como os dados serão exibidos no relatório:</td></tr>\n");

    printf("   <tr><td>Código...:</td><td>(<input type='radio' name='ordem' value='B.cpfeitospor' checked>)</td></tr>\n");
    printf("   <tr><td>Oficinas...:</td><td>(<input type='radio' name='ordem' value='L.txnomeoficina'>)</td></tr>\n");
    printf("   <tr><td>Serviços...:</td><td>(<input type='radio' name='ordem' value='D.txnomeservico'>)</td></tr>\n");
    printf("   <tr><td colspan=2>Escolha valores para selação de <negrito>dados</negrito> do relatório:</td></tr>\n");
   
    printf("   <tr><td>Oficinas.:</td><td>");
    $cmdsql="SELECT cpoficina,txnomeoficina FROM oficinas ORDER BY txnomeoficina";
    $execcmd=mysqli_query($link,$cmdsql);
    printf("<select name='ceoficina'>");
    printf("<option value='TODOS'>Todos</option>");
    while ( $reg=mysqli_fetch_array($execcmd) )
    {
      printf("<option value='$reg[cpoficina]'>$reg[txnomeoficina]-($reg[cpoficina])</option>");
    }
    printf("<select>\n");
    printf("</td></tr>\n");

    printf("   <tr><td>Serviços.:</td><td>");
    $cmdsql="SELECT cpservico,txnomeservico FROM servicos ORDER BY txnomeservico";
    $execcmd=mysqli_query($link,$cmdsql);
    printf("<select name='ceservico'>");
    printf("<option value='TODOS'>Todos</option>");
    while ( $reg=mysqli_fetch_array($execcmd) )
    {
      printf("<option value='$reg[cpservico]'>$reg[txnomeservico]-($reg[cpservico])</option>");
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
    $selecao=" WHERE (B.dtcadfeitospor between '$_REQUEST[dtcadini]' and '$_REQUEST[dtcadfim]')";
    $selecao=( $_REQUEST['ceservico']!='TODOS' ) ? $selecao." AND B.ceservico='$_REQUEST[ceservico]'" : $selecao ;
    $selecao=( $_REQUEST['ceoficina']!='TODOS' ) ? $selecao." AND B.ceoficina='$_REQUEST[ceoficina]'" : $selecao ;
    $finaldecomando=$selecao." ORDER BY $_REQUEST[ordem]";
    $cmdsql='SELECT B.*,
                    D.txnomeservico,
                    L.txnomeoficina
                    FROM feitospor AS B INNER JOIN servicos AS D ON B.ceservico=D.cpservico
                                        INNER JOIN oficinas AS L ON B.ceoficina=L.cpoficina'.$finaldecomando;
   
    $execsql=mysqli_query($link,$cmdsql);
    ($bloco==2) ? montamenu("Feitos Por","Listar","$_REQUEST[salto]"):"";
    printf("<table border=1 style=' border-collapse: collapse; '>
            <tr><td valign=top>Código.:</td>\n
                <td valign=top>Oficinas.:</td>\n
                <td valign=top>Serviços.:</td>\n
                <td valign=top>Descrição.:</td>\n
                <td valign=top>Cadastro.:</td></tr>\n");
    while ( $le=mysqli_fetch_array($execsql) )
    {
      printf("<tr><td>$le[cpfeitospor]</td>\n
                  <td valign=top>$le[txnomeservico]-($le[ceservico])</td>\n
                  <td valign=top>$le[txnomeoficina]-($le[ceoficina])</td>\n
                  <td valign=top>$le[txdescricaocomplementar]</td>\n
                  <td valign=top>$le[dtcadfeitospor]</td></tr>\n");
    }
    printf("</table>\n");
    if ( $bloco==2 )
    {
      printf("<form action='./feitosporlistar.php' method='POST' target='_NEW'>\n");
      printf(" <input type='hidden' name='bloco' value=3>\n");
      printf(" <input type='hidden' name='salto' value='$_REQUEST[salto]'>\n");
      printf("<input type='hidden' name='ceoficina' value=$_REQUEST[ceoficina]>\n");
      printf("<input type='hidden' name='ceservico' value=$_REQUEST[ceservico]>\n");
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
terminapagina("Feitos Por","Listar","feitosporlistar.php");
?>