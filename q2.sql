--En yüksek toplam fiyata sahip faturaya dahil ürünleri ve faturayý sipariþ veren müþterinin adýný soyadýný listeyen SQL kodunu yazýnýz.
select distinct u.urunAd , k.isim +' '+k.soyad as Müþteri
from tblSiparis s 
inner join tblSiparisDetay sd on s.faturaKod=sd.faturaKod
inner join tblUrun u on u.urunKod= sd.urunKod
inner join tblKullanici k on k.kullaniciKod=s.kullaniciKod
where s.faturaKod=
(select top 1 faturaKod
from tblSiparis
order by toplam desc)