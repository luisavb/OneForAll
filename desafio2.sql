-- não funciona aqui
-- SELECT
-- COUNT(DISTINCT musicas_id) AS 'cancoes',
-- COUNT(DISTINCT artistas_id) AS 'artistas',
-- COUNT(DISTINCT albuns_id) AS 'albuns'
-- FROM get_all_data;

SELECT
    COUNT(DISTINCT mus.musicas_id) AS 'cancoes',
    COUNT(DISTINCT art.artistas_id) AS 'artistas',
    COUNT(DISTINCT alb.albuns_id) AS 'albuns'
FROM 
    SpotifyClone.Musicas AS mus,
    SpotifyClone.Artistas AS art,
    SpotifyClone.Albuns AS alb;