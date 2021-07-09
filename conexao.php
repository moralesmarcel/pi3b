<!--**
 * Trabalho Acadêmico de PI-IIIb
 * @pagina desenvolvida usando framework bootstrap,
 * o código é aberto e o uso é gratuito, porém lembre-se 
 * de conceder os créditos aos desenvolvedores.
 *-->
 
<?php
	$servidor = "localhost";
	$usuario = "root";
	$senha = "";
	$dbname = "dados";
	
	//Criar a conexão
	$conn = mysqli_connect($servidor, $usuario, $senha, $dbname);
?>