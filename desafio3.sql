SELECT -- o que deve ser mostrado
    us.usuario,
    COUNT(repro.musica)  AS 'qtde_musicas_ouvidas',
    ROUND(SUM(mus.duracao_segundos/60), 2) AS 'total_minutos' -- é necessário arrendondar
FROM -- de onde vem
	SpotifyClone.Usuarios AS us
    INNER JOIN SpotifyClone.Reproducoes AS repro -- juncao com reproducoes
		ON us.usuarios_id = repro.usuario -- as chaves que sao ligadas
	INNER JOIN SpotifyClone.Musicas AS mus -- juncao com musicas
		ON repro.musica = mus.musicas_id
	GROUP BY us.usuarios_id -- os usuarios são o foco, para quem tudo é agrupado
    ORDER BY us.usuario; -- ordenandod e forma ascendente 