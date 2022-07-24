SELECT
	art.artista,
    alb.album,
    COUNT(seg.artistas_seguidos) AS 'seguidores'
FROM SpotifyClone.Artistas AS art
	INNER JOIN SpotifyClone.Albuns AS alb 
		ON art.artistas_id = alb.artista
	INNER JOIN SpotifyClone.Seguindo AS seg
		ON art.artistas_id = seg.artistas_seguidos
	GROUP BY art. artista, alb.album -- como tem mais de um album por artista, é importante agrupar por artista e por album
    ORDER BY seguidores DESC, artista ASC, album ASC;