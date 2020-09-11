<?php 
foreach ($query2->result() as $row){
  $id                 = $row->id;
  $tgl_mulai          = $row->tgl_mulai;
  $tgl_selesai        = $row->tgl_selesai;
}
?>
<script>
// Set the date we're counting down to
var countDownDate = new Date('<?=$tgl_selesai; ?>').getTime();

// Update the count down every 1 second
var x = setInterval(function() {

    // Get todays date and time
    var now = new Date().getTime();
    
    // Find the distance between now an the count down date
    var distance = countDownDate - now;
    
    // Time calculations for days, hours, minutes and seconds
    var days = Math.floor(distance / (1000 * 60 * 60 * 24));
    var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
    var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
    var seconds = Math.floor((distance % (1000 * 60)) / 1000);
    
    // Output the result in an element with id="demo"
    document.getElementById("demo").innerHTML = days + "d " + hours + "h "
    + minutes + "m " + seconds + "s ";
    
    // If the count down is over, write some text 
    if (distance < 0) {
        clearInterval(x);
        alert("Waktu Anda telah habis");
        document.location.href="<?=base_url().$link?>";
    }
}, 1000);
</script>
<section class="content">
  <div class="row">
	  <div class="col-md-12">
      <!-- general form elements -->
        <div class="box box-primary">
          <div class="box-header with-border">
             <h3 class="box-title">Soal Pretest</h3>
          </div><!-- /.box-header -->
          <div class="box-body">
            <div class="alert alert-danger">
              Waktu mengerjakan tinggal : <div id="demo"></div>
              </div>
                    <?=form_open_multipart($link, array('id' => 'formsoal')); ?>
                    <?php 
                    $hasil=$query;
                    $jumlah=$query->num_rows($hasil);
                    $urut=0;
                    foreach ($query->result() as $row)
                    { 
                      echo '<input type="hidden" name="id[]" value='.$row->id.'>';
                      echo '<input type="hidden" name="id_kategori[]" value='.$row->id_kategori.'>';
                      echo '<div class="steep well">';
                      if (!empty($row->gambar)) {
                        echo '
                        <table>
                          <tbody>
                            <tr>
                              <td colspan="2"><img src="'.base_url('assets/upload').'/soal/'.$row->gambar.' width="200" hight="200"></td>
                            </tr>
                            <tr>
                                <td><p>'.$urut=$urut+1; echo '.&nbsp;</p></td>
                                <td>'.$row->soal.'</td>
                            </tr>
                            <tr>
                                <td><input name="pilihan['.$row->id.']" type="radio" value="A">&nbsp;</td>
                                <td>A. '.$row->opsi_a.'</td>
                            </tr>
                            <tr>
                                <td><input name="pilihan['.$row->id.']" type="radio" value="B">&nbsp;</td>
                                <td>B. '.$row->opsi_b.'</td>
                            </tr>
                            <tr>
                                <td><input name="pilihan['.$row->id.']" type="radio" value="C">&nbsp;</td>
                                <td>C. '.$row->opsi_c.'</td>
                            </tr>
                            <tr>
                              <td><input name="pilihan['.$row->id.']" type="radio" value="D">&nbsp;</td>
                                <td>D. '.$row->opsi_d.'</td>
                            </tr>
                            <tr>
                                <td><input name="pilihan['.$row->id.']" type="radio" value="E">&nbsp;</td>
                                <td>E. '.$row->opsi_e.'</td>
                            </tr>
                          </tbody>
                        </table>';
                      }else{
                        echo '
                        <table>
                          <tbody>
                            <tr>
                                <td><p>'.$urut=$urut+1; echo '.&nbsp;</p></td>
                                <td>'.$row->soal.'</td>
                            </tr>
                            <tr>
                                <td><input name="pilihan['.$row->id.']" type="radio" value="A">&nbsp;</td>
                                <td>A. '.$row->opsi_a.'</td>
                            </tr>
                            <tr>
                                <td><input name="pilihan['.$row->id.']" type="radio" value="B">&nbsp;</td>
                                <td>B. '.$row->opsi_b.'</td>
                            </tr>
                            <tr>
                                <td><input name="pilihan['.$row->id.']" type="radio" value="C">&nbsp;</td>
                                <td>C. '.$row->opsi_c.'</td>
                            </tr>
                            <tr>
                              <td><input name="pilihan['.$row->id.']" type="radio" value="D">&nbsp;</td>
                                <td>D. '.$row->opsi_d.'</td>
                            </tr>
                            <tr>
                                <td><input name="pilihan['.$row->id.']" type="radio" value="E">&nbsp;</td>
                                <td>E. '.$row->opsi_e.'</td>
                            </tr>
                          </tbody>
                        </table>';
                      }
                      echo '</div>';
                    }
                      echo '<input type="hidden" name="jumlah" value='.$jumlah.'>';
                    ?>
                          <td>
                        <tr>&nbsp;</tr>
                          <tr><input type="submit" name="submit" value="Jawab" onclick="return confirm('Apakah Anda yakin dengan jawaban Anda?')"></tr>
                            </td>
                    </form>
        </div>
      </div>
    </div>
  </div>
</section><!-- /.content -->