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
                  <table class="table">
                    <tr>
                      <td colspan='4' align="center"><strong> PROFILE PENGAJAR</strong></td>
                    </tr>
                    <?php foreach ($query->result() as $list) { ?>
                    <tr>
                      <td width='49%' align='right'>Nama</td>
                      <td width='2%'>:</td>
                      <td width='49%'><?=$list->nama_depan." ".$list->nama_belakang;?></td>
                    </tr>
                    <tr>
                      <td width='49%' align='right'>Tempat dan Tanggal Lahir</td>
                      <td width='2%'>:</td>
                      <td width='49%'><?=$list->tempat_lahir.", ".$list->tanggal_lahir;?></td>
                    </tr>
                    <tr>
                      <td width='49%' align='right'>Jenis Kelamin</td>
                      <td width='2%'>:</td>
                      <td width='49%'><?=$list->jk;?></td>
                    </tr>
                    <tr>
                      <td width='49%' align='right'>No HP</td>
                      <td width='2%'>:</td>
                      <td width='49%'><?=$list->no_hp;?></td>
                    </tr>
                    <tr>
                      <td width='49%' align='right'>Alamat</td>
                      <td width='2%'>:</td>
                      <td width='49%'><?=$list->alamat;?></td>
                    </tr>
                    <tr>
                      <td width='49%' align='right'>Kota</td>
                      <td width='2%'>:</td>
                      <td width='49%'><?=$list->kota;?></td>
                    </tr>
                    <tr>
                      <td width='49%' align='right'>Email</td>
                      <td width='2%'>:</td>
                      <td width='49%'><?=$list->email;?></td>
                    </tr>
                    <tr>
                      <td colspan='3' align='center'><a class="btn btn-warning" name="edit" href="<?=base_url($linkupdate.$list->id);?>"><i class="fa fa-wrench fa-fw"></i>Edit Identitas Profile</a></td>
                    </tr>
                    <?php }?>
                  </table>
                </div><!-- /.box-body -->
            <div class="box-footer">
              
            </div><!-- /.box-footer-->
          </div><!-- /.box -->

        </section><!-- /.content -->