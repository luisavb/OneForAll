SELECT -- o que deve ser mostrado
	mus.musica AS 'cancao',
    COUNT(repro.musica) AS 'reproducoes'
FROM SpotifyClone.Musicas AS mus -- de onde vem
	INNER JOIN SpotifyClone.Reproducoes AS repro -- juntando as duas tabelas
		ON  mus.musicas_id = repro.musica -- as chaves que são correlacionadas
	GROUP BY mus.musica -- agrupar pelas musicas
	ORDER BY reproducoes DESC, cancao ASC -- ordem decrescente de reproducao e crescente de nome
    LIMIT 2; -- limitado as duas mais tocadas