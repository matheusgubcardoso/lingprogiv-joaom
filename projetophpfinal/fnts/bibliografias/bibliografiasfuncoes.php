<?php
function mostraregistro($CP,$acao,$limpa,$volta1,$volta2,$sair)
{ 
    global $link;
    $cmdsql="SELECT bibliografias.*, disciplinas.txnome, livros.txtituloacervo
                    FROM disciplinas INNER JOIN bibliografias ON disciplinas.cpdisciplina=bibliografias.cedisciplina
                                      INNER JOIN livros ON bibliografias.celivro=livros.cplivro
                    WHERE cpbibliografia ='$CP'";
  
    $execcmd=mysqli_query($link,$cmdsql);
    $registro=mysqli_fetch_array($execcmd);
    
    printf("<table>\n");
    printf("<tr><td>Código:</td>     <td>$registro[cpbibliografia]</td></tr>\n");
    printf("<tr><td>Código da Disciplina:</td><td>$registro[txnome]-($registro[cedisciplina])</td></tr>\n");
    printf("<tr><td>Código do Livro:</td>    <td>$registro[txtituloacervo]-($registro[celivro])</td></tr>\n");
    printf("<tr><td>Tipo:</td>     <td>$registro[aotipo]</td></tr>\n");
    printf("<tr><td>Término:</td>    <td>$registro[dtadocaodolivro]</td></tr>\n");
    printf("<tr><td>Cadastro:</td>   <td>$registro[dtcadbibliografia] - datas na forma Ano-Mês-Dia</td></tr>\n");
    printf("<tr><td></td>            <td>");

    botoes($acao,$limpa,$volta1,$volta2,$sair);
    printf("</td></tr>\n");
    printf("</table>\n");
}
function picklist($acao)
{ 
    Global $link;
    $prg=($acao=="C") ? "bibliografiasconsultar.php" : (($acao=="A") ? "bibliografiasalterar.php" : "bibliografiasexcluir.php" ) ;
    printf("  <form action='./$prg' method='POST'>\n");
    printf("  <input type='hidden' name='bloco' value='2'>\n");
    printf("  <input type='hidden' name='salto' value='$_REQUEST[salto]'>\n");
   
    $cmdsql="SELECT bibliografias.cpbibliografia, bibliografias.cedisciplina, disciplinas.txnome, bibliografias.celivro, livros.txtituloacervo
                    FROM disciplinas INNER JOIN bibliografias ON disciplinas.cpdisciplina=bibliografias.cedisciplina
                                      INNER JOIN livros ON bibliografias.celivro=livros.cplivro
                    ORDER BY txnome, txtituloacervo";

    $execcmd=mysqli_query($link,$cmdsql);
    printf("<select name='cpbibliografia'>\n");
    $ceespec="";
    while ( $registro=mysqli_fetch_array($execcmd) )
    { 
      if ( $ceespec!=$registro['cedisciplina'] )
      {
        if ( $ceespec!="" )
        {
            printf("</optgroup>\n");
        }
        printf("<optgroup label='$registro[txnome]'>\n");
        $ceespec="$registro[cedisciplina]";
          
      }
      printf("<option value='$registro[cpbibliografia]'>$registro[txnome]-$registro[txtituloacervo]</option>\n"); 
    }
    printf("</optgroup>\n");
    printf("</select>\n");
    $bt=($acao=="C") ? "Consultar" : (($acao=="A") ? "Alterar" : "Excluir") ;
    botoes("$bt",TRUE,$_REQUEST['salto']-2,$_REQUEST['salto']-1,"$_REQUEST[salto]");
    printf("  </form>\n");
}
function montamenu($tabela,$acao,$salto)
{
  printf("<div>");
  printf(" <div class='menu'>");
  printf("  <form action='' method='POST'>\n");
  printf("   <input type='hidden' name='salto' value='$salto'>\n");
  printf("   <negrito>$tabela:</negrito>");
  printf("   <button type='submit' formaction='./bibliografiasincluir.php'>Incluir</button>");
  printf("   <button type='submit' formaction='./bibliografiasconsultar.php'>Consultar</button>");
  printf("   <button type='submit' formaction='./bibliografiasalterar.php'>Alterar</button>");
  printf("   <button type='submit' formaction='./bibliografiasexcluir.php'>Excluir</button>");
  printf("   <button type='submit' formaction='./bibliografiaslistar.php'>Listar</button>");
  printf("  </form>\n");
  printf(" </div>\n");
  printf(" <titulo>$acao</titulo>");
  printf("</div><br><br><hr>");
}
?>
