<?=$this->session->flashdata('message');?>
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
            <!-- /.row -->
            <a type="button" class="btn btn-default" name="add" href="<?=base_url($link2);?>"><i class="fa fa-chevron-left fa-fw"></i>Kembali</a>
			<a type="button" class="btn btn-primary" name="add" href="<?=base_url($linkcreate.$id_kursus);?>"><i class="fa fa-plus fa-fw"></i>Tambah <?=$judul;?></a>
            <a type="button" class="btn btn-primary" name="add" href="<?=base_url($linkimport.$id_kursus);?>"><i class="fa fa-download fa-fw"></i>Import <?=$judul;?></a>
            <a type="button" class="btn btn-primary" name="add" href="<?=base_url($linkexport.$id_kursus);?>"><i class="fa fa-upload fa-fw"></i>Export <?=$judul;?></a>
            <br/>
            <br/>
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <?="Data ".$judul ?>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="dataTable_wrapper">
                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th width="1%">NO</th>
                                            <th>ID</th>
                                            <th>Kategori</th>
                                            <th>Soal</th>
                                            <th>Jawaban</th>
                                            <th>Gambar</th>
                                            <th width="20%">ACTION</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php $no=1; ?>
                                        <?php foreach($query->result() as $row){ ?>
                                        
                                        <tr class="odd gradeX">
                                            <td><?= $no;?></td>
                                            <td><?=($row->id);?></td>
                                            <td><?=($row->nama_kategorisoal);?></td>
                                            <td><?=($row->soal);?></td>
                                            <td><?=($row->jawaban);?></td>
                                            <td><?php $image = $row->gambar;
                                                    if ($image) { echo "<img src='".base_url('assets/upload/soal/'.$image)."' alt='User Image' width='35' height='50'>";}else{ echo "<a class='btn btn-primary' name='edit' href=".base_url($linkupload.$row->id.'/'.$row->id_tr_ujian)."><i class='fa fa-file-image-o fa-fw'></i></a>";} ;?></td>
                                            <td><a class="btn btn-info" name="view" href="<?=base_url($linkview.$row->id_tr_ujian.'/'.$row->id);?>"><i class="fa fa-search fa-fw"></i></a>
                                                <a class="btn btn-warning" name="edit" href="<?=base_url($linkupdate.$row->id_tr_ujian.'/'.$row->id);?>"><i class="fa fa-wrench fa-fw"></i></a>
                                                <a class="btn btn-danger" name="delete" href="<?=base_url($linkdelete.$row->id_tr_ujian.'/'.$row->id);?>" onclick="return confirm('Apakah anda yakin akan menghapus data ini?')"><i class="fa fa-trash fa-fw"></i></a></td>
                                        </tr>
                                    <?php $no++; }?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            </div><!-- /.box-body -->
            <div class="box-footer">
              
            </div><!-- /.box-footer-->
          </div><!-- /.box -->

        </section><!-- /.content -->