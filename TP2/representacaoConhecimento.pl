%----- Utentes -----


excecao( utente( 12,joaquim,I,morada( ‘Rua do Limoeiro’ , ‘Amais’ , ‘Viana do Castelo’ ) ) ) :-
	I >= 60,
	I =< 80.

utente( 13,marcelo,45,xpto115 ).
excecao( utente( ID,N,I,L ) ) :-
	utente( ID,N,I,xpto115 ).
nulo(xpto115).

+utente( ID,N,I,L ) :: ( solucoes( ID,( utente( 13,N,I,M ),nao( nulo(M) ) ),R )
						comprimento( R,N ),
						N==0
						).

excecao( utente( 12,joaquim,I,morada( ‘Rua dos Loiros’ , ‘Caldelas’ , ‘Guimaraes’ ) ) ) :-
	I >= 8,
	I =< 12.

%-------- Prestador -------

prestador( 12,joao,xpto171,'Hospital do Porto' ).
excecao( prestador( ID,N,E,L ) ) :-
	utente( ID,N,xpto171,L ).
nulo(xpto171).

+prestador( ID,N,E,L ) :: ( solucoes( ID,( prestador( 12,N,I,L ),nao( nulo(I) ) ),R )
							comprimento( R,N ),
							N==0
						  ).

excecao( prestador( 13,julia,E,L ) ) :-
	E == neurocirurgia,
	L == 'Hospital do Porto'.
excecao( prestador( 13,julia,E,L ) ) :-
	E == neurocirurgia,
	L == 'Hospital de Guimaraes'.
excecao( prestador( 13,julia,E,L ) ) :-
	E == neurologia,
	L == 'Hospital do Porto'.
excecao( prestador( 13,julia,E,L ) ) :-
	E == neurologia,
	L == 'Hospital de Guimaraes'.

prestador( 14,renato,xpto145,xpto167 ).
excecao( prestador( ID,N,E,L ) ) :-
	prestador( ID,N,xpto145,xpto167 ).

%------- Cuidados --------

cuidado( 12,data( 1,6,2018 ),12,14,'exame',50,xpto168 ).
excecao( cuidado( ID,D,U,P,Desc,C,I ) ) :-
	cuidado( ID,D,U,P,Desc,C,xpto168 ).

cuidado( 13,data( 1,7,2018 ),13,12,'rotina',10,'Hospital do Porto' ).

cuidado( 14,data( 4,7,2018 ),14,11,xpto112,xpto999,'Hospital do Porto' ).
excecao( cuidado( ID,D,U,P,Desc,C,I ) ) :-
	cuidado( ID,D,U,P,xpto112,xpto999,I ).
nulo(xpto112).

+cuidado( ID,D,U,P,Desc,C,I ) :: ( solucoes( ID,( cuidado( 14,D,U,P,Des,C,I ),nao( nulo(Des) ) ),R )
								   comprimento( R,N ),
								   N==0
						  	     ).