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
											<th>Nama Kursus</th>
                                            <th>Nama Ujian</th>
                                            <th>Jumlah Soal</th>
                                            <th>Waktu</th>
                                            <th>Nilai</th>
                                            <th width="20%">Kerjakan</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php $no=1; ?>
                                        <?php foreach($query->result() as $row){ ?>
                                        
                                        <tr class="odd gradeX">
                                            <td><?= $no;?></td>
                                            <td><?=($row->id);?></td>
                                            <td><?=($row->nama_kursus);?></td>
                                            <td><?=($row->nama_ujian);?></td>
                                            <td><?=($row->jumlah_soal);?></td>
                                            <td><?=($row->waktu.' Menit');?></td>
                                            <td><?php  
                                                if (empty($query2)){
                                                    echo "";
                                                }else{
                                                    echo $query2->nilai;
                                                }?></td>
                                            <td><?php 
                                                if (empty($query2)){
                                                    echo '<a class="btn btn-primary" name="view" href="http://taxcenter.gunadarma.ac.id/kursus/pretest/login"><i class="fa fa-pencil fa-fw"></i> Kerjakan</a>';
                                                }else{
                                                    if ($query2->status == 'n'){
                                                        echo '<a class="btn btn-primary" name="view" href="http://taxcenter.gunadarma.ac.id/kursus/pretest/login"><i class="fa fa-pencil fa-fw"></i> Kerjakan</a>';
                                                    }else{
                                                        echo 'Sudah Dikerjakan';
                                                    }
                                                } ;?>
                                                
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