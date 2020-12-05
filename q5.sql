--Ýptal edilen sipariþlerde bulunan ürünleri listeyiniz.
select distinct u.urunAd
from tblSiparis s
join tblSiparisDetay sd on s.faturaKod=sd.faturaKod
join tblUrun u on sd.urunKod=u.urunKod
join tblSiparisDurum sdur on sdur.siparisDurumKod=s.siparisDurumKod 
where sdur.siparisDurumKod=10