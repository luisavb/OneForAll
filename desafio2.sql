-- with get_all_data as (
-- select 
-- 	mus.musicas_id,
--     art.artistas_id,
--     alb.albuns_id 
-- from SpotifyClone.Musicas as mus,  SpotifyClone.Artistas as art, SpotifyClone.Albuns as alb
-- )

-- select
-- count(distinct musicas_id) as cancoes,
-- count(distinct artistas_id) as artistas,
-- count(distinct albuns_id) as albuns
-- from get_all_data;

SELECT -- o que deve ser mostrado
    COUNT(DISTINCT mus.musicas_id) AS 'cancoes', -- sem o distinct tudo se multiplica
    COUNT(DISTINCT art.artistas_id) AS 'artistas',
    COUNT(DISTINCT alb.albuns_id) AS 'albuns'
FROM -- de onde vem
    SpotifyClone.Musicas AS mus,
    SpotifyClone.Artistas AS art,
    SpotifyClone.Albuns AS alb;