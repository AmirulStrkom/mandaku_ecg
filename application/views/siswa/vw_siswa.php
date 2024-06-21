<div class="content-wrapper">
    <div class="container-full">

        <section class="content"><br><br>

            <div class="row">
                <h2>Batas Waktu Administrasi</h2>
                <?php foreach ($pendaftaran as $us) : ?>
                    <div class="col-6">
                        <a class="box box-link-shadow text-center pull-up">
                            <div class="box-body py-25 bg-info-light px-5">
                                <h4 class="fw-600 text-info">Tanggal Buka</h4>
                            </div>
                            <div class="box-body">
                                <h1 class="countnm fs-30 m-0"><?= date('d F Y', strtotime($us['tgl_buka'])); ?></h1>
                            </div>
                        </a>
                    </div>
                    <div class="col-6">
                        <a class="box box-link-shadow text-center pull-up">
                            <div class="box-body py-25 bg-danger-light px-5">
                                <h4 class="fw-600 text-danger">Tanggal Tutup</h4>
                            </div>
                            <div class="box-body">
                                <h1 class="countnm fs-30 m-0" style="color: red"><?= date('d F Y', strtotime($us['tgl_tutup'])); ?></h1>
                            </div>
                        </a>
                    </div>
                <?php endforeach ?>
            </div><br>

            <div class="box">
                <div class="box-header no-border">
                    <h4 class="box-title text-left" style="color: red;"><i class="glyphicon glyphicon-remove"></i> Mohon maaf anda belum melakukan pendaftaran, Silahkan klik menu daftar untuk melakukan pendaftaran!</h4>
                    <h4 class="box-title text-left" style="color: green;"><i class="glyphicon glyphicon-ok"></i> Pendaftaran Berhasil</h4>
                </div>
                <div class="box-header border">
                    <h4 class="box-title text-left" style="color: red;"><i class="glyphicon glyphicon-remove"></i> Mohon maaf anda belum melengkapi persyaratan, Silahkan klik menu syarat untuk melengkapi persyaratan!</h4>
                    <h4 class="box-title text-left" style="color: green;"><i class="glyphicon glyphicon-ok"></i> Persyaratan Sudah di Upload</h4>
                </div>
                <div class="box-header border">
                    <h4 class="box-title text-left" style="color: red;"><i class="glyphicon glyphicon-remove"></i> Mohon maaf anda belum melakukan pembayaran, Silahkan klik menu bayar untuk melakukan pembayaran!</h4>
                    <h4 class="box-title text-left" style="color: green;"><i class="glyphicon glyphicon-ok"></i> Pembayaran Berhasil</h4>
                </div>
            </div><br>

            <div class="row">
                <h2><?php echo $judul; ?></h2>

                <?php foreach ($status as $sta) : ?>
                    <?php if ($sta['status'] == "DIPROSES") : ?>
                        <div class="col-12">
                            <div class="box overflow-hidden pull-up">
                                <div class="box-body pe-0 ps-lg-50 ps-15 py-0" style="background-color: gray;">
                                    <div class="row align-items-center">
                                        <div class="col-12">
                                            <h3 class="fs-30 text-white text-center">DIPROSES</h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <?php elseif ($sta['status'] == "DITERIMA") : ?>
                        <div class="col-12">
                            <div class="box overflow-hidden pull-up">
                                <div class="box-body pe-0 ps-lg-50 ps-15 py-0" style="background-color: green;">
                                    <div class="row align-items-center">
                                        <div class="col-12">
                                            <h3 class="fs-30 text-white text-center">DITERIMA</h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <?php else : ?>
                        <div class="col-12">
                            <div class="box overflow-hidden pull-up">
                                <div class="box-body pe-0 ps-lg-50 ps-15 py-0" style="background-color: red;">
                                    <div class="row align-items-center">
                                        <div class="col-12">
                                            <h3 class="fs-30 text-white text-center">DITOLAK</h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <?php endif; ?>
                <?php endforeach; ?>

            </div>
        </section>

    </div>
</div>