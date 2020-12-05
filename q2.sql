--En y�ksek toplam fiyata sahip faturaya dahil �r�nleri ve faturay� sipari� veren m��terinin ad�n� soyad�n� listeyen SQL kodunu yaz�n�z.
select distinct u.urunAd , k.isim +' '+k.soyad as M��teri
from tblSiparis s 
inner join tblSiparisDetay sd on s.faturaKod=sd.faturaKod
inner join tblUrun u on u.urunKod= sd.urunKod
inner join tblKullanici k on k.kullaniciKod=s.kullaniciKod
where s.faturaKod=
(select top 1 faturaKod
from tblSiparis
order by toplam desc)