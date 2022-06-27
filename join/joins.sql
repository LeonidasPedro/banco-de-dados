--Listar o nome, email e telefone do usuarios que pegaram emprestado algum livro do setor id 2 
--(caso não tenha setor id 2 no banco de dados de vocês, substituir por um id existente);

select 
    u.nome,
    u.email,
    u.telefone
from emprestimos as e
join usuarios as u on (e.id_usuario = u.id)
join emprestimos_livros as el on (e.id = el.id_emprestimo)
join livros as l on (el.id_livro = l.id)

WHERE l.id_sessao = 4

--------------------------------------------------------------------------------------------------------

--Listar título, nome da sessão e nome do autor dos livros que o usuário id 5 pegou emprestado 
--(mesma lógica da anterior, caso não tenha usuario com id 5, substituir por um id de usuario existente)

select 
    l.titulo,
    s.nome,
    l.nome_autor
from emprestimos as e
join emprestimos_livros as el on (e.id = el.id_emprestimo)
join livros as l on (el.id_livro = l.id)
join sessoes as s on (l.id_sessao = s.id)

WHERE e.id_usuario = 3

--------------------------------------------------------------------------------------------------------

--Listar o título e data de publicação dos livros emprestados para usuarios com DDD (55)

select 
    l.titulo,
    to_char(l.publicacao, 'DD/MM/YYYY')
from emprestimos as e
join usuarios as u on (e.id_usuario = u.id)
join emprestimos_livros as el on (e.id = el.id_emprestimo)
join livros as l on (el.id_livro = l.id)


WHERE u.telefone like '(49)%'