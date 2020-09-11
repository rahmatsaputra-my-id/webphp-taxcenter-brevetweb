        <?php if($aksi=='edit'){
            foreach ($query->result() as $list) { ?>
            <?=form_open($link.$id_gelombang.'/'.$list->id);
            $id                 = $list->id;
            $id_kursus		    = $list->id_kursus;
            $id_gelombang       = $list->id_gelombang;
            $jam	            = $list->jam;
            $tanggal            = $list->tanggal;
            $keterangan         = $list->keterangan;
            $id_materi		    = $list->id_materi;
            $id_pengajar        = $list->id_pengajar;
        }
        }elseif($aksi=='create'){?>
        <?= form_open($link.'/'.$id_gelombang);
            $id                 = $id;
            $id_kursus		    = '';
            $id_gelombang       = '';
            $jam	            = '';
            $tanggal            = '';
            $keterangan         = '';
            $id_materi		    = '';
            $id_pengajar        = '';
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
                      <label>Kursus</label>
						<select id="kursus" name="id_kursus" class="form-control input" <?=($aksi=='view') ? 'disabled': ''; ?>>
							<option value="">Kursus</option>
							<?php foreach ($kursus->result() as $dd) { ?>
							<option value="<?=$dd->id?>" <?php if ($id_kursus==$dd->id){echo "selected";}else{echo "";} ?>><?=$dd->id.' ('.$dd->nama_kursus.') '?></option>
							<?php }?>
						</select>
                    </div>
					<div class="form-group">
                      <label>Gelombang</label>
						<select id="gelombang" name="id_gelombang" class="form-control input" <?=($aksi=='view') ? 'disabled': ''; ?>>
							<option value="">Gelombang</option>
							<?php foreach ($gelombang->result() as $dd) { ?>
							<option value="<?=$dd->id?>" <?php if ($id_gelombang==$dd->id){echo "selected";}else{echo "";} ?>><?=$dd->id.' ('.$dd->gelombang.$dd->kelas.') '?></option>
							<?php }?>
						</select>
                    </div>
                    <div class="form-group">
                      <label>Jam</label>
                      <input type="text" name="jam" value="<?=$jam;?>" class="form-control" placeholder="">
                    </div>
                    <div class="form-group">
                      <label>Tanggal</label>
                      <input type="text" name="tanggal" value="<?=$tanggal;?>" class="form-control" placeholder="">
                      </select>
                    </div>
					<div class="form-group">
                      <label>Materi</label>
						<select id="materi" name="id_materi" class="form-control input" <?=($aksi=='view') ? 'disabled': ''; ?>>
							<option value="">Materi</option>
							<?php foreach ($materi->result() as $dd) { ?>
							<option value="<?=$dd->id?>" <?php if ($id_materi==$dd->id){echo "selected";}else{echo "";} ?>><?=$dd->id.' ('.$dd->nama_aspek.') '?></option>
							<?php }?>
						</select>
                    </div>
					<div class="form-group">
                      <label>Pengajar</label>
						<select id="pengajar" name="id_pengajar" class="form-control input" <?=($aksi=='view') ? 'disabled': ''; ?>>
							<option value="">Pengajar</option>
							<?php foreach ($pengajar->result() as $dd) { ?>
							<option value="<?=$dd->id?>" <?php if ($id_pengajar==$dd->id){echo "selected";}else{echo "";} ?>><?=$dd->id.' ('.$dd->nama_depan.' '.$dd->nama_belakang.') '?></option>
							<?php }?>
						</select>
                    </div>
                    <div class="form-group">
                      <label>Keterangan</label>
                      <input type="text" name="keterangan" value="<?=$keterangan;?>" class="form-control" placeholder="">
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