-- ====================
-- SQL DATABASE TESTING
-- Abadi Jaya Store
-- ====================

-- TC-001 : Verify customer data
SELECT * FROM pelanggan;
-- TC-002 : Verify products with low stock
SELECT *
FROM produk
WHERE stok < 20;
-- TC-003 : Verify transaction details
-- menggabungkan data pelanggan, produk dan transaksi
SELECT
    transaksi.id_transaksi,
    pelanggan.nama,
    produk.nama_produk,
    transaksi.jumlah,
    transaksi.tanggal
FROM transaksi
JOIN pelanggan
    ON transaksi.id_pelanggan = pelanggan.id_pelanggan
JOIN produk
    ON transaksi.id_produk = produk.id_produk;

-- TC-004 : Verify transaction quantity and product price
-- memastikan jumlah transaksi dan harga sesuai produk
 SELECT
    pelanggan.nama,
    produk.nama_produk,
    produk.harga,
    transaksi.jumlah
FROM transaksi
JOIN pelanggan
    ON transaksi.id_pelanggan = pelanggan.id_pelanggan
JOIN produk
    ON transaksi.id_produk = produk.id_produk;

 -- expected result :
 -- budi membeli minyak goreng sebanyak 2 dengan harga 14000
 -- putri membeli minyak goreng sebanyak 1 dengan harga 14000   