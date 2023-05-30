# karyawan-database

Karyawan yang terdaftar akan mendapatkan jabatan, yang mana setiap jabatan sudah ditentukan pada departemen tertentu

pada repositori ini bebas menggunakan file ```karyawan_db.sql``` nya untuk bahan percobaan perintah-perintah SQL

umumnya banyak perintah SQL, seperti :
```SELECT```
```INSERT```
```UPDATE```
```DELETE```
```JOIN```
```INNER JOIN```
```LEFT JOIN```
```RIGHT JOIN```
```FULL JOIN```

namun pada kali ini saya hanya ingin menjelaskan beberapa perintah saja seperti ```SELECT``` dan ```JOIN```
## Content of Database

#### Tabel Karyawan

```
    SELECT * FROM karyawan
```

| id_karyawan | nama_karyawan | id_jabatan |
| :---------- | :------------ | :--------- |
| 1           | John          | 2          |

#### Tabel Jabatan

```
    SELECT * FROM jabatan
```

| id_jabatan | nama_jabatan         | id_departemen |
| :--------- | :------------------- | :------------ |
| 1          | Data Analyst Manager | 3             |

#### Tabel Departemen

```
    SELECT * FROM departemen
```

| id_departemen | nama_departemen  |
| :------------ |:-----------------|
| 3          | Data Analyst     |

## Running Tests

Misal ingin menampilkan id_karyawan, nama_karyawan, jabatan dan departemennya

```
SELECT
    karyawan.id_karyawan,
    karyawan.nama_karyawan,
    jabatan.nama_jabatan,
    departemen.nama_departemen
FROM 
    karyawan 
JOIN
    jabatan
JOIN 
    departemen 
ON 
    karyawan.id_jabatan = jabatan.id_jabatan 
AND
    jabatan.id_departemen = departemen.id_departemen;
```

#### Hasil Operasi

| id_jabatan | nama_karyawan  | nama_jabatan | nama_departemen |
| :------------ |:-----------------||:-----------------||:-----------------|
| 1          | John     | Data Analyst Manager | Data Analyst |


## Screenshots

hasil query pada phpmyadmin

![App Screenshot](https://raw.githubusercontent.com/haydar-hilmy/karyawan-database/main/hasil%20query.png)

