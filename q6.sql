--En fazla sipariþ veren meslek grubunu bulunuz.
select top 1 m.meslek, COUNT(s.faturaKod) as siparis_sayisi
from tblSiparis s
join tblKullanici k on s.kullaniciKod=k.kullaniciKod
join tblMeslek m on m.meslekKod=k.meslekKod
group by m.meslek
ORDER BY COUNT(S.faturaKod)
