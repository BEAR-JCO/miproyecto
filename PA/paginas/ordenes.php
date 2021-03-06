<?php
  include("ing.php");
  $consulta="SELECT * FROM producto1";
  $consult="SELECT * FROM producto2";
?>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="dashboard.css" rel="stylesheet">
  </head>
  <body>
    
    <header class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
      <a class="navbar-brand col-md-3 col-lg-2 me-0 px-3" href="inicio.html">DEACERO</a>
      <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <!--<input class="form-control form-control-dark w-100" type="text" placeholder="Search" aria-label="Search">-->
      <div class="navbar-nav">
        <div class="nav-item text-nowrap">
          <a class="nav-link px-3" href="index.html">Sign out</a>
        </div>
      </div>
    </header>

    <div class="container-fluid">
      <div class="row">
        <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
          <div class="position-sticky pt-3">
            <ul class="nav flex-column">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="inicio.html">
                  <span data-feather="home"></span>
                  Home
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="ordenes.php">
                  <span data-feather="file"></span>
                  Orders
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="productos.html">
                  <span data-feather="shopping-cart"></span>
                  Products
                </a>
              </li>
              
              
              
            </ul>

            <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
              <span>Saved reports</span>
              <a class="link-secondary" href="#" aria-label="Add a new report">
                <span data-feather="plus-circle"></span>
              </a>
            </h6>
            <ul class="nav flex-column mb-2">
              <li class="nav-item">
                <a class="nav-link" href="mes.html">
                  <span data-feather="file-text"></span>
                  Current month
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="Lastquarter.html">
                  <span data-feather="file-text"></span>
                  Last quarter
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="Socialengagement.html">
                  <span data-feather="file-text"></span>
                  Social engagement
                </a>
              </li>
            </ul>
          </div>
        </nav>

        
        <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
          <h1 class="text-center">Primer turno</h1>
          <div class="table-responsive-sm">
            <table class="table">
              <thead>
                <tr>
                  <th scope="col">#</th>
                  <th scope="col">Material</th>
                  <th scope="col">Cantidad</th>
                  <th scope="col">Costo Total</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  
                  <?php $resultado = mysqli_query($conexion, $consulta);
                  while($row=mysqli_fetch_assoc($resultado)) {?>     
                    <tr>
                      <th ><?php echo $row["id_producto"];?></th>
                      <td ><?php echo $row["Np"];?></td>
                      <td ><?php echo $row["cantidad"];?></td>
                      <td ><?php echo $row["costo"];?></td>
                    </tr>
                    
                  <?php } ?>
                  
                </tr>
              </tbody>
            </table>
          </div>

          <h1 class="text-center">Segundo turno</h1>
          <div class="table-responsive-sm">
            <table class="table">
              <thead>
                <tr>
                  <th scope="col">#</th>
                  <th scope="col">Material</th>
                  <th scope="col">Cantidad</th>
                  <th scope="col">Costo Total</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  
                  <?php $resultado = mysqli_query($conexion, $consult);
                  while($row=mysqli_fetch_assoc($resultado)) {?>     
                    <tr>
                      <th ><?php echo $row["id_producto"];?></th>
                      <td ><?php echo $row["Np"];?></td>
                      <td ><?php echo $row["cantidad"];?></td>
                      <td ><?php echo $row["costo"];?></td>
                    </tr>
                    
                  <?php } ?>
                  
                </tr>
              </tbody>
            </table>
          </div>
          
         


        </main>
      
        
      </div>
    </div>
    

    <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>

      <script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js" integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous"></script><script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js" integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha" crossorigin="anonymous"></script><script src="dashboard.js"></script>
  </body>
</html>
