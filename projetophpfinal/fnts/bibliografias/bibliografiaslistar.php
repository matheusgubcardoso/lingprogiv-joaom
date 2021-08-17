<?php
require_once("../../fncs/toolskit.php");
require_once("./bibliografiasfuncoes.php");
$bloco=( ISSET($_POST['bloco']) ) ? $_POST['bloco'] : 1;
$cordefundo=($bloco<3) ? TRUE : FALSE;
iniciapagina($cordefundo,"Bibliografias","Listar");
$_REQUEST['salto']=$_REQUEST['salto']+1;

switch (TRUE)
{
  case ( $bloco==1 ):
  { 
    montamenu("Bibliografias","Listar","$_REQUEST[salto]");
    printf(" <form action='./bibliografiaslistar.php' method='post'>\n");
    printf("  <input type='hidden' name='bloco' value=2>\n");
    printf("  <input type='hidden' name='salto' value='$_REQUEST[salto]'>\n");
    printf("  <table>\n");
    printf("   <tr><td colspan=2>Escolha a <negrito>ordem</negrito> como os dados serão exibidos no relatório:</td></tr>\n");
    printf("   <tr><td>Código da Bibliografia...:</td><td>(<input type='radio' name='ordem' value='B.cpbibliografia' checked>)</td></tr>\n");
    printf("   <tr><td>Nome do Livro...:</td><td>(<input type='radio' name='ordem' value='L.txtituloacervo'>)</td></tr>\n");
    printf("   <tr><td>Nome da Disciplina...:</td><td>(<input type='radio' name='ordem' value='D.txnome'>)</td></tr>\n");
    printf("   <tr><td colspan=2>Escolha valores para selação de <negrito>dados</negrito> do relatório:</td></tr>\n");
    printf("   <tr><td>Escolha uma Bibliografia:</td><td>");
    $cmdsql="SELECT cplivro,txtituloacervo FROM livros ORDER BY txtituloacervo";
    $execcmd=mysqli_query($link,$cmdsql);
    printf("<select name='celivro'>");
    printf("<option value='TODOS'>Todos</option>");
    while ( $reg=mysqli_fetch_array($execcmd) )
    {
      printf("<option value='$reg[cplivro]'>$reg[txtituloacervo]-($reg[cplivro])</option>");
    }
    printf("<select>\n");
    printf("</td></tr>\n");
    printf("   <tr><td>Escolha uma Disciplina:</td><td>");
    $cmdsql="SELECT cpdisciplina,txnome FROM disciplinas ORDER BY txnome";
    $execcmd=mysqli_query($link,$cmdsql);
    printf("<select name='cedisciplina'>");
    printf("<option value='TODOS'>Todos</option>");
    while ( $reg=mysqli_fetch_array($execcmd) )
    {
      printf("<option value='$reg[cpdisciplina]'>$reg[txnome]-($reg[cpdisciplina])</option>");
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
    $selecao=" WHERE (B.dtcadbibliografia between '$_REQUEST[dtcadini]' and '$_REQUEST[dtcadfim]')";
    $selecao=( $_REQUEST['celivro']!='TODOS' ) ? $selecao." AND B.celivro='$_REQUEST[celivro]'" : $selecao ;
    $selecao=( $_REQUEST['cedisciplina']!='TODOS' ) ? $selecao." AND B.cedisciplina='$_REQUEST[cedisciplina]'" : $selecao ;
    $finaldecomando=$selecao." ORDER BY $_REQUEST[ordem]";
    $cmdsql='SELECT B.*,
                    L.txtituloacervo,
                    D.txnome
                    FROM bibliografias AS B INNER JOIN livros AS L ON B.celivro=L.cplivro
                                        INNER JOIN disciplinas AS D ON B.cedisciplina=D.cpdisciplina'.$finaldecomando;
   
    $execsql=mysqli_query($link,$cmdsql);
    ($bloco==2) ? montamenu("Bibliografias","Listar","$_REQUEST[salto]"):"";
    printf("<table border=1 style=' border-collapse: collapse; '>
            <tr><td valign=top>Código:</td>\n
                <td valign=top>Livro.:</td>\n
                <td valign=top>Disciplina.:</td>\n
                <td valign=top>Tipo.:</td>\n
                <td valign=top>Data do Cadastro do Livro.:</td>\n
                <td valign=top>Data do Cadastro da Bibliografia.:</td></tr>\n");
    while ( $le=mysqli_fetch_array($execsql) )
    {
      printf("<tr><td>$le[cpbibliografia]</td>\n
                  <td valign=top>$le[txtituloacervo]-($le[celivro])</td>\n
                  <td valign=top>$le[txnome]-($le[cedisciplina])</td>\n
                  <td valign=top>$le[aotipo]</td>\n
                  <td valign=top>$le[dtadocaodolivro]</td>\n
                  <td valign=top>$le[dtcadbibliografia]</td></tr>\n");
    }
    printf("</table>\n");
    if ( $bloco==2 )
    {
      printf("<form action='./bibliografiaslistar.php' method='POST' target='_NEW'>\n");
      printf(" <input type='hidden' name='bloco' value=3>\n");
      printf(" <input type='hidden' name='salto' value='$_REQUEST[salto]'>\n");
      printf("<input type='hidden' name='celivro' value=$_REQUEST[celivro]>\n");
      printf("<input type='hidden' name='cedisciplina' value=$_REQUEST[cedisciplina]>\n");
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
terminapagina("bibliografias","Listar","bibliografiaslistar.php");
?>