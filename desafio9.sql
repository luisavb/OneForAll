SELECT 
	COUNT(r.usuario) AS 'quantidade_musicas_no_historico'
FROM SpotifyClone.Reproducoes AS r
	INNER JOIN SpotifyClone.Usuarios AS u
		ON u.usuarios_id = r.usuario
WHERE u.usuario = 'Bill';