SELECT 
    propertyNo,
    type AS Jenis_Property,
    rent AS Harga_Sewa,
    street AS Alamat_Property,
    city AS Kota,
    (SELECT CONCAT(fName, ' ', lName) FROM PrivateOwner WHERE ownerNo = PropertyForRent.ownerNo) AS Nama_Pemilik,
    (SELECT address FROM PrivateOwner WHERE ownerNo = PropertyForRent.ownerNo) AS Alamat_Pemilik
FROM PropertyForRent
WHERE rent < 500;