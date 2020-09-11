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
            <?=form_open($naikkelas);?>
            <div class="btn-group">
            <a type="button" class="btn btn-default" name="add" href="<?=base_url($link);?>"><i class="fa fa-chevron-left fa-fw"></i>Kembali</a>
            </div>
            <div class="btn-group">
                Pindah/Masuk Ke Gelombang
            </div>
                    <div class="btn-group">
                      <select class="form-control" name="id_gelombang">
                        <option value="0">Belum Dapat Gelombang</option>
                        <?php foreach ($tgelombang->result() as $dd) { ?>
                        <option value="<?=$dd->id?>"><?=$dd->id.' ('.$dd->gelombang.$dd->kelas_gelombang.') '?></option>
                        <?php }?>
                      </select>
                    </div>
            <div class="btn-group">
            <button type="submit" name="submit" class="btn btn-warning" ><i class="fa fa-wrench fa-fw"></i>Submit</button>
			<a type="button" class="btn btn-primary" name="add" href="<?=base_url($linkexport);?>"><i class="fa fa-plus fa-fw"></i>Export <?=$judul;?></a>
            </div>
            <br/>
            <br/>
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <?php foreach($gelombang->result() as $row){?>
                            <?="Data ".$judul.' '.$row->gelombang.' '.$row->kelas_gelombang; } ?>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="dataTable_wrapper">
                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th width="1%" ></th>
                                            <th width="1%">NO</th>
                                            <th>ID</th>
                                            <th>NPM</th>
                                            <th>Nama Mahasiswa</th>
                                            <th>Kelas</th>
                                            <th>Domisili</th>
                                            <th>No HP</th>
                                            <th>Nama Gelombang</th>
                                            <th>Status Pembayaran</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php $no=1; ?>
                                        <?php foreach($query->result() as $row){ ?>
                                        
                                        <tr class="odd gradeX">
                                            <td><input type="checkbox" class="checkbox" name="id[]" value="<?=$row->id_mahasiswa;?>" /></td>
                                            <td><?= $no;?></td>
                                            <td><?=($row->id_mahasiswa);?></td>
                                            <td><?=($row->npm);?></td>
                                            <td><?=($row->nama_lengkap.$row->nama_depan.' '.$row->nama_belakang);?></td>
                                            <td><?=($row->kelas);?></td>
                                            <td><?=($row->domisili);?></td>
                                            <td><?=($row->no_hp);?></td>
                                            <td><?=($row->gelombang).($row->kelas_gelombang);?></td>
                                            <td><?php if($row->status_pembayaran=='Sudah Bayar'){
											?><span class="label label-success">Sudah Bayar</span><?php
											}else{?> <span class="label label-danger">Belum Bayar</span> <?php
											}?></td>
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
            <?=form_close();?>
            <!-- /.row -->
            </div><!-- /.box-body -->
            <div class="box-footer">
              
            </div><!-- /.box-footer-->
          </div><!-- /.box -->

        </section><!-- /.content -->