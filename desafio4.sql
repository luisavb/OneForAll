SELECT -- o que deve ser mostrado
	us.usuario, 
    IF(MAX(YEAR(repro.data_reproducao)) >= '2021','Usuário ativo','Usuário inativo') AS condicao_usuario -- MAX para reconhecer o YEAR?
FROM SpotifyClone.Usuarios AS us -- de onde vem
	INNER JOIN SpotifyClone.Reproducoes AS repro -- juntando as duas tabelas
		ON  us.usuarios_id=repro.usuario -- as chaves que são correlacionadas
	GROUP BY us.usuario -- agrupar pelos usuarios
	ORDER BY us.usuario;