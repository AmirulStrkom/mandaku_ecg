<head>
    <script type="text/javascript" src="https://app.sandbox.midtrans.com/snap/snap.js" data-client-key="SB-Mid-client-Dca3rQ_BvbvnVnU4"></script>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
</head>

<div class="content-wrapper">
    <div class="container-full">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="d-flex align-items-center">
                <div class="me-auto">
                    <h3 class="page-title">Halaman Pembayaran</h3>
                    <div class="d-inline-block align-items-center">
                        <nav>
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><i class="mdi mdi-home-outline"></i></a></li>
                                <li class="breadcrumb-item" aria-current="page">Forms</li>
                                <li class="breadcrumb-item active" aria-current="page">General Form Elements</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>

        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-12">
                    <div class="box">

                        <div class="box-header with-border">
                            <h4 class="box-title">Form Pembayaran</h4>
                        </div>

                        <div class="box-body">
                            <!-- <form action="" method="POST" enctype="multipart/form-data">  -->

                            <!-- Default Dokumentasi dari github -->
                            <form id="payment-form" method="post" action="<?= site_url() ?>/Pembayaran/finish">
                                <input type="hidden" name="result_type" id="result-type" value="">
                                <input type="hidden" name="result_data" id="result-data" value="">
                            </form>
                            <!-- end default  -->

                            <div class="form-group">
                                <label for="nama_siswa">Nama Siswa</label>
                                <input type="text" name="nama_siswa" value="<?= set_value('nama_siswa') ?>" class="form-control" id="nama_siswa" placeholder="Nama Siswa">
                                <?= form_error('nama_siswa', '<small class="text-danger p1-3">', '</small>'); ?>
                            </div>

                            <div class="form-group">
                                <label for="jmlbayar">Jumlah Bayar</label>
                                <input type="text" name="jmlbayar" value="<?= set_value('jmlbayar') ?>" class="form-control" id="jmlbayar" placeholder="Jumlah Bayar">
                                <?= form_error('jmlbayar', '<small class="text-danger p1-3">', '</small>'); ?>
                            </div>

                            <button id="pay-button" class="btn btn-success pull-right">Bayar</button>
                            <!-- <button type="submit" name="tambah" class="btn btn-success pull-right">Tambah Pengajar</button> -->
                            </Form>
                        </div>
                    </div>
                    <!-- /.box -->
                </div>
            </div>
            <!-- /.row -->
        </section>
        <!-- /.content -->
    </div>
</div>

<script type="text/javascript">
    $('#pay-button').click(function(event) {
        event.preventDefault();
        $(this).attr("disabled", "disabled");

        var nama_siswa = $("#nama_siswa").val();
        var jmlbayar = $("#jmlbayar").val();

        $.ajax({
            type: 'POST',
            url: '<?= site_url() ?>/Pembayaran/token',
            data: {
                nama_siswa: nama_siswa,
                jmlbayar: jmlbayar
            },
            cache: false,

            success: function(data) {
                //location = data;

                console.log('token = ' + data);

                var resultType = document.getElementById('result-type');
                var resultData = document.getElementById('result-data');

                function changeResult(type, data) {
                    $("#result-type").val(type);
                    $("#result-data").val(JSON.stringify(data));
                    //resultType.innerHTML = type;
                    //resultData.innerHTML = JSON.stringify(data);
                }

                snap.pay(data, {

                    onSuccess: function(result) {
                        changeResult('success', result);
                        console.log(result.status_message);
                        console.log(result);
                        $("#payment-form").submit();
                    },
                    onPending: function(result) {
                        changeResult('pending', result);
                        console.log(result.status_message);
                        $("#payment-form").submit();
                    },
                    onError: function(result) {
                        changeResult('error', result);
                        console.log(result.status_message);
                        $("#payment-form").submit();
                    }
                });
            }
        });
    });
</script>