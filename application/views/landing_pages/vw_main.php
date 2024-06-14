<section class="bg-img pt-150 pb-170" data-overlay="5" style="background-image: url(assets/images/front-end-img/banners/back3.jpg); background-position: top center;">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="text-center mt-130">
                    <h1 class="box-title text-white mb-30" style="font-family: Elephant;">Welcome To</h1>
                </div>
                <div class="text-center mt-40">
                    <h1 class="box-title text-white mb-30" style="font-family: Wide Latin;">English Camp Pare AEC<br> Man 2 Kuantan Singingi</h1>
                </div>
                <div class="text-center">
                    <h3 class="box-title text-white" style="font-family: Monotype Corsiva;">#We Are English Camp Of Mandaku Campus</h3>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="py-50 bg-white" data-overlay="1" data-aos="fade-up" style="background-image: url(assets/images/front-end-img/background/bg-1.jpg)">
    <div class="container">
        <div class="row justify-content-center">

            <div class="col-md-3 col-12 mt-30 mt-md-3">
                <img class="box-img-top btrr-5 btlr-5" src="assets/images/pareaec2.png" alt="Card image cap">
            </div>
            <div class="col-md-4 col-12 mt-30 mt-md-3">
                <img class="box-img-top btrr-5 btlr-5" src="assets/images/man2kuansing.png" alt="Card image cap">
            </div>

        </div>
    </div>
</section>

<section class="py-30" data-aos="fade-right">
    <div class="container">
        <div class="row justify-content-center">

            <div class="col-lg-10 col-12">
                <h2 class="mb-10" style="font-family: Elephant;">English Camp Website</h2>
                <!-- <h4 class="fw-400">It is a long established fact that a reade.</h4> -->
                <?php foreach ($pendaftaran as $us) : ?>
                    <p class="fs-16" style="text-align: justify;">
                        <?= $us['deskripsi_web'] ?>
                    </p>
                <?php endforeach ?>
            </div>
        </div>
    </div>
</section>

<section class="py-30" data-overlay="7" data-aos="fade-left" style="background-image: url('assets/images/front-end-img/background/bg-1.jpg')">
    <div class="container">
        <div class="row">
            <div class="owl-carousel owl-theme">
                <?php foreach ($review as $re) : ?>
                    <div class="item">
                        <div class="d-lg-flex">
                            <div class="position-relative w-lg-300">
                                <div class="rounded-circle overflow-hidden" style="width: 250px; height: 250px; background-image: url('<?= base_url('assets/images/pengajar/') . $re['gambar']; ?>'); background-size: cover; background-position: center;">
                                </div>
                            </div>
                            <div class="card-body">
                                <h3 class="card-title mt-0" style="font-family: Ravie; color: white;"><?= $re['nama_alumni'] ?></h3>
                                <h4 class="card-text" style="font-family: Goudy Old Style; color: white;"><?= $re['generasi'] ?></h4>
                                <h6 class="card-text" style="text-indent: 50px; text-align: justify; color: white;">
                                    <?= $re['review'] ?>
                                </h6>
                            </div>
                        </div>
                    </div>
                <?php endforeach ?>
            </div>
        </div>
    </div>
</section>

<script>
    // Menunggu sampai dokumen HTML selesai dimuat
    $(document).ready(function() {
        // Memilih elemen dengan kelas .owl-carousel dan menginisialisasi Owl Carousel
        $(".owl-carousel").owlCarousel({
            loop: true, // Mengaktifkan looping, carousel akan kembali ke awal setelah slide terakhir
            margin: 10, // Memberikan margin sebesar 10px antara setiap item
            autoplay: true, // Mengaktifkan autoplay, carousel akan bergeser secara otomatis
            autoplayTimeout: 1000, // Waktu tunggu selama 4000 milidetik (4 detik) sebelum slide bergeser otomatis
            autoplayHoverPause: true, // Menghentikan autoplay saat mouse hover pada carousel
        });
    });
</script>

<section class="py-50" data-aos="fade-down">
    <div class="container">
        <div class="row justify-content-center">
            <h1 class="mb-15 text-center" style="font-family: Matura MT Script Capitals;">Jadwal Pendaftaran English Camp</h1>

            <?php foreach ($pendaftaran as $us) : ?>
                <div class="col-md-5 col-12 mt-30 mt-md-0">
                    <div class="box box-body p-40 text-center" style="background-color: #00adc6">
                        <h2 class="box-title text-white" style="font-family: Elephant;">Pendaftaran Di buka</h2>
                        <h3 style="font-family: Bodoni MT Black; color: #170000"><?= date('d F Y', strtotime($us['tgl_buka'])); ?></h3>
                    </div>
                </div>
                <div class="col-md-5 col-12 mt-30 mt-md-0">
                    <div class="box box-body p-40 text-center" style="background-color: #98c93c">
                        <h2 class="box-title text-white" style="font-family: Elephant; ">Pendaftaran Di Tutup</h2>
                        <h3 style="font-family: Bodoni MT Black; color: #170000"><?= date('d F Y', strtotime($us['tgl_tutup'])); ?></h3>
                    </div>
                </div>
            <?php endforeach ?>

        </div>
    </div>
</section>

<section data-aos="fade-down">
    <div class="container">
        <div class="row justify-content-center">
            <h1 class="mb-15 text-center" style="font-family: Matura MT Script Capitals;">Periode Pelaksanaan English Camp Setiap Tahun</h1>

            <?php foreach ($pendaftaran as $us) : ?>
                <div class="col-md-5 col-12 mt-30 mt-md-0">
                    <div class="box box-body p-40 text-center" style="background-color: #ed3497">
                        <h2 class="box-title text-white" style="font-family: Elephant;">Periode Pertama</h2>
                        <h3 style="font-family: Bodoni MT Black; color: #170000"><?= $us['periode_satu'] ?></h3>
                    </div>
                </div>
                <div class="col-md-5 col-12 mt-30 mt-md-0">
                    <div class="box box-body p-40 text-center" style="background-color: #2a37bf">
                        <h2 class="box-title text-white" style="font-family: Elephant; ">Periode Kedua</h2>
                        <h3 style="font-family: Bodoni MT Black; color: #170000"><?= $us['periode_dua'] ?></h3>
                    </div>
                </div>
            <?php endforeach ?>

        </div>
    </div>
</section>

<section class="py-50" data-overlay="7" data-aos="fade-down" style="background-image: url(assets/images/front-end-img/background/bg-1.jpg)">
    <div class="container">
        <div class="row justify-content-center">
            <h1 class="mb-15 text-center" style="font-family: Elephant; color: white;">Materi Pembelajaran Kelas Camp</h1>

            <?php
            $colors = ['#701c2b', '#1c4c70', '#1c7047', '#706d1c', '#a15872', '#a19d58', '#58a185', '#753619'];
            $index = 0;
            foreach ($materi as $ma) : ?>
                <div class="col-md-4 col-12 mt-30 mt-md-0">
                    <div class="box box-body p-20 text-center" style="background-color: <?= $colors[$index % count($colors)]; ?>;">
                        <h4 class="box-title text-white" style="font-family: Elephant;"><?= $ma['materi_pembelajaran'] ?></h4>
                    </div>
                </div>
                <?php $index++; ?>
            <?php endforeach ?>

            <!-- <div class="col-md-3 col-12 mt-30 mt-md-0">
                <div class="box box-body p-20 text-center" style="background-color: #701c2b">
                    <h4 class="box-title text-white" style="font-family: Elephant;"> SPEAKING</h4>
                </div>
            </div> -->

        </div>
    </div>
</section>

<section class="py-50 bg-white" data-aos="fade-up">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-6 col-12">

                <h1 class="mb-15">Watch Us On Youtube</h1>
                <?php foreach ($media as $me) : ?>
                    <a class="media media-single box-shadowed bg-white pull-up mb-15" href="<?= $me['link'] ?>">
                        <img class="w-80 rounded ms-0" src="<?= base_url('assets/images/pengajar/') . $me['gambar']; ?>">
                        <div class="media-body fw-500">
                            <h5 class="overflow-hidden text-overflow-h nowrap"><?= $me['judul'] ?></h5>
                            <small class="text-fade"><?= $me['aktor'] ?></small>
                            <p><small class="text-fade mt-10"><?= $me['status'] ?></small></p>
                        </div>
                    </a>
                <?php endforeach ?>

                <!-- <a class="media media-single box-shadowed bg-white pull-up mb-15" href="https://youtu.be/iQ8I0nT2Qpw?si=V1Y0gM-9hbPdQdtE">
                    <img class="w-80 rounded ms-0" src="assets/images/front-end-img/coral.jpg">
                    <div class="media-body fw-500">
                        <h5 class="overflow-hidden text-overflow-h nowrap">Coral Speaking Moderasi Beragama Man 2 Kuansing</h5>
                        <small class="text-fade">Siswa dan Siswa English Camp</small>
                        <p><small class="text-fade mt-10">Man 2 Kuantan Singingi</small></p>
                    </div>
                </a> -->
            </div>
            <div class="col-lg-5 col-12 position-relative">
                <div class="popup-vdo mt-30 mt-md-0">
                    <img src="assets/images/front-end-img/yt.jpg" class="img-fluid rounded" alt="">
                    <a href="https://youtu.be/W9IXDLdXkzo?si=QipLfflGGnxDJ33W" class="popup-youtube play-vdo-bt waves-effect waves-circle btn btn-circle btn-primary btn-lg"><i class="mdi mdi-play"></i></a>
                </div>
            </div>
        </div>
    </div>
</section>