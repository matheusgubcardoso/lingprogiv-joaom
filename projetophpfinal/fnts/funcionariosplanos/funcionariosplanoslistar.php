<?php
require_once("../../fncs/toolskit.php");

require_once("./funcionariosplanosfuncoes.php");

$bloco=( ISSET($_POST['bloco']) ) ? $_POST['bloco'] : 1;
$cordefundo=($bloco<3) ? TRUE : FALSE;
iniciapagina($cordefundo,"Funcionários Planos","Listar");
$_REQUEST['salto']=$_REQUEST['salto']+1;

switch (TRUE)
{
  case ( $bloco==1 ):
  { 
    montamenu("Funcionários Planos","Listar","$_REQUEST[salto]");
    printf(" <form action='./funcionariosplanoslistar.php' method='post'>\n");
    printf("  <input type='hidden' name='bloco' value=2>\n");
    printf("  <input type='hidden' name='salto' value='$_REQUEST[salto]'>\n");
    printf("  <table>\n");
    printf("   <tr><td colspan=2>Escolha a <negrito>ordem</negrito> como os dados serão exibidos no relatório:</td></tr>\n");

    printf("   <tr><td>Código do Plano do Funcionário...:</td><td>(<input type='radio' name='ordem' value='B.cpfuncionarioplano' checked>)</td></tr>\n");
    printf("   <tr><td>Nome do Funcionário...:</td><td>(<input type='radio' name='ordem' value='L.txnomefunc'>)</td></tr>\n");
    printf("   <tr><td>Nome do Plano de Saúde...:</td><td>(<input type='radio' name='ordem' value='D.txnomeplano'>)</td></tr>\n");
    printf("   <tr><td colspan=2>Escolha valores para selação de <negrito>dados</negrito> do relatório:</td></tr>\n");
   
    printf("   <tr><td>Escolha um Funcionário:</td><td>");
    $cmdsql="SELECT cpfuncionario,txnomefunc FROM funcionarios ORDER BY txnomefunc";
    $execcmd=mysqli_query($link,$cmdsql);
    printf("<select name='cefuncionario'>");
    printf("<option value='TODOS'>Todos</option>");
    while ( $reg=mysqli_fetch_array($execcmd) )
    {
      printf("<option value='$reg[cpfuncionario]'>$reg[txnomefunc]-($reg[cpfuncionario])</option>");
    }
    printf("<select>\n");
    printf("</td></tr>\n");

    printf("   <tr><td>Escolha um Plano de Saúde:</td><td>");
    $cmdsql="SELECT cpplanodesaude,txnomeplano FROM planosdesaude ORDER BY txnomeplano";
    $execcmd=mysqli_query($link,$cmdsql);
    printf("<select name='ceplanodesaude'>");
    printf("<option value='TODOS'>Todos</option>");
    while ( $reg=mysqli_fetch_array($execcmd) )
    {
      printf("<option value='$reg[cpplanodesaude]'>$reg[txnomeplano]-($reg[cpplanodesaude])</option>");
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
    $selecao=" WHERE (B.dtcadfuncplano between '$_REQUEST[dtcadini]' and '$_REQUEST[dtcadfim]')";
    $selecao=( $_REQUEST['ceplanodesaude']!='TODOS' ) ? $selecao." AND B.ceplanodesaude='$_REQUEST[ceplanodesaude]'" : $selecao ;
    $selecao=( $_REQUEST['cefuncionario']!='TODOS' ) ? $selecao." AND B.cefuncionario='$_REQUEST[cefuncionario]'" : $selecao ;
    $finaldecomando=$selecao." ORDER BY $_REQUEST[ordem]";
    $cmdsql='SELECT B.*,
                    D.txnomeplano,
                    L.txnomefunc
                    FROM funcionariosplanos AS B INNER JOIN planosdesaude AS D ON B.ceplanodesaude=D.cpplanodesaude
                                        INNER JOIN funcionarios AS L ON B.cefuncionario=L.cpfuncionario'.$finaldecomando;
   
    $execsql=mysqli_query($link,$cmdsql);
    ($bloco==2) ? montamenu("Funcionários Planos","Listar","$_REQUEST[salto]"):"";
    printf("<table border=1 style=' border-collapse: collapse; '>
            <tr><td valign=top>Código:</td>\n
                <td valign=top>Código do Funcionário.:</td>\n
                <td valign=top>Código do Plano de Saúde.:</td>\n
                <td valign=top>Data da Vinculação.:</td>\n
                <td valign=top>Data do Desligamento.:</td>\n
                <td valign=top>Data do Cadastro do Plano do Funcionário.:</td></tr>\n");
    while ( $le=mysqli_fetch_array($execsql) )
    {
      printf("<tr><td>$le[cpfuncionarioplano]</td>\n
                  <td valign=top>$le[txnomeplano]-($le[ceplanodesaude])</td>\n
                  <td valign=top>$le[txnomefunc]-($le[cefuncionario])</td>\n
                  <td valign=top>$le[dtvinculacao]</td>\n
                  <td valign=top>$le[dtdesligamento]</td>\n
                  <td valign=top>$le[dtcadfuncplano]</td></tr>\n");
    }
    printf("</table>\n");
    if ( $bloco==2 )
    {
      printf("<form action='./funcionariosplanoslistar.php' method='POST' target='_NEW'>\n");
      printf(" <input type='hidden' name='bloco' value=3>\n");
      printf(" <input type='hidden' name='salto' value='$_REQUEST[salto]'>\n");
      printf("<input type='hidden' name='cefuncionario' value=$_REQUEST[cefuncionario]>\n");
      printf("<input type='hidden' name='ceplanodesaude' value=$_REQUEST[ceplanodesaude]>\n");
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
terminapagina("funcionariosplanos","Listar","funcionariosplanoslistar.php");
?>