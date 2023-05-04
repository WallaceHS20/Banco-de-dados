1 - select cd_nome, cd_preco_venda ,cd_data_lancamento, cd_preco_venda from cd 
where cd_preco_venda > 30.50 and cd_data_lancamento > '01/JUN/2014';

2 - select g.grav_nome, c.cd_nome
from gravadora g
left join cd c
on g.grav_codigo = c.cd_codigo;

select g.grav_nome, c.cd_nome
from gravadora g, cd c
where g.grav_codigo(+) = c.cd_codigo;

3 - select a.aut_nome, count(m.aut_codigo) as quantidade
from autor a
left join autor_musica m
on a.aut_codigo = m.aut_codigo
group by a.aut_nome, m.aut_codigo;

4 - select cd_nome,cd_preco_venda from cd order by cd_preco_venda desc
FETCH FIRST 1 ROWS ONLY;

5 - select a.aut_nome, n.mus_nome 
from autor_musica m
left outer join autor a
on a.aut_codigo = m.aut_codigo
inner join musica n
on n.mus_nome = 'Pais e Filhos';

6 - select m.mus_codigo, m.mus_nome, m.mus_duracao
from musica m
left outer join faixa f
on m.mus_codigo = f.mus_codigo and m.mus_codigo = 1
inner join cd c
on f.cd_codigo = c.cd_codigo; 