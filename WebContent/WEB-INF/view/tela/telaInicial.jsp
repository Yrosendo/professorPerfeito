<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<meta charset="ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">


<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/bootstrap/css/bootstrap.min.css" />
<script type="text/javascript"src="<%=request.getContextPath()%>/resources/bootstrap/js/bootstrap.min.js"></script>


<title>Professor Perfeito</title>
<link rel="icon" href="../resources/img/android-icon-48x48.png">

<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/css?family=Open+Sans|Candal|Alegreya+Sans">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/bootstrap/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/bootstrap/css/imagehover.min.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/bootstrap/css/estilos.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/bootstrap/css/estilos1.css">
</head>

<body>
	<c:import url="menu.jsp" />

	<!--BANNER-->
	<div class="banner">
		<div class="bg-color">
			<div class="container">
				<div class="row">
					<div class="banner-text text-center">
						<div class="text-border">
							<a href="#" id="text-dec1"><h2 class="text-dec">DAR AULAS</h2></a>
						</div>
						<div class="intro-para text-center quote">
							<p class="big-text acessibilidade" id='p1'>Encontre e
								converse gratuitamente com professores particulares de todo o
								Brasil</p>
						</div>
						<a href="#faculity-member" class="mouse-hover">
					<div class="mouse " data-toggle="tooltip" data-placement="top" title="Listar professor"></div>
						</a>
					</div>
					<!-- BARRA DE BUSCAR-->
					<div class="col-md-12">
						<div class="cta-2-form text-center">
							<form action="#" method="post" id="workshop-newsletter-form">
								<input name="" placeholder="Qual mat�ria deseja aprende?"
									type="email"> <input class="cta-2-form-submit-btn"
									value="Buscar" type="submit">
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--CORPO-->
	<!--PROFESSORES-->
	<section id="faculity-member" class="section-padding">
		<div class="container">
			<div class="row">
				<div class="header-section text-center">
					<h2>Encontre um professor</h2>
					<p>Converse gratuitamente com nossos professores e escolha o
						seu preferido.</p>
					<hr class="bottom-line">
				</div>
				<div class="col-lg-4 col-md-4 col-sm-4">
					<div class="pm-staff-profile-container">
						<div class="pm-staff-profile-image-wrapper text-center">
							<div class="pm-staff-profile-image">
								<img src="../resources/img/mentor.jpg" alt=""
									class="img-thumbnail img-circle" />
							</div>
						</div>
						<div class="pm-staff-profile-details text-center">
							<p class="pm-staff-profile-name">Fernando</p>
							<p class="pm-staff-profile-title">Recife (Pernambuco)</p>

							<p class="pm-staff-profile-bio">Programa��o Web para
								Designers - php, js, css e html. Formando em Eng da Computa��o
								com Empresa na area de desenvolvimento de software a 3 anos em
								Recife.</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-4">
					<div class="pm-staff-profile-container">
						<div class="pm-staff-profile-image-wrapper text-center">
							<div class="pm-staff-profile-image">
								<img src="../resources/img/mentor.jpg" alt=""
									class="img-thumbnail img-circle" />
							</div>
						</div>
						<div class="pm-staff-profile-details text-center">
							<p class="pm-staff-profile-name">Carlos</p>
							<p class="pm-staff-profile-title">Jaboat�o dos Guararapes</p>

							<p class="pm-staff-profile-bio">Aprenda PHP do jeito certo,
								sem dor de cabe�a na verdade � muito simples.</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-4">
					<div class="pm-staff-profile-container">
						<div class="pm-staff-profile-image-wrapper text-center">
							<div class="pm-staff-profile-image">
								<img src="../resources/img/mentor.jpg" alt=""
									class="img-thumbnail img-circle" />
							</div>
						</div>
						<div class="pm-staff-profile-details text-center">
							<p class="pm-staff-profile-name">Ronaldo</p>
							<p class="pm-staff-profile-title">Jaboat�o dos Guararapes</p>

							<p class="pm-staff-profile-bio">Professor de desenvolvimento
								web php com frameworks e cms's (aplica��es web e web services).</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- CIDADES -->
	<section id="work-shop" class="section-padding">
		<div class="container">
			<div class="row" id="cidImg">
				<div class="header-section text-center">
					<h2>Aula presencial na sua cidade</h2>
					<hr class="bottom-line">
				</div>
				<div class="col-md-4 col-sm-6">
					<div class="service-box text-center">
						<div class="icon-box">
							<img src="../resources/img/pernambuco.jpg">
						</div>
						<div class="icon-text">
							<h4 class="ser-text">Pernambuco</h4>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6">
					<div class="service-box text-center">
						<div class="icon-box">
							<img src="../resources/img/brasilia.jpg">
						</div>
						<div class="icon-text">
							<h4 class="ser-text">Bras�lia</h4>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6">
					<div class="service-box text-center">
						<div class="icon-box">
							<img src="../resources/img/salvador.jpg">
						</div>
						<div class="icon-text">
							<h4 class="ser-text">Salvador</h4>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--CURSOS-->
	<section id="courses" class="section-padding">
		<div class="container">
			<div class="row">
				<div class="header-section text-center">
					<h2>Aprenda algo novo</h2>
					<p>Voc� j� deve ter ouvido falar que conhecimento � poder e
						isso � realmente verdade, pois quem sabe o que fazer, e como
						fazer, acaba ditando as regras. � por isso que eu sempre refor�o a
						import�ncia de aprender algo novo todos os dias</p>
					<hr class="bottom-line">
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-md-4 col-sm-6 padleft-right">
					<figure class="imghvr-fold-up">
						<img src="../resources/img/ingles.jpg" class="img-responsive">
						<figcaption>
							<h3>Ingl�s</h3>
							<p>Curso de ingl�s online pra quem quer aprender e ter
								resultados r�pidos.</p>
						</figcaption>
						<a href="#"></a>
					</figure>
				</div>
				<div class="col-md-4 col-sm-6 padleft-right">
					<figure class="imghvr-fold-up">
						<img src="../resources/img/Photoshop.jpg" class="img-responsive">
						<figcaption>
							<h3>Photoshop</h3>
							<p>Crie seus melhores trabalhos com os recursos e as
								novidades do Photoshop.</p>
						</figcaption>
						<a href="#"></a>
					</figure>
				</div>
				<div class="col-md-4 col-sm-6 padleft-right">
					<figure class="imghvr-fold-up">
						<img src="../resources/img/portugues.jpg" class="img-responsive">
						<figcaption>
							<h3>L�ngua Portuguesa</h3>
							<p>O curso objetiva fornecer os elementos gramaticais
								indispens�veis � compreens�o da norma culta da L�ngua
								Portuguesa.</p>
						</figcaption>
						<a href="#"></a>
					</figure>
				</div>
				<div class="col-md-4 col-sm-6 padleft-right">
					<figure class="imghvr-fold-up">
						<img src="../resources/img/violao.jpg" class="img-responsive">
						<figcaption>
							<h3>Viol�o</h3>
							<p>Aprenda a tocar viol�o com o curso do Viol�o DeBoa.</p>
						</figcaption>
						<a href="#"></a>
					</figure>
				</div>
				<div class="col-md-4 col-sm-6 padleft-right">
					<figure class="imghvr-fold-up">
						<img src="../resources/img/yoga.jpg" class="img-responsive">
						<figcaption>
							<h3>Yoga</h3>
							<p>Cursos de Yoga, desenvolvidos com professores refer�ncias
								no assunto para que voc� tenha acesso a um conte�do de
								qualidade.</p>
						</figcaption>
						<a href="#"></a>
					</figure>
				</div>
				<div class="col-md-4 col-sm-6 padleft-right">
					<figure class="imghvr-fold-up">
						<img src="../resources/img/course06.jpg" class="img-responsive">
						<figcaption>
							<h3>Fotografia</h3>
							<p>O grande objetivo deste curso � fazer com que nosso aluno
								saia da escola preparado para atuar na �rea da fotografia.</p>
						</figcaption>
						<a href="#"></a>
					</figure>
				</div>
			</div>
		</div>
	</section>
	<!--HISTORICO-->
	<section id="organisations" class="section-padding">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
						<div class="orga-stru">
							<h3>15.000</h3>
							<p>professores</p>
							<i class="fa fa-male"></i>
						</div>
					</div>
					<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
						<div class="orga-stru">
							<h3>5.000</h3>
							<p>alunos satisfeitos</p>
							<i class="fa fa-male"></i>
						</div>
					</div>
					<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
						<div class="orga-stru">
							<h3>1.500</h3>
							<p>mat�rias</p>
							<i class="fa fa-male"></i>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="detail-info">
						<hgroup>
							<h3 class="det-txt">Encontre um professor</h3>
							<h4 class="sm-txt">Converse gratuitamente com nossos
								professores e escolha o seu preferido.</h4>
						</hgroup>
						<p class="det-p">sua aula particular ainda hoje. Os
							professores ir�o te responder com enorme rapidez.</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--COMENTARIO-->
	<section id="testimonial" class="section-padding">
		<div class="container">
			<div class="row">
				<div class="header-section text-center">
					<h2 class="white">tira-duvidas com professores</h2>
					<p class="white">Compartilhe seu conhecimento e aumente sua
						renda. Somos o MAIOR portal de Aulas Particulares do Brasil, s�o
						mais de 160 mil alunos buscando por Professores Particulares.</p>
					<hr class="bottom-line bg-white">
				</div>
				<div class="col-md-6 col-sm-6">
					<div class="text-comment">
						<p class="text-par">"Como fa�o para aprender PHP?"</p>
						<p class="text-name">Fernando - Aluno</p>
						<a href="#"><h5>Respostar 10</h5></a>
					</div>
				</div>
				<div class="col-md-6 col-sm-6">
					<div class="text-comment">
						<p class="text-par">"Quero aprender a fazer app?"</p>
						<p class="text-name">Carlos - Aluno</p>
						<a href="#"><h5>Respostar 10</h5></a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--BUSCAR-->
	<section id="cta-2">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<h2 class="text-center">Encontre o professor perfeito</h2>
					<div class="cta-2-form text-center">
						<form action="#" method="post" id="workshop-newsletter-form">
							<input name="" placeholder="Ex: matem�tica" type="email">
							<input class="cta-2-form-submit-btn" value="Buscar" type="submit">
						</form>
						<p>Aprenda tudo o que quiser!</p>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!--FOOTER -->
	<c:import url="footer.jsp" />

	<script
		src="<%=request.getContextPath()%>/resources/bootstrap/js/jquery.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/bootstrap/js/jquery.easing.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/bootstrap/js/custom.js"></script>
</body>
</html>