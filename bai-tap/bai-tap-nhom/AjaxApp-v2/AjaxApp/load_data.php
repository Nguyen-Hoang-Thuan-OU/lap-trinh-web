<?php
     //load_data.php
     $ketnoisql = mysqli_connect("localhost", "root", "", "AjaxApp");
     $xuat = '';

     if(isset($_POST["id_thuonghieu"]))
     {
          if($_POST["id_thuonghieu"] != '')
          {
               $sql = "SELECT * FROM sanpham WHERE id_thuonghieu = '".$_POST["id_thuonghieu"]."'";
          }
          else
          {
               $sql = "SELECT * FROM sanpham";
          }

          $ketqua = mysqli_query($ketnoisql, $sql);
          while($row = mysqli_fetch_array($ketqua))
          {
               $xuat .= '<div class="col-md-3"><div style="border:1px solid #ccc; padding:20px; margin-bottom:20px;">'.$row["ten_sanpham"].'</div></div>';
          }
          echo $xuat;
     }
?>
