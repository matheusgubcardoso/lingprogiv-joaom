<?php
function mostraregistro($CP,$acao,$limpa,$volta1,$volta2,$sair)
{ 
    global $link;
    $cmdsql="SELECT feitospor.*, oficinas.txnomeoficina, servicos.txnomeservico
                    FROM oficinas INNER JOIN feitospor ON oficinas.cpoficina=feitospor.ceoficina
                                      INNER JOIN servicos ON feitospor.ceservico=servicos.cpservico
                    WHERE cpfeitospor ='$CP'";
  
    $execcmd=mysqli_query($link,$cmdsql);
    $registro=mysqli_fetch_array($execcmd);
    
    printf("<table>\n");
    printf("<tr><td>Código:</td>     <td>$registro[cpfeitospor]</td></tr>\n");
    printf("<tr><td>Código da Oficina:</td><td>$registro[txnomeoficina]-($registro[ceoficina])</td></tr>\n");
    printf("<tr><td>Código do Serviço:</td>    <td>$registro[txnomeservico]-($registro[ceservico])</td></tr>\n");
    printf("<tr><td>Descrição:</td>     <td>$registro[txdescricaocomplementar]</td></tr>\n");
    printf("<tr><td>Data do Cadastro:</td>    <td>$registro[dtcadfeitospor]</td></tr>\n");
    printf("<tr><td></td>            <td>");

    botoes($acao,$limpa,$volta1,$volta2,$sair);
    printf("</td></tr>\n");
    printf("</table>\n");
}
function picklist($acao)
{ 
    Global $link;
    $prg=($acao=="C") ? "feitosporconsultar.php" : (($acao=="A") ? "feitosporalterar.php" : "feitosporexcluir.php" ) ;
    printf("  <form action='./$prg' method='POST'>\n");
    printf("  <input type='hidden' name='bloco' value='2'>\n");
    printf("  <input type='hidden' name='salto' value='$_REQUEST[salto]'>\n");
   
    $cmdsql="SELECT feitospor.cpfeitospor, feitospor.ceoficina, oficinas.txnomeoficina, feitospor.ceservico, servicos.txnomeservico, feitospor.dtcadfeitospor
                    FROM oficinas INNER JOIN feitospor ON oficinas.cpoficina=feitospor.ceoficina
                                      INNER JOIN servicos ON feitospor.ceservico=servicos.cpservico
                    ORDER BY cpfeitospor";

    $execcmd=mysqli_query($link,$cmdsql);
    printf("<select name='cpfeitospor'>\n");
    $ceespec="";
    while ( $registro=mysqli_fetch_array($execcmd) )
    { 
      if ( $ceespec!=$registro['ceoficina'] )
      {
        if ( $ceespec!="" )
        {
            printf("</optgroup>\n");
        }
        printf("<optgroup label='$registro[txnomeoficina]'>\n");
        $ceespec="$registro[ceoficina]";
          
      }
      printf("<option value='$registro[cpfeitospor]'>$registro[cpfeitospor] - $registro[txnomeservico] - Data Cad.: $registro[dtcadfeitospor]</option>\n"); 
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
  printf("   <button type='submit' formaction='./feitosporincluir.php'>Incluir</button>");
  printf("   <button type='submit' formaction='./feitosporconsultar.php'>Consultar</button>");
  printf("   <button type='submit' formaction='./feitosporalterar.php'>Alterar</button>");
  printf("   <button type='submit' formaction='./feitosporexcluir.php'>Excluir</button>");
  printf("   <button type='submit' formaction='./feitosporlistar.php'>Listar</button>");
  printf("  </form>\n");
  printf(" </div>\n");
  printf(" <titulo>$acao</titulo>");
  printf("</div><br><br><hr>");
}
?>
