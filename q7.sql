--x numaralý ürünü en fazla sipariþ veren þehri bulunuz.
select top 1 seh.Isim, COUNT(s.faturaKod) as siparis_sayisi
from tblSiparis s
join tblKullanici k on s.kullaniciKod=k.kullaniciKod
join tblSehir seh on seh.Id=k.sehir
join tblSiparisDetay sd on sd.faturaKod=s.faturaKod
where sd.urunKod=3029
group by seh.Isim
ORDER BY COUNT(S.faturaKod)