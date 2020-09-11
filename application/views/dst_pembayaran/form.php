        <?php if($aksi=='edit'){
            foreach ($query->result() as $list) { ?>
            <?=form_open_multipart($link.$list->id);
            $id               = $list->id;
            $id_user          = $list->id_user;
            $id_kursus        = $list->id_kursus;
            $no_kwitansi      = $list->no_kwitansi;
            $tanggal_bayar    = $list->tanggal_bayar;
            $jumlah_bayar     = $list->jumlah_bayar;
            $keterangan       = $list->keterangan;
        }
        }elseif($aksi=='create'){?>
        <?=form_open_multipart($link);
            $id               = $id;
            $id_user          = '';
            $id_kursus        = '';
            $no_kwitansi      = '';
            $tanggal_bayar    = '';
            $jumlah_bayar     = '';
            $keterangan       = '';
        }elseif($aksi=='view'){
        foreach ($query->result() as $list)  { ?>
        <?=form_open_multipart($link.$list->id);
            $id               = $list->id;
            $id_user          = $list->id_user;
            $no_kwitansi      = $list->no_kwitansi;
            $id_kursus        = $list->id_kursus;
            $tanggal_bayar    = $list->tanggal_bayar;
            $jumlah_bayar     = $list->jumlah_bayar;
            $keterangan       = $list->keterangan;
        }
        }?>
<!-- Main content -->
        <section class="content">
          <!-- Default box -->
          <div class="box">
            <div class="box-header with-border">
              <h3 class="box-title"><?=$judul;?></h3>
              <div class="box-tools pull-right">
                <!--<button class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse"><i class="fa fa-minus"></i></button>-->
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
                      <label>Nomor Kwitansi</label>
                      <input type="text" name="no_kwitansi" value="<?=$no_kwitansi;?>" class="form-control" placeholder="" <?=($aksi=='view') ? 'disabled': ''; ?>>
                    </div>                    
                    <div class="form-group">
                      <label>Nama Mahasiswa</label>
                      <select class="form-control" name="id_user" <?=($aksi=='view') ? 'disabled': ''; ?>>
                        <?php foreach ($mahasiswa->result() as $dd) { ?>
                        <option value="<?=$dd->id?>" <?php if ($id_user==$dd->id){echo "selected";}else{echo "";} ?> ><?='('.$dd->npm.') '.$dd->nama_lengkap.$dd->nama_depan.' '.$dd->nama_belakang;?></option>
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
                      <label>Tanggal Bayar</label>
                      <input type="text" name="tanggal_bayar" value="<?=$tanggal_bayar;?>" class="form-control" placeholder="Contoh : 2017/06/05" <?=($aksi=='view') ? 'disabled': ''; ?>>
                    </div>
                    <div class="form-group">
                      <label>Jumlah Bayar</label>
                      <input type="text" name="jumlah_bayar" value="<?=$jumlah_bayar;?>" class="form-control" placeholder="Contoh : 750000" <?=($aksi=='view') ? 'disabled': ''; ?>>
                    </div>
                    <div class="form-group">
                      <label>Keterangan</label>
                      <input type="text" name="keterangan" value="<?=$keterangan;?>" class="form-control" placeholder="" <?=($aksi=='view') ? 'disabled': ''; ?>>
                    </div>
                    <input type="<?=($aksi=='view') ? 'hidden' : 'submit' ?>" class="btn btn-default" name="simpan" value="Simpan" onclick="return confirm('Apakah Anda yakin data ini benar?')">
                    <input type="<?=($aksi=='view') ? 'hidden' : 'reset' ?>" class="btn btn-default" value="Reset">
        </form>
            </div><!-- /.box-body -->
            <div class="box-footer">
              
            </div><!-- /.box-footer-->
          </div><!-- /.box -->

        </section><!-- /.content -->