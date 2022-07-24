SELECT art.artista, alb.album
FROM SpotifyClone.Artistas AS art
	INNER JOIN SpotifyClone.Albuns AS alb 
		ON art.artistas_id = alb.artista
WHERE art.artista = 'Walter Phoenix';