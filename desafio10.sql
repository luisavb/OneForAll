SELECT 
	m.musica AS 'nome',
    COUNT(r.musica) AS 'reproducoes'
FROM SpotifyClone.Reproducoes AS r
	INNER JOIN SpotifyClone.Musicas AS m
		ON r.musica = m.musicas_id
	INNER JOIN SpotifyClone.Usuarios AS u
		ON u.usuarios_id = r.usuario
	INNER JOIN SpotifyClone.Planos AS p
		ON u.tipos_plano = p.planos_id
WHERE p.plano = 'pessoal' OR p.plano = 'gratuito'
GROUP BY nome
ORDER BY nome;