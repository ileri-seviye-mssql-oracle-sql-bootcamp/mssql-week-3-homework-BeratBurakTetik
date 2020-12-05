--Hiç sipariþ vermeyen müþterilerin mesleklerini listeleyiniz.
select m.meslek
from tblMeslek m 
inner join tblKullanici k on k.meslekKod=m.meslekKod 
where k.kullaniciKod not in (select kullaniciKod from tblSiparis)