<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <div class="container-full">
        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-12">
                    <div class="box">
                        <div class="box-header with-border">
                            <h3 class="box-title">Informasi Buka dan Tutup Pendaftaran</h3>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">

                            <div class="float-right">
                                <a href="<?= base_url() ?>Info_pendaftaran/tambah" class="waves-effect waves-light btn mb-5 bg-gradient-primary">Tambah Info</a>
                            </div><br>

                            <?= $this->session->flashdata('message'); ?>

                            <div class="table-responsive">
                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>Tanggal Buka</th>
                                            <th>Tanggal Tutup</th>
                                            <th>Periode Satu</th>
                                            <th>Periode Dua</th>
                                            <th>Aksi</th>
                                        </tr>
                                    </thead>

                                    <tbody>
                                        <?php $i = 1; ?>
                                        <?php foreach ($pendaftaran as $us) : ?>
                                            <tr>
                                                <td><?= $i; ?>.</td>
                                                <td><?= date('d F Y', strtotime($us['tgl_buka'])); ?></td>
                                                <td><?= date('d F Y', strtotime($us['tgl_tutup'])); ?></td>
                                                <td><?= $us['periode_satu']; ?></td>
                                                <td><?= $us['periode_dua']; ?></td>
                                                <td>
                                                    <a href="<?= base_url('Info_pendaftaran/edit/') . $us['id_info']; ?>" class="badge badge-warning">Edit</a>
                                                    <a href="<?= base_url('Info_pendaftaran/hapus/') . $us['id_info']; ?>" class="badge badge-danger">Hapus</a>
                                                </td>
                                            </tr>
                                            <?php $i++; ?>
                                        <?php endforeach; ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->
                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->
        </section>
        <!-- /.content -->
    </div>
</div>
<!-- /.content-wrapper -->