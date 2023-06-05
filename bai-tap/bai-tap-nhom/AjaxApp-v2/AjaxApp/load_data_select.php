<?php
     //load_data_select.php
     $ketnoisql = mysqli_connect("localhost", "root", "", "AjaxApp");


     function hien_thuonghieu($ketnoisql)
     {  
          $xuat = '';
          $sql = "SELECT * FROM thuonghieu";
          $ketqua = mysqli_query($ketnoisql, $sql);
          while($row = mysqli_fetch_array($ketqua))
          {
               $xuat .= '<option value="'.$row["id_thuonghieu"].'">'.$row["ten_thuonghieu"].'</option>';
          }
          return $xuat;
     }

     function hien_sanpham($ketnoisql)
     {
          $xuat = '';
          $sql = "SELECT * FROM sanpham";
          $ketqua = mysqli_query($ketnoisql, $sql);
          while($row = mysqli_fetch_array($ketqua))
          {
               $xuat .= '<div class="col-md-3">';
               $xuat .= '<div style="border:1px solid #ccc; padding:20px; margin-bottom:20px;">'.$row["ten_sanpham"].'';
               $xuat .=     '</div>';
               $xuat .=     '</div>';
          }
          return $xuat;
     }
?>
 