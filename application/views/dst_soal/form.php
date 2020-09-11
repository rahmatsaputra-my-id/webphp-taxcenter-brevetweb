        <?php if($aksi=='edit'){
            foreach ($query->result() as $list) { ?>
            <?=form_open_multipart($link.$id_kursus.'/'.$list->id);
            $id                 = $list->id;
            $bobot              = $list->bobot;
            $soal		        = $list->soal;
            $opsi_a		        = $list->opsi_a;
            $opsi_b		        = $list->opsi_b;
            $opsi_c		        = $list->opsi_c;
            $opsi_d		        = $list->opsi_d;
            $opsi_e		        = $list->opsi_e;
            $jawaban	        = $list->jawaban;
            $id_kategori        = $list->id_kategori;
            $image              = $list->gambar;
        }
        }elseif($aksi=='create'){?>
        <?=form_open_multipart($link.$id_kursus);
            $id                 = $id;
            $bobot              = '';
            $soal		        = '';
            $opsi_a		        = '';
            $opsi_b		        = '';
            $opsi_c		        = '';
            $opsi_d		        = '';
            $opsi_e		        = '';
            $jawaban	        = '';
            $id_kategori        = '';
            $image              = '';
        }elseif($aksi=='view'){ 
        foreach ($query->result() as $list) {?>
        <?=form_open_multipart($link.$id_kursus.'/'.$list->id);
            $id                 = $list->id;
            $bobot              = $list->bobot;
            $soal		        = $list->soal;
            $opsi_a		        = $list->opsi_a;
            $opsi_b		        = $list->opsi_b;
            $opsi_c		        = $list->opsi_c;
            $opsi_d		        = $list->opsi_d;
            $opsi_e		        = $list->opsi_e;
            $jawaban	        = $list->jawaban;
            $id_kategori        = $list->id_kategori;
            $image              = $list->gambar;
        }
        }?>
<!-- Main content -->
        <section class="content">
          <!-- Default box -->
          <div class="box">
            <div class="box-header with-border">
              <h3 class="box-title"><?=$judul;?></h3>
              <div class="box-tools pull-right">
                <button class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse"><i class="fa fa-minus"></i></button>
              </div>
            </div>
            <div class="box-body">
                    <div class="form-group">
                      <a type="button" class="btn btn-default" name="add" href="<?=base_url($link2.$id_kursus);?>"><i class="fa fa-chevron-left fa-fw"></i>Kembali</a>
                    </div>
                    <div class="form-group">
                      <input type="hidden" name="id" value="<?=$id;?>" class="form-control" placeholder="id"  <?=($aksi=='view') ? 'disabled': ''; ?>>
                    </div>
                    <div class="form-group">
                      <input type="hidden" name="id_kursus" value="<?=$id_kursus;?>" class="form-control" placeholder="id"  <?=($aksi=='view') ? 'disabled': ''; ?>>
                    </div>
                    <div class="form-group">
                      <?php
                        if ($image) { echo "<img src='".base_url('assets/upload/soal/'.$image)."' alt='User Image' width='100' height='150'>";}else{ echo "";} ;?>
                      <input type="hidden" name="imagelama" value="<?=$image;?>" class="form-control" placeholder="" <?=($aksi=='view') ? 'disabled': ''; ?>>
                    </div>
                    <div class="form-group">
                      <label>Gambar</label>
                      <input type="file" name="image" value="<?=$image;?>" class="form-control" <?=($aksi=='view') ? 'disabled': ''; ?>>
                    </div>
                    <div class="form-group">
                      <label>Soal</label>
                      <textarea type="text" id="editor1" name="soal" class="form-control" placeholder="" <?=($aksi=='view') ? 'disabled': ''; ?>><?=$soal;?></textarea>
                    </div>
                    <div class="form-group">
                      <label>A</label>
                      <input type="text" name="opsi_a" value="<?=$opsi_a;?>" class="form-control" placeholder="" <?=($aksi=='view') ? 'disabled': ''; ?>>
                    </div>
                    <div class="form-group">
                      <label>B</label>
                      <input type="text" name="opsi_b" value="<?=$opsi_b;?>" class="form-control" placeholder="" <?=($aksi=='view') ? 'disabled': ''; ?>>
                    </div>
                    <div class="form-group">
                      <label>C</label>
                      <input type="text" name="opsi_c" value="<?=$opsi_c;?>" class="form-control" placeholder="" <?=($aksi=='view') ? 'disabled': ''; ?>>
                    </div>
                    <div class="form-group">
                      <label>D</label>
                      <input type="text" name="opsi_d" value="<?=$opsi_d;?>" class="form-control" placeholder="" <?=($aksi=='view') ? 'disabled': ''; ?>>
                    </div>
                    <div class="form-group">
                      <label>E</label>
                      <input type="text" name="opsi_e" value="<?=$opsi_e;?>" class="form-control" placeholder="" <?=($aksi=='view') ? 'disabled': ''; ?>>
                    </div>
                    <div class="form-group">
                      <label>Jawaban</label>
                      <input type="text" name="jawaban" value="<?=$jawaban;?>" class="form-control" placeholder="" <?=($aksi=='view') ? 'disabled': ''; ?>>
                    </div>
                    <div class="form-group">
                      <label>Kategori</label>
                      <input type="text" name="id_kategori" value="<?=$id_kategori;?>" class="form-control" placeholder="" <?=($aksi=='view') ? 'disabled': ''; ?>>
                    </div>
                    <div class="form-group">
                      <label>Bobot</label>
                      <input type="text" name="bobot" value="<?=$bobot;?>" class="form-control" placeholder="Bobot Soal. Contoh : 1" <?=($aksi=='view') ? 'disabled': ''; ?>>
                    </div>
                    <input type="<?=($aksi=='view') ? 'hidden' : 'submit' ?>" class="btn btn-default" name="simpan" value="Simpan" onclick="return confirm('Apakah Anda yakin data ini benar?')">
                    <input type="<?=($aksi=='view') ? 'hidden' : 'reset' ?>" class="btn btn-default" value="Reset">
        </form>
            </div><!-- /.box-body -->
            <div class="box-footer">
              
            </div><!-- /.box-footer-->
          </div><!-- /.box -->

        </section><!-- /.content -->