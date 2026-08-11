-- membuat database abadi_jaya_db
CREATE DATABASE abadi_jaya_db;

-- memilih database yang akan digunakan
USE abadi_jaya_db;


-- =========================================
-- TABEL PELANGGAN
-- =========================================

CREATE TABLE pelanggan (
    id_pelanggan INT AUTO_INCREMENT PRIMARY KEY,
    nama VARCHAR(100) NOT NULL,
    alamat VARCHAR(100) NOT NULL,
    no_telp VARCHAR(20) NOT NULL
);

-- memasukkan data ke tabel pelanggan
-- id_pelanggan tidak dimasukkan karena AUTO_INCREMENT
INSERT INTO pelanggan (nama, alamat, no_telp)
VALUES 
('Budi', 'Jakarta', '081392019273'),
('Andi', 'Bandung', '081463719273'),
('Putri', 'Padang', '08230967390');


-- =========================================
-- TABEL PRODUK
-- =========================================

CREATE TABLE produk (
    id_produk INT AUTO_INCREMENT PRIMARY KEY,
    nama_produk VARCHAR(100) NOT NULL,
    harga INT NOT NULL,
    stok INT NOT NULL
);

-- memasukkan data ke tabel produk
INSERT INTO produk (nama_produk, harga, stok)
VALUES
('Beras 1 kg', 13000, 50),
('Minyak 1 L', 17000, 50),
('Telur 1 kg', 15000, 20);


-- =========================================
-- TABEL TRANSAKSI
-- =========================================

CREATE TABLE transaksi (
    id_transaksi INT AUTO_INCREMENT PRIMARY KEY,
    id_pelanggan INT NOT NULL,
    id_produk INT NOT NULL,
    jumlah INT NOT NULL,
    tanggal DATE NOT NULL,

    FOREIGN KEY (id_pelanggan)
        REFERENCES pelanggan(id_pelanggan),

    FOREIGN KEY (id_produk)
        REFERENCES produk(id_produk)
);
-- memasukkan data ke tabel transaksi 
INSERT INTO transaksi (id_pelanggan, id_produk, jumlah, tanggal)
VALUES
(1,1,1,'2026-08-08'),
(2,3,2,'2026-08-09'),
(3,2,3,'2026-08-09');

-- melihat seluruh data pelanggan
SELECT * FROM pelanggan;
-- melihat seluruh data produk
SELECT * FROM produk;
-- melihat seluruh data transaksi 
SELECT * FROM transaksi;

