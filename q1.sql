--Ürünlerin ürün adý, ürün kodunu ve KDV dahil satýþ fiyatýný listeleyiniz.
select urunAd, urunKod, listeFiyat+listeFiyat*KDVoran AS KdvDahilfiyat
from tblUrun