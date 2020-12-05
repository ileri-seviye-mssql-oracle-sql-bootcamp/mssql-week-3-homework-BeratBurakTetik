--Adý A ile baþlayýp soyadýnda ak geçen müþterilerden en fazla sipariþ vereni bulunuz.
select top 1 k.kullaniciAd, count(s.kullaniciKod)
from tblKullanici k 
join tblSiparis s on s.kullaniciKod=k.kullaniciKod
where k.kullaniciKod in (select k.kullaniciKod
						from tblKullanici k
						where k.isim like 'A%' and k.soyad like '%ak%')
group by k.kullaniciAd
order by count(s.kullaniciKod)
