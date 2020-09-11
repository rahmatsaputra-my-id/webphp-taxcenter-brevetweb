			<?php
			
			function encryptIt( $q ) {
				$cryptKey  = 'qJB0rGtIn5UB1xG03efyCp';
				$qEncoded      = base64_encode( mcrypt_encrypt( MCRYPT_RIJNDAEL_256, md5( $cryptKey ), $q, MCRYPT_MODE_CBC, md5( md5( $cryptKey ) ) ) );
				return( $qEncoded );
			}

			function decryptIt( $q ) {
				$cryptKey  = 'qJB0rGtIn5UB1xG03efyCp';
				$qDecoded      = rtrim( mcrypt_decrypt( MCRYPT_RIJNDAEL_256, md5( $cryptKey ), base64_decode( $q ), MCRYPT_MODE_CBC, md5( md5( $cryptKey ) ) ), "\0");
				return( $qDecoded );
			}
			?>
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
                                            <th>Nama Lengkap</th>
                                            <th>Kota</th>
                                            <th>Email</th>
                                            <th>Password</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php $no=1; ?>
                                        <?php foreach($query->result() as $row){ ?>
                                        
                                        <tr class="odd gradeX">
                                            <td><?= $no;?></td>
                                            <td><?=($row->id);?></td>
                                            <td><?=($row->nama_lengkap.$row->nama_depan.' '.$row->nama_belakang);?></td>
                                            <td><?=($row->kota);?></td>
                                            <td><?=($row->email);?></td>
                                            <td><?php
											$password = $row->password;
											$npassword	= decryptIt($password);
											echo $npassword;
											?></td>
                                        </tr>
                                    <?php $no++; }?>
                                    </tbody>
                                </table>