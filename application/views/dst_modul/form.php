        <?php if($aksi=='edit'){
            foreach ($query->result() as $list) { ?>
            <?=form_open_multipart($link.$list->id);
            $id                 = $list->id;
            $judul_modul        = $list->judul_modul;
            $image              = $list->nama_modul;
        }
        }elseif($aksi=='create'){?>
        <?=form_open_multipart($link);
            $id                 = $id;
            $judul_modul        = '';
            $image              = '';
        }elseif($aksi=='view'){ 
        foreach ($query->result() as $list) {?>
        <?=form_open_multipart($link.$list->id);
            $id                 = $list->id;
            $judul_modul        = $list->judul_modul;
            $image              = $list->nama_modul;
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
                      <input type="hidden" name="id" value="<?=$id;?>" class="form-control" placeholder="id"  <?=($aksi=='view') ? 'disabled': ''; ?>>
                    </div>
                    <div class="form-group">
                      <label>Nama Modul</label>
                      <input type="text" name="judul_modul" value="<?=$judul_modul;?>" class="form-control" placeholder="Nama Modul" <?=($aksi=='view') ? 'disabled': ''; ?>>
                    </div>
                    <div class="form-group">
                      <label>File</label>
                      <input type="file" name="image" value="<?=$image;?>" class="form-control" <?=($aksi=='view') ? 'disabled': ''; ?>>
                    </div>
                    <input type="<?=($aksi=='view') ? 'hidden' : 'submit' ?>" class="btn btn-default" name="simpan" value="Simpan" onclick="return confirm('Apakah Anda yakin data ini benar?')">
                    <input type="<?=($aksi=='view') ? 'hidden' : 'reset' ?>" class="btn btn-default" value="Reset">
        </form>
            </div><!-- /.box-body -->
            <div class="box-footer">
              
            </div><!-- /.box-footer-->
          </div><!-- /.box -->

        </section><!-- /.content -->