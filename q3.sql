--Hi� sipari� vermeyen m��terilerin mesleklerini listeleyiniz.
select m.meslek
from tblMeslek m 
inner join tblKullanici k on k.meslekKod=m.meslekKod 
where k.kullaniciKod not in (select kullaniciKod from tblSiparis)