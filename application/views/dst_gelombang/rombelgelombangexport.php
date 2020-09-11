
			<?php 
			header("Content-type: application/octet-stream");
			header("Content-Disposition: attachment; filename=exceldata.xls");
			header("Pragma: no-cache");
			header("Expires: 0");
			?>
                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th width="1%">NO</th>
                                            <th>ID</th>
                                            <th>NPM</th>
                                            <th>Nama Mahasiswa</th>
                                            <th>Kelas</th>
                                            <th>Status Pembayaran</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php $no=1; ?>
                                        <?php foreach($query->result() as $row){ ?>
                                        
                                        <tr class="odd gradeX">
                                            <td><?= $no;?></td>
                                            <td><?=($row->id_mahasiswa);?></td>
                                            <td><?=($row->npm);?></td>
                                            <td><?=($row->nama_lengkap.$row->nama_depan.' '.$row->nama_belakang);?></td>
                                            <td><?=($row->kelas);?></td>
                                            <td><?=($row->status_pembayaran);?></td>
                                        </tr>
                                    <?php $no++; }?>
                                    </tbody>
                                </table>