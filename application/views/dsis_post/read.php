<section class="content">
    <h3 align="center">Berita Terbaru</h3>
    <?php foreach($query->result() as $row){ ?>
        <div class="row">
            <div class="col-md-12">
              <div class="box box-primary">
                <div class="box-header">
                  <h3 class="box-title"><i class="fa fa-bullhorn"></i>&nbsp;<?=($row->post_title);?></h3>
                </div>
                <div class="box-body">
                  <?=($row->post_content);?>
                </div><!-- /.box-body -->
                <div class="box-footer">
                  Post by Admin
                </div>
              </div><!-- /.box -->
            </div><!-- /.col (right) -->
        </div><!-- /.row -->
    <?php }?>
</section><!-- /.content -->