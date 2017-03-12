predicates
nondeterm
putra(symbol,symbol)

nondeterm
saudara_perempuan(symbol,symbol)
saudara_laki(symbol,symbol)
menikah(string,string)
ayah(symbol,symbol)
kakek(symbol,symbol)
nondeterm
ipar_perempuan(symbol,symbol)

clauses
putra(ikhsan,bentang).
saudara_perempuan(dini,dina).
saudara_laki(adi,lintang).
menikah(ikhsan,dini).
menikah(lintang,surga).

ayah(A,B):-
	putra(B,A).

kakek(A,B):-
ayah(A,C),
ayah(C,B).

ipar_perempuan(A,B):-
menikah(A,C),
saudara_perempuan(C,B).

ipar_perempuan(A,B):-
saudara_laki(A,C), 
menikah(C,B).

goal
ipar_perempuan(adi,Y).