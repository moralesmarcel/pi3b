<!--**
 * Trabalho Acadêmico de PI-IIIb
 * @pagina desenvolvida usando framework bootstrap,
 * o código é aberto e o uso é gratuito, porém lembre-se 
 * de conceder os créditos aos desenvolvedores.
 *-->

<?php require_once "headerp.php" ?>
<?php include_once("conexao.php");
$id_procedimentos = $_GET['id_procedimentos'];
$result_procedimentos = "SELECT * FROM procedimentos WHERE id='$id_procedimentos'";
$resultado_procedimentos = mysqli_query($conn, $result_procedimentos);
$row_procedimentos = mysqli_fetch_assoc($resultado_procedimentos);
?>

<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<link rel="shortcut icon" href="/imagens/favicon.ico"/>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>MedSUS • Aqui sua dor, não é brincadeira!</title>
		<link href="css/bootstrap.min.css" rel="stylesheet">
	</head>
	<body>
				<div class="container theme-showcase" role="main">
			<div class="page-header">
				<div class="row">
					<div class="col-sm-8 col-md-8">
						<h1><?php echo $row_procedimentos['nome']; ?></h1>
					</div>
					
				</div>
			</div>

			  <!-- Nav tabs -->
			  <ul class="nav nav-tabs" role="tablist">
				<li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Conteúdo</a></li>
				<li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Equipamento</a></li>
				<li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">Parametros</a></li>
				<li role="presentation"><a href="#settings" aria-controls="settings" role="tab" data-toggle="tab">Restrições</a></li>
				<li role="presentation"><a href="#detalhes" aria-controls="detalhes" role="tab" data-toggle="tab">Intervalo</a></li>
				<li role="presentation"><a href="#tutores" aria-controls="tutores" role="tab" data-toggle="tab">Profissional</a></li>
			  </ul>

			  <!-- Tab panes -->
			  <div class="tab-content">
				<div role="tabpanel" class="tab-pane active" id="home">
					<?php echo $row_procedimentos['conteudo']; ?>
				</div>
				<div role="tabpanel" class="tab-pane" id="profile">
					<?php echo $row_procedimentos['equipamento']; ?>
				</div>
				<div role="tabpanel" class="tab-pane" id="messages">
					<?php echo $row_procedimentos['parametros']; ?>
				</div>
				<div role="tabpanel" class="tab-pane" id="settings">
					<?php echo $row_procedimentos['restricoes']; ?>
				</div>
				<div role="tabpanel" class="tab-pane" id="detalhes">
					<?php echo $row_procedimentos['intervalo']; ?>
				</div>
				<div role="tabpanel" class="tab-pane" id="tutores">
					<?php echo $row_procedimentos['profissional']; ?>
				</div>
			  </div>

			</div>
		</div>
	
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		<!-- Include all compiled plugins (below), or include individual files as needed -->
		<script src="js/bootstrap.min.js"></script>
	</body>
</html>