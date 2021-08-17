<?php

require_once("../../fncs/toolskit.php");

require_once("./bibliografiasfuncoes.php");

$salto=( ISSET($_REQUEST['salto']) ) ? $_REQUEST['salto'] : 1;

iniciapagina(TRUE,"Bibliografias","Abertura");
montamenu("Bibliografias","Abertura",$salto);

printf("Este sistema apresenta o menu de opções de funcionalidades no topo da tela.<br>\n");
printf("Este menu estará sempre disponível, menos na emissão da listagem para impressão.<br><br>\n");
printf("Este sistema foi desenvolvido como trabalho na disciplina de Linguagem de Programação - Web<br>\n");
printf("<table>\n");
printf("<tr><td valign=top>Dados do Desenvolvedor:</td></tr>\n");
printf("<tr><td>Nome:</td><td>Matheus Gustavo Bertaglia Cardoso</td></tr>\n");
printf("<tr><td>Matrícula:</td><td>0210481922001</td></tr>\n");
printf("<tr><td>Turno:</td><td>Tarde</td></tr>\n");
printf("</table>\n");

terminapagina("bibliografias","Bibliografias","bibliografias.php");
?>
