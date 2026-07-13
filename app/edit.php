<?php 
include 'koneksi.php';
$id = $_GET['id'];
$query = mysqli_query($koneksi, "SELECT * FROM surat_masuk WHERE id_surat_masuk = '$id'");
$data = mysqli_fetch_assoc($query);

$klasifikasi_query = mysqli_query($koneksi, "SELECT * FROM klasifikasi");
?>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Surat Masuk</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 40px; }
        .form-group { margin-bottom: 15px; }
        label { display: block; margin-bottom: 5px; font-weight: bold; }
        input, select, textarea { width: 100%; padding: 8px; box-sizing: border-box; }
        .btn-update { background: #ffc107; color: black; border: none; padding: 10px 15px; cursor: pointer; }
    </style>
</head>
<body>
    <h2>Form Edit Surat Masuk</h2>
    <a href="index.php">← Kembali</a><br><br>
    
    <form action="update.php" method="POST">
        <input type="hidden" name="id_surat_masuk" value="<?= $data['id_surat_masuk']; ?>">
        
        <div class="form-group">
            <label>Nomor Surat</label>
            <input type="text" name="no_surat" value="<?= htmlspecialchars($data['no_surat']); ?>">
        </div>
        <div class="form-group">
            <label>Asal Surat</label>
            <input type="text" name="asal_surat" value="<?= htmlspecialchars($data['asal_surat']); ?>">
        </div>
        <div class="form-group">
            <label>Tanggal Surat</label>
            <input type="date" name="tanggal_surat" value="<?= $data['tanggal_surat']; ?>">
        </div>
        <div class="form-group">
            <label>Tanggal Diterima</label>
            <input type="date" name="tanggal_diterima" value="<?= $data['tanggal_diterima']; ?>">
        </div>
        <div class="form-group">
            <label>Klasifikasi Surat</label>
            <select name="id_klasifikasi">
                <?php while($k = mysqli_fetch_assoc($klasifikasi_query)) { ?>
                    <option value="<?= $k['id_klasifikasi']; ?>" <?= $k['id_klasifikasi'] == $data['id_klasifikasi'] ? 'selected' : ''; ?>>
                        <?= $k['kode_klasifikasi'] . " - " . $k['nama_klasifikasi']; ?>
                    </option>
                <?php } ?>
            </select>
        </div>
        <div class="form-group">
            <label>Perihal</label>
            <textarea name="perihal" rows="4"><?= htmlspecialchars($data['perihal']); ?></textarea>
        </div>
        <button type="submit" class="btn-update">Update Surat</button>
    </form>
</body>
</html>