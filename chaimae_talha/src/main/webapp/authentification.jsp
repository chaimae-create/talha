<%@page import="models.Personne"%>
<%@page import="models.Role"%>
 <%Personne p = (Personne)session.getAttribute("personne");  
if(p!=null){
	
    if(p.getRole().equals(Role.ADMIN)) {
		response.sendRedirect("http://localhost:8080/chaimae_talha/admin");
	}else {
		response.sendRedirect("http://localhost:8080/chaimae_talha/etudiant");}
		}
else{  %>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>Authentification </title>
   
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
      <meta http-equiv="X-UA-Compatible" content="IE=edge" />

      
     
  </head>

  <body themebg-pattern="theme1">
  <!-- Pre-loader start -->
  <div class="theme-loader">
      <div class="loader-track">
          <div class="preloader-wrapper">
              <div class="spinner-layer spinner-blue">
                  <div class="circle-clipper left">
                      <div class="circle"></div>
                  </div>
                  <div class="gap-patch">
                      <div class="circle"></div>
                  </div>
                  <div class="circle-clipper right">
                      <div class="circle"></div>
                  </div>
              </div>
              <div class="spinner-layer spinner-red">
                  <div class="circle-clipper left">
                      <div class="circle"></div>
                  </div>
                  <div class="gap-patch">
                      <div class="circle"></div>
                  </div>
                  <div class="circle-clipper right">
                      <div class="circle"></div>
                  </div>
              </div>

              <div class="spinner-layer spinner-yellow">
                  <div class="circle-clipper left">
                      <div class="circle"></div>
                  </div>
                  <div class="gap-patch">
                      <div class="circle"></div>
                  </div>
                  <div class="circle-clipper right">
                      <div class="circle"></div>
                  </div>
              </div>

              <div class="spinner-layer spinner-green">
                  <div class="circle-clipper left">
                      <div class="circle"></div>
                  </div>
                  <div class="gap-patch">
                      <div class="circle"></div>
                  </div>
                  <div class="circle-clipper right">
                      <div class="circle"></div>
                  </div>
              </div>
          </div>
      </div>
  </div>
  <!-- Pre-loader end -->

    <section class="login-block">
        <!-- Container-fluid starts -->
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <!-- Authentication card start -->

                        <form class="md-float-material form-material" action="authentification" method="post">
                           
                            <div class="auth-box card">
                                <div class="card-block">
                                    <div class="row m-b-20">
                                        <div class="col-md-12">
                                            <h3 class="text-center">S'AUTHENTIFIER</h3>
                                        </div>
                                    </div>
                                    <div class="form-group form-primary">
                                        <input type="email" name="email" class="form-control">
                                        <span class="form-bar"></span>
                                        <label class="float-label">Votre adresse email</label>
                                    </div>
                                    <div class="form-group form-primary">
                                        <input type="password" name="mdp" class="form-control">
                                        <span class="form-bar"></span>
                                        <label class="float-label">Mot de passe</label>
                                    </div>

                                    <div class="row m-t-30">
                                        <div class="col-md-12">
                                            <input type="submit" class="btn btn-primary btn-md btn-block waves-effect waves-light text-center m-b-20" value="S'authentifier">
                                        </div>
                                    </div>
                                    <hr/>
                                  
                                </div>
                            </div>
                        </form>
                </div>
            </div>
        </div>
    </section>

<script type="text/javascript" src="assets/js/jquery/jquery.min.js "></script>
<script type="text/javascript" src="assets/js/jquery-ui/jquery-ui.min.js "></script>
<script type="text/javascript" src="assets/js/popper.js/popper.min.js"></script>
<script type="text/javascript" src="assets/js/bootstrap/js/bootstrap.min.js "></script>
<!-- waves js -->
<script src="assets/pages/waves/js/waves.min.js"></script>
<!-- jquery slimscroll js -->
<script type="text/javascript" src="assets/js/jquery-slimscroll/jquery.slimscroll.js"></script>
<script type="text/javascript" src="assets/js/common-pages.js"></script>
</body>

</html>
<%}%>