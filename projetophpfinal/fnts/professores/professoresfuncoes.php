<?php
function mostraregistro($CP,$acao,$limpa,$volta1,$volta2,$sair)
{ 
    global $link;
    $cmdsql="SELECT professores.*, escolas.txnomeescola, logradouros.txnomelogradouro
                    FROM escolas INNER JOIN professores ON escolas.cpescola=professores.ceescola
                                      INNER JOIN logradouros ON professores.celogradouro=logradouros.cplogradouro
                    WHERE cpprofessor ='$CP'";
  
    $execcmd=mysqli_query($link,$cmdsql);
    $registro=mysqli_fetch_array($execcmd);
    
    printf("<table>\n");
    printf("<tr><td>Código:</td>     <td>$registro[cpprofessor]</td></tr>\n");
    printf("<tr><td>Nome do professor:</td>     <td>$registro[txnomeprofessor]</td></tr>\n");
    printf("<tr><td>Escola:</td><td>$registro[txnomeescola]-($registro[ceescola])</td></tr>\n");
    printf("<tr><td>Logradouro:</td>    <td>$registro[txnomelogradouro]-($registro[celogradouro])</td></tr>\n");
    printf("<tr><td>Complemento:</td>     <td>$registro[txcomplemento]</td></tr>\n");
    printf("<tr><td>Telefone:</td>     <td>$registro[nutelefone]</td></tr>\n");
    printf("<tr><td>Bairro:</td>     <td>$registro[txbairro]</td></tr>\n");
    printf("<tr><td>Cep:</td>     <td>$registro[nucep]</td></tr>\n");
    printf("<tr><td>Data de Nascimento:</td>    <td>$registro[dtnascimento]</td></tr>\n");
    printf("<tr><td>Data de Cadastro do Professor:</td>   <td>$registro[dtcadprofessor]</td></tr>\n");
    printf("<tr><td></td>            <td>");

    botoes($acao,$limpa,$volta1,$volta2,$sair);
    printf("</td></tr>\n");
    printf("</table>\n");
}
function picklist($acao)
{ 
    Global $link;
    $prg=($acao=="C") ? "professoresconsultar.php" : (($acao=="A") ? "professoresalterar.php" : "professoresexcluir.php" ) ;
    printf("  <form action='./$prg' method='POST'>\n");
    printf("  <input type='hidden' name='bloco' value='2'>\n");
    printf("  <input type='hidden' name='salto' value='$_REQUEST[salto]'>\n");
   
    $cmdsql="SELECT professores.txnomeprofessor, professores.cpprofessor, professores.ceescola, escolas.txnomeescola, professores.celogradouro, logradouros.txnomelogradouro
                    FROM escolas INNER JOIN professores ON escolas.cpescola=professores.ceescola
                                      INNER JOIN logradouros ON professores.celogradouro=logradouros.cplogradouro
                    ORDER BY txnomeescola";

    $execcmd=mysqli_query($link,$cmdsql);
    printf("<select name='cpprofessor'>\n");
    $ceespec="";
    while ( $registro=mysqli_fetch_array($execcmd) )
    { 
      if ( $ceespec!=$registro['ceescola'] )
      {
        if ( $ceespec!="" )
        {
            printf("</optgroup>\n");
        }
        printf("<optgroup label='$registro[txnomeescola]'>\n");
        $ceespec="$registro[ceescola]";
          
      }
      printf("<option value='$registro[cpprofessor]'>$registro[txnomeprofessor] - Cód. Professor ($registro[cpprofessor])</option>\n"); 
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
  printf("   <button type='submit' formaction='./professoresincluir.php'>Incluir</button>");
  printf("   <button type='submit' formaction='./professoresconsultar.php'>Consultar</button>");
  printf("   <button type='submit' formaction='./professoresalterar.php'>Alterar</button>");
  printf("   <button type='submit' formaction='./professoresexcluir.php'>Excluir</button>");
  printf("   <button type='submit' formaction='./professoreslistar.php'>Listar</button>");
  printf("  </form>\n");
  printf(" </div>\n");
  printf(" <titulo>$acao</titulo>");
  printf("</div><br><br><hr>");
}
?>
