-- source REPLACE: https://www.w3schools.com/sql/func_sqlserver_replace.asp
SELECT 
	musica AS 'nome_musica',
    CASE 
		WHEN musica LIKE '%Streets' THEN REPLACE (musica, 'Streets', 'Code Review')
        WHEN musica LIKE '%Her Own' THEN REPLACE (musica, 'Her Own', 'Trybe')
        WHEN musica LIKE '%Inner Fire' THEN REPLACE (musica, 'Inner Fire', 'Project')
        WHEN musica LIKE '%Silly' THEN REPLACE (musica, 'Silly', 'Nice')
        WHEN musica LIKE '%Circus' THEN REPLACE (musica, 'Circus', 'Pull Request')
        ELSE musica
	END AS 'novo_nome'
FROM SpotifyClone.Musicas
WHERE musica LIKE '%Streets' 
    OR musica LIKE '%Her Own' 
    OR musica LIKE '%Inner Fire' 
    OR musica LIKE '%Silly' 
    OR musica LIKE '%Circus'
ORDER BY nome_musica;
