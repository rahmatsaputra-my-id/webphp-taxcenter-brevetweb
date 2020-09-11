
			<?php 
			header("Content-type: application/octet-stream");
			header("Content-Disposition: attachment; filename=exceldata.xls");
			header("Pragma: no-cache");
			header("Expires: 0");
			?>
                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th>Soal</th>
                                            <th>Opsi A</th>
                                            <th>Opsi B</th>
                                            <th>Opsi C</th>
                                            <th>Opsi D</th>
                                            <th>Opsi E</th>
                                            <th>Jawaban</th>
                                            <th>Kategori</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php $no=1; ?>
                                        <?php foreach($query->result() as $row){ ?>
                                        
                                        <tr class="odd gradeX">
                                            <td><?=($row->soal);?></td>
                                            <td><?=($row->opsi_a);?></td>
                                            <td><?=($row->opsi_b);?></td>
                                            <td><?=($row->opsi_c);?></td>
                                            <td><?=($row->opsi_d);?></td>
                                            <td><?=($row->opsi_e);?></td>
                                            <td><?=($row->jawaban);?></td>
                                            <td><?=($row->id_kategori);?></td>
                                        </tr>
                                    <?php $no++; }?>
                                    </tbody>
                                </table>