        <?php if($aksi=='edit'){
            foreach ($query->result() as $list) { ?>
            <?=form_open_multipart($link.$list->id);
            $id                 = $list->id;
            $nama_depan         = $list->nama_depan;
            $nama_belakang      = $list->nama_belakang;
            $tempat_lahir       = $list->tempat_lahir;
            $tanggal_lahir      = $list->tanggal_lahir;
            $jk                 = $list->jk;
            $nohp               = $list->no_hp;
            $alamat		        = $list->alamat;
            $kota               = $list->kota;
            $email              = $list->email;
			$image              = $list->gambar;
        }
        }elseif($aksi=='create'){?>
        <?=form_open_multipart($link);
            $id                 = $id;
            $nama_depan         = '';
            $nama_belakang      = '';
            $tempat_lahir       = '';
            $tanggal_lahir      = '';
            $jk                 = '';
            $nohp               = '';
            $alamat		        = '';
            $kota               = '';
            $email              = '';
			$image              = '';
        }elseif($aksi=='view'){
        foreach ($query->result() as $list)  { ?>
        <?=form_open_multipart($link.$list->id);
            $id                 = $list->id;
            $nama_depan         = $list->nama_depan;
            $nama_belakang      = $list->nama_belakang;
            $tempat_lahir       = $list->tempat_lahir;
            $tanggal_lahir      = $list->tanggal_lahir;
            $jk                 = $list->jk;
            $nohp               = $list->no_hp;
            $alamat		        = $list->alamat;
            $kota               = $list->kota;
            $email              = $list->email;
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
				  <a type="button" class="btn btn-default" name="add" href="<?=base_url($link2);?>"><i class="fa fa-chevron-left fa-fw"></i>Kembali</a>
				</div>
                    <div class="form-group">
                      <input type="hidden" name="id" value="<?=$id;?>" class="form-control" placeholder="id" <?=($aksi=='view') ? 'disabled': ''; ?>>
                    </div>
                    <div class="form-group">
                      <label>Nama Depan</label>
                      <input type="text" name="nama_depan" value="<?=$nama_depan;?>" class="form-control" placeholder="" <?=($aksi=='view') ? 'disabled': ''; ?>>
                    </div>
                    <div class="form-group">
                      <label>Nama Belakang</label>
                      <input type="text" name="nama_belakang" value="<?=$nama_belakang;?>" class="form-control" placeholder="" <?=($aksi=='view') ? 'disabled': ''; ?>>
                    </div>
                    <div class="form-group">
                      <label>Jenis Kelamin</label>
                      <select class="form-control" name="jk" <?=($aksi=='view') ? 'disabled': ''; ?>>
                        <option value="L" <?php if ($jk=="L"){echo "selected";}else{echo "";} ?>>L</option>
                        <option value="P" <?php if ($jk=="P"){echo "selected";}else{echo "";} ?>>P</option>
                      </select>
                    </div>
                    <div class="form-group">
                      <label>Tempat Lahir</label>
                      <input type="text" name="tempat_lahir" value="<?=$tempat_lahir;?>" class="form-control" placeholder="Contoh : Balik Papan" <?=($aksi=='view') ? 'disabled': ''; ?>>
                    </div>
                    <div class="form-group">
                      <label>Tanggal Lahir</label>
                      <div class="input-group">
                        <div class="input-group-addon">
                          <i class="fa fa-calendar"></i>
                        </div>
                        <input type="text" name="tanggal_lahir" value="<?=$tanggal_lahir;?>" class="form-control" placeholder="Contoh : 2000-05-25" data-inputmask="'alias': 'yyyy/mm/dd'" data-mask <?=($aksi=='view') ? 'disabled': ''; ?>>
                      </div><!-- /.input group -->
                    </div><!-- /.form group -->
                    <div class="form-group">
                      <label>No HP</label>
                      <input type="text" name="nohp" value="<?=$nohp;?>" class="form-control" placeholder="Contoh : 08521234xxxx" <?=($aksi=='view') ? 'disabled': ''; ?>>
                    </div>
                    <div class="form-group">
                      <label>Alamat</label>
                      <input type="text" name="alamat" value="<?=$alamat;?>" class="form-control" placeholder="Alamat tinggal / kosan" <?=($aksi=='view') ? 'disabled': ''; ?>>
                    </div>
                    <div class="form-group">
                      <label>Kota</label>
                      <input type="text" name="kota" value="<?=$kota;?>" class="form-control" placeholder="Contoh : Bekasi" <?=($aksi=='view') ? 'disabled': ''; ?>>
                    </div>
                    <div class="form-group">
                      <label>E-mail</label>
                      <input type="text" name="email" value="<?=$email;?>" class="form-control" placeholder="Contoh : mahasiswa@mail.com" <?=($aksi=='view') ? 'disabled': ''; ?>>
                    </div>
                    <div class="form-group">
                      <?php
                        if ($image) { echo "<img src='".base_url('assets/upload/mahasiswa/'.$image)."' alt='User Image' width='100' height='150'>";}else{ echo "";} ;?>
                      <input type="hidden" name="imagelama" value="<?=$image;?>" class="form-control" placeholder="" <?=($aksi=='view') ? 'disabled': ''; ?>>
                    </div>
                    <div class="form-group">
                      <label>Foto</label>
                      <input type="file" name="image" value="<?=$image;?>" class="form-control" placeholder="" <?=($aksi=='view') ? 'disabled': ''; ?>>
                    </div>
                    <input type="<?=($aksi=='view') ? 'hidden' : 'submit' ?>" class="btn btn-default" name="simpan" value="Simpan" onclick="return confirm('Apakah Anda yakin data ini benar?')">
                    <input type="<?=($aksi=='view') ? 'hidden' : 'reset' ?>" class="btn btn-default" value="Reset">
        </form>
            </div><!-- /.box-body -->
            <div class="box-footer">
              
            </div><!-- /.box-footer-->
          </div><!-- /.box -->

        </section><!-- /.content -->