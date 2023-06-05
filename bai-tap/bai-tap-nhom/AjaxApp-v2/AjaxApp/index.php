<?php
    include('load_data_select.php');
    //$sql = mysqli_query($ketnoisql, "SELECT * FROM thuonghieu ORDER BY id_thuonghieu ASC");
?>


<!DOCTYPE html>
<html>
     <head>
          <meta charset = "utf-8">

          <!-- BootstrapCDN -->
          <!-- CSS -->
          <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
          
          <!-- JavaScript -->
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
          <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
          <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
     </head>

     
     <body>
          <br /><br />
          <div class="container">
               <h3>
                    <select name="thuonghieu" id="hien_thuonghieu">
                         <option value="">Hiện tất cả các sản phẩm</option>

                         <?php
                              echo hien_thuonghieu($ketnoisql);
                         ?>
                    </select>

                    <br /><br />

                    <div class="row" id="hien_sanpham">
                         <?php
                              echo hien_sanpham($ketnoisql);
                         ?>
                    </div>
               </h3>
          </div>
     </body>
</html>


<script>
$(document).ready(function()
{
     $('#hien_thuonghieu').change(function()
     {
          var id_thuong_hieu = $(this).val();
          $.ajax(
               {
                    url:"load_data.php",
                    method:"POST",
                    data:{id_thuonghieu:id_thuong_hieu},
                    success:function(data)
                    {
                         $('#hien_sanpham').html(data);
                    }
               });
     });
});
</script>