--�r�nlerin �r�n ad�, �r�n kodunu ve KDV dahil sat�� fiyat�n� listeleyiniz.
select urunAd, urunKod, listeFiyat+listeFiyat*KDVoran AS KdvDahilfiyat
from tblUrun