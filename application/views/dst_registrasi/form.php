        <?php if($aksi=='edit'){
            foreach ($query->result() as $list) { ?>
            <?=form_open_multipart($link.$list->id);
            $id               = $list->id;
            $id_mahasiswa     = $list->id_mahasiswa;
            $id_kursus        = $list->id_kursus;
            $status_pembayaran= $list->status_pembayaran;
            $id_gelombang     = $list->id_gelombang;
            $id_ujian         = $list->id_ujian;
        }
        }elseif($aksi=='create'){?>
        <?=form_open_multipart($link);
            $id               = $id;
            $id_mahasiswa     = '';
            $id_kursus        = '';
            $status_pembayaran= '';
            $id_gelombang     = '';
            $id_ujian         = '';
        }elseif($aksi=='view'){
        foreach ($query->result() as $list)  { ?>
        <?=form_open_multipart($link.$list->id);
            $id               = $list->id;
            $id_mahasiswa     = $list->id_mahasiswa;
            $id_kursus        = $list->id_kursus;
            $status_pembayaran= $list->status_pembayaran;
            $id_gelombang     = $list->id_gelombang;
            $id_ujian         = $list->id_ujian;
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
                      <label>Nama Mahasiswa</label>
                      <select class="form-control" name="id_mahasiswa" <?=($aksi=='view') ? 'disabled': ''; ?>>
                        <?php foreach ($mahasiswa->result() as $dd) { ?>
                        <option value="<?=$dd->id?>" <?php if ($id_mahasiswa==$dd->id){echo "selected";}else{echo "";} ?> ><?='('.$dd->npm.') '.$dd->nama_lengkap.$dd->nama_depan.' '.$dd->nama_belakang;?></option>
                        <?php }?>
                      </select>
                    </div>
                    <div class="form-group">
                      <label>Nama Kursus</label>
                      <select class="form-control" name="id_kursus" <?=($aksi=='view') ? 'disabled': ''; ?>>
                        <?php foreach ($kursus->result() as $dd) { ?>
                        <option value="<?=$dd->id?>" <?php if ($id_kursus==$dd->id){echo "selected";}else{echo "";} ?> ><?='('.$dd->id.') '.$dd->nama_kursus;?></option>
                        <?php }?>
                      </select>
                    </div>
				            <div class="form-group">
                      <label>Status Pembayaran</label>
                      <select class="form-control" name="status_pembayaran" <?=($aksi=='view') ? 'disabled': ''; ?>>
                        
                        <option value="Belum Bayar" <?php if ($status_pembayaran=='Belum Bayar'){echo "selected";}else{echo "";} ?> >Belum Bayar</option>
                        <option value="Sudah Bayar" <?php if ($status_pembayaran=='Sudah Bayar'){echo "selected";}else{echo "";} ?> >Sudah Bayar</option>
                      </select>
                    </div>
                    <div class="form-group">
                      <label>Gelombang</label>
                      <select class="form-control" name="id_gelombang" <?=($aksi=='view') ? 'disabled': ''; ?>>
                        <?php foreach ($gelombang->result() as $dd) { ?>
                        <option value="<?=$dd->id?>" <?php if ($id_gelombang==$dd->id){echo "selected";}else{echo "";} ?> ><?='('.$dd->id.') '.$dd->gelombang.$dd->kelas;?></option>
                        <?php }?>
                      </select>
                    </div>
                    <div class="form-group">
                      <label>Ujian</label>
                      <select class="form-control" name="id_ujian" <?=($aksi=='view') ? 'disabled': ''; ?>>
                        <?php foreach ($ujian->result() as $dd) { ?>
                        <option value="<?=$dd->id?>" <?php if ($id_ujian==$dd->id){echo "selected";}else{echo "";} ?> ><?='('.$dd->id.') '.$dd->nama_ujian;?></option>
                        <?php }?>
                      </select>
                    </div>
                    <input type="<?=($aksi=='view') ? 'hidden' : 'submit' ?>" class="btn btn-default" name="simpan" value="Simpan" onclick="return confirm('Apakah Anda yakin data ini benar?')">
                    <input type="<?=($aksi=='view') ? 'hidden' : 'reset' ?>" class="btn btn-default" value="Reset">
        </form>
            </div><!-- /.box-body -->
            <div class="box-footer">
              
            </div><!-- /.box-footer-->
          </div><!-- /.box -->

        </section><!-- /.content -->