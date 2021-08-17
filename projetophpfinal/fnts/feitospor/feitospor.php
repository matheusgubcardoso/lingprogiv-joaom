<?php

require_once("../../fncs/toolskit.php");

require_once("./feitosporfuncoes.php");

$salto=( ISSET($_REQUEST['salto']) ) ? $_REQUEST['salto'] : 1;

iniciapagina(TRUE,"Feitos Por","Abertura");
montamenu("Feitos Por","Abertura",$salto);

printf("Este sistema apresenta o menu de opções de funcionalidades no topo da tela.<br>\n");
printf("Este menu estará sempre disponível, menos na emissão da listagem para impressão.<br><br>\n");
printf("Este sistema foi desenvolvido como trabalho na disciplina de Linguagem de Programação - Web<br>\n");
printf("<table>\n");
printf("<tr><td valign=top>Dados do Desenvolvedor:</td></tr>\n");
printf("<tr><td>Nome:</td><td>Thatiane Garcia de Sousa</td></tr>\n");
printf("<tr><td>Matrícula:</td><td>210481922004</td></tr>\n");
printf("<tr><td>Turno:</td><td>Tarde</td></tr>\n");
printf("</table>\n");

terminapagina("feitospor","Feitos Por","feitospor.php");
?>
