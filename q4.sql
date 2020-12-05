--01.02.2007 - 05.03.2014 tarihleri aras�nda hangi �r�nden ka� adet sipari� edildi�ini bulan SQL kodunu yaz�n�z.
select u.urunAd, SUM(sd.adet) as SiparisAdet
from tblSiparis s 
join tblSiparisDetay sd on s.faturaKod=sd.faturaKod
join tblUrun u on u.urunKod=sd.urunKod
where s.siparisTarih between '01.02.2007' and '05.03.2014'
group by u.urunAd