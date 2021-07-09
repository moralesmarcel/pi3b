<!--**
 * Trabalho Acadêmico de PI-IIIb
 * @pagina desenvolvida usando framework bootstrap,
 * o código é aberto e o uso é gratuito, porém lembre-se 
 * de conceder os créditos aos desenvolvedores.
 *-->

<?php include_once("conexao.php");
//Verificar se está sendo passado na URL a página atual, senao é atribuido a pagina 
$pagina = (isset($_GET['pagina']))? $_GET['pagina'] : 1;
if(!isset($_GET['pesquisar'])){
	header("Location: index.php");
}else{
	$valor_pesquisar = $_GET['pesquisar'];
}

//Selecionar todos os procedimentos da tabela
$result_procedimentos = "SELECT * FROM procedimentos WHERE nome LIKE '%$valor_pesquisar%'";
$resultado_procedimentos = mysqli_query($conn, $result_procedimentos);

//Contar o total de procedimentos
$total_procedimentos = mysqli_num_rows($resultado_procedimentos);

//Seta a quantidade de procedimentos por pagina
$quantidade_pg = 6;

//calcular o número de pagina necessárias para apresentar os procedimentos
$num_pagina = ceil($total_procedimentos/$quantidade_pg);

//Calcular o inicio da visualizacao
$incio = ($quantidade_pg*$pagina)-$quantidade_pg;

//Selecionar os procedimentos a serem apresentado na página
$result_procedimentos = "SELECT * FROM procedimentos WHERE nome LIKE '%$valor_pesquisar%' limit $incio, $quantidade_pg";
$resultado_procedimentos = mysqli_query($conn, $result_procedimentos);
$total_procedimentos = mysqli_num_rows($resultado_procedimentos);
?>
<html lang="pt-br">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="shortcut icon" href="./imagens/favicon.ico"/>
		<title>MedSUS • Aqui sua dor, não é brincadeira!</title>
		<link href="css/bootstrap.min.css" rel="stylesheet">
	</head>
	<body>
		<div class="container theme-showcase" role="main">
			<div class="page-header">
				<div class="row">
					<div class="col-sm-6 col-md-6">
						<h1>Eletroterapia</h1>
					</div>
					<div class="col-sm-6 col-md-6">
						<form class="form-inline" method="GET" action="pesquisar.php">
							<br/>
							<div class="form-group">
								<label for="exampleInputName2">Pesquisar </label>
								<input type="text" name="pesquisar" class="form-control" id="exampleInputName2" placeholder="Digitar...">
							</div>
							<button type="submit" class="btn btn-primary">Pesquisar</button>
						</form>
					</div>
				</div>
			</div>
			<div class="row">
				<?php while($rows_procedimentos = mysqli_fetch_assoc($resultado_procedimentos)){ ?>
					<div class="col-sm-6 col-md-4">
						<div class="thumbnail">
							<img src="imagens/produto.jpg" alt="...">
							<div class="caption text-center">
								<a href="detalhes.php?id_procedimentos=<?php echo $rows_procedimentos['id']; ?>"><h3><?php echo $rows_procedimentos['nome']; ?></h3></a>
							</div>
						</div>
					</div>
				<?php } ?>
			</div>
			<?php
//Verificar a pagina anterior e posterior
				$pagina_anterior = $pagina - 1;
				$pagina_posterior = $pagina + 1;
			?>
			<nav class="text-center">
				<ul class="pagination">
					<li>
						<?php
						if($pagina_anterior != 0){ ?>
							<a href="pesquisar.php?pagina=<?php echo $pagina_anterior; ?>&pesquisar=<?php echo $valor_pesquisar; ?>" aria-label="Previous">
								<span aria-hidden="true">&laquo;</span>
							</a>
						<?php }else{ ?>
							<span aria-hidden="true">&laquo;</span>
					<?php }  ?>
					</li>
					<?php 

//Apresentar a paginacao
					for($i = 1; $i < $num_pagina + 1; $i++){ ?>
						<li><a href="pesquisar.php?pagina=<?php echo $i; ?>&pesquisar=<?php echo $valor_pesquisar; ?>"><?php echo $i; ?></a></li>
					<?php } ?>
					<li>
						<?php
						if($pagina_posterior <= $num_pagina){ ?>
							<a href="pesquisar.php?pagina=<?php echo $pagina_posterior; ?>&pesquisar=<?php echo $valor_pesquisar; ?>" aria-label="Previous">
								<span aria-hidden="true">&raquo;</span>
							</a>
						<?php }else{ ?>
							<span aria-hidden="true">&raquo;</span>
					<?php }  ?>
					</li>
				</ul>
			</nav>
		</div>
		
		
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		<!-- Include all compiled plugins (below), or include individual files as needed -->
		<script src="js/bootstrap.min.js"></script>
	</body>
</html>