<?php
function mostraregistro($CP,$acao,$limpa,$volta1,$volta2,$sair)
{ 
    global $link;
    $cmdsql="SELECT funcionariosplanos.*, funcionarios.txnomefunc, funcionarios.txsobrenomefunc, planosdesaude.txnomeplano, planosdesaude.txrazaosocial
                    FROM funcionarios INNER JOIN funcionariosplanos ON funcionarios.cpfuncionario=funcionariosplanos.cefuncionario
                                      INNER JOIN planosdesaude ON funcionariosplanos.ceplanodesaude=planosdesaude.cpplanodesaude
                    WHERE cpfuncionarioplano ='$CP'";
  
    $execcmd=mysqli_query($link,$cmdsql);
    $registro=mysqli_fetch_array($execcmd);
    
    printf("<table>\n");
    printf("<tr><td>Código:</td>     <td>$registro[cpfuncionarioplano]</td></tr>\n");
    printf("<tr><td>Código do Funcionário:</td><td>$registro[txnomefunc]-($registro[cefuncionario])</td></tr>\n");
    printf("<tr><td>Código do Plano de Saúde:</td>    <td>$registro[txnomeplano]-($registro[ceplanodesaude])</td></tr>\n");
    printf("<tr><td>Data da Vinculação:</td>    <td>$registro[dtvinculacao]</td></tr>\n");
    printf("<tr><td>Data do Desligamento:</td>    <td>$registro[dtdesligamento]</td></tr>\n");
    printf("<tr><td>Data do Cadastro do Plano do Funcionário:</td>   <td>$registro[dtcadfuncplano]</td></tr>\n");
    printf("<tr><td></td>            <td>");

    botoes($acao,$limpa,$volta1,$volta2,$sair);
    printf("</td></tr>\n");
    printf("</table>\n");
}
function picklist($acao)
{ 
    Global $link;
    $prg=($acao=="C") ? "funcionariosplanosconsultar.php" : (($acao=="A") ? "funcionariosplanosalterar.php" : "funcionariosplanosexcluir.php" ) ;
    printf("  <form action='./$prg' method='POST'>\n");
    printf("  <input type='hidden' name='bloco' value='2'>\n");
    printf("  <input type='hidden' name='salto' value='$_REQUEST[salto]'>\n");
   
    $cmdsql="SELECT funcionariosplanos.cpfuncionarioplano, funcionariosplanos.cefuncionario, funcionarios.txnomefunc, funcionarios.txsobrenomefunc,funcionariosplanos.ceplanodesaude, planosdesaude.txnomeplano, planosdesaude.txrazaosocial
                    FROM funcionarios INNER JOIN funcionariosplanos ON funcionarios.cpfuncionario=funcionariosplanos.cefuncionario
                                      INNER JOIN planosdesaude ON funcionariosplanos.ceplanodesaude=planosdesaude.cpplanodesaude
                    ORDER BY txnomeplano";

    $execcmd=mysqli_query($link,$cmdsql);
    printf("<select name='cpfuncionarioplano'>\n");
    $ceespec="";
    while ( $registro=mysqli_fetch_array($execcmd) )
    { 
      if ( $ceespec!=$registro['ceplanodesaude'] )
      {
        if ( $ceespec!="" )
        {
            printf("</optgroup>\n");
        }
        printf("<optgroup label='$registro[txnomeplano]'>\n");
        $ceespec="$registro[ceplanodesaude]";
          
      }
      printf("<option value='$registro[cpfuncionarioplano]'>$registro[txnomefunc] $registro[txsobrenomefunc]</option>\n"); 
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
  printf("   <button type='submit' formaction='./funcionariosplanosincluir.php'>Incluir</button>");
  printf("   <button type='submit' formaction='./funcionariosplanosconsultar.php'>Consultar</button>");
  printf("   <button type='submit' formaction='./funcionariosplanosalterar.php'>Alterar</button>");
  printf("   <button type='submit' formaction='./funcionariosplanosexcluir.php'>Excluir</button>");
  printf("   <button type='submit' formaction='./funcionariosplanoslistar.php'>Listar</button>");
  printf("  </form>\n");
  printf(" </div>\n");
  printf(" <titulo>$acao</titulo>");
  printf("</div><br><br><hr>");
}
?>
