        <?php if($aksi=='edit'){
            foreach ($query->result() as $list) { ?>
            <?=form_open($link.$list->id);
            $id                 = $list->id;
            $id_kursus          = $list->id_kursus;
            $gelombang          = $list->gelombang;
            $kelas              = $list->kelas_gelombang;
            $pj                 = $list->pj;
        }
        }elseif($aksi=='create'){?>
        <?= form_open($link);
            $id                 = $id;
            $id_kursus          = "";
            $gelombang          = "";
            $kelas              = "";
            $pj                 = "";
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
                      <input type="hidden" name="id" value="<?=$id;?>" class="form-control" placeholder="id">
                    </div>
					<div class="form-group">
                      <label>Nama Kursus</label>
						<select id="kursus" name="id_kursus" class="form-control input" <?=($aksi=='view') ? 'disabled': ''; ?>>
							<option value="">Kursus</option>
							<?php foreach ($kursus->result() as $dd) { ?>
							<option value="<?=$dd->id?>" <?php if ($id_kursus==$dd->id){echo "selected";}else{echo "";} ?>><?=$dd->id.' ('.$dd->nama_kursus.') '?></option>
							<?php }?>
						</select>
                    </div>
                    <div class="form-group">
                      <label>Gelombang</label>
                      <input type="text" name="gelombang" value="<?=$gelombang;?>" class="form-control" placeholder="">
                    </div>
                    <div class="form-group">
                      <label>Kelas</label>
                      <input type="text" name="kelas" value="<?=$kelas;?>" class="form-control" placeholder="">
                    </div>
                    <div class="form-group">
                      <label>Penanggung Jawab</label>
                      <input type="text" name="pj" value="<?=$pj;?>" class="form-control" placeholder="">
                      </select>
                    </div>
                    <input type="submit" class="btn btn-default" name="simpan" value="Simpan">
                    <button type="reset" class="btn btn-default">Reset</button>
              <?php ?>                     
        </form>
            </div><!-- /.box-body -->
            <div class="box-footer">
              
            </div><!-- /.box-footer-->
          </div><!-- /.box -->

        </section><!-- /.content -->