<%-- 
    Document   : listar
    Created on : 01/10/2019, 10:29:45
    Author     : kalebe
--%>

<%@page import="servlet.UsuarioControle"%>  <!-- linha de importaçao que falta acertar o usuarioControle-->
<%@page contentType="text/html" pageEncoding="UTF-8"%> <!-- N/A -->
<%@taglib uri="http://displaytag.sf.net" prefix="display"%> <!-- CHAMANDO O DISIPLAYTAG -->
<jsp:directive.page import="com.ginf.ginffinal.*" /> <!-- linha de importaçao correta ez -->
<jsp:directive.page import="java.util.*" />   <!-- linha de importaçao do java.util ez -->
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Perfil</title>

        <meta charset="UTF-8">

        <meta name="keywords" content="warrior, game, creative, html">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link href="img/favicon.ico" rel="shortcut icon"/>


        <link href="https://fonts.googleapis.com/css?family=Roboto:400,400i,500,500i,700,700i" rel="stylesheet">


        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <link rel="stylesheet" href="css/font-awesome.min.css"/>
        <link rel="stylesheet" href="css/owl.carousel.css"/>
        <link rel="stylesheet" href="css/style.css"/>
        <link rel="stylesheet" href="css/animate.css"/>



    </head>
    <body>




        <div id="preloder">
            <div class="loader"></div>
        </div>


        <%@include file="menutop.jspf" %>



        <div class="latest-news-section">
            <div class="ln-title">Novas Noticias</div>
            <div class="news-ticker">
                <div class="news-ticker-contant">
                    <div class="nt-item"><span class="new">Novo</span> </div>
                    <div class="nt-item"><span class="strategy">Estrategia</span>   </div>
                    <div class="nt-item"><span class="racing">Corrida</span> </div>
                    <div class="nt-item"><span class="strategy">MMORPG</span> </div>
                    <div class="nt-item"><span class="racing">MOBA</span> </div>
                </div>
            </div>
        </div>

        <section class="page-info-section set-bg" data-setbg="img/page-top-bg/5.jpg">
            <div class="pi-content">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-5 col-lg-6 text-white">
                            <h2>Perfil</h2>
                            <p></p>
                        </div>
                    </div>
                </div>
            </div>
        </section>




        <section class="page-section spad contact-page">
            <div class="container">


                <div class="col-lg-8">
                    <div class="contact-form-warp">
                        <h4 class="comment-title">Seus Dados</h4>
                        <form class="comment-form">
                            <div class="row">

                                <%
                                    byte[] imagem = usuario.getFoto();
                                    String encodedImage = Base64.getEncoder().encodeToString(imagem);

                                %>

                                <center>
                                    <div style="padding: 10px 10px 10px 10px;">

                                        <img src="data:image/png;base64,<%=encodedImage%>" width='300' height='300'>
                                        
                                        <br>
                                        <br>

                                        Nickname: <%=usuario.getNickname()%><br><br>

                                        Nome: <%=usuario.getNome()%> <br><br>

                                        E-mail: <%=usuario.getEmail()%><br><br>

                                        ID: <%=usuario.getId()%> <br><br>

                                        <a href="cadastro/alterar.jsp?pid=<%=usuario.getId()%>">Editar Perfil</a><br><br>

                                        <a href="index.html">Sair</a><br><br>
                                    </div>
                                </center>


                            </div>
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="footer-top-section">
    <div class="container">


        <footer class="footer-section">
            <div class="container">
                <ul class="footer-menu">
                    <li><a href="index.jsp">Inicio</a></li>
                    <li><a href="review.jsp">Games</a></li>
                    <li><a href="categories.jsp">Videos</a></li>

                    <li><a href="contact.jsp">Contato</a></li>
                </ul>
                <p class="copyright">
                    &copy;<script>document.write(new Date().getFullYear());</script> GINF Corporation <i class="fa fa-heart-o" aria-hidden="true"></i> <a href="" target="_blank"></a>
                </p>
            </div>
        </footer>

        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/jquery.marquee.min.js"></script>
        <script src="js/main.js"></script>



        </body>
        </html>