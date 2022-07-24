SELECT -- o que deve ser mostrado
	ROUND(MIN(p.valor_plano), 2) AS 'faturamento_minimo',
    MAX(p.valor_plano) AS 'faturamento_maximo',
    ROUND(AVG(p.valor_plano), 2) AS 'faturamento_medio',
    SUM(p.valor_plano) AS 'faturamento_total'
FROM SpotifyClone.Planos AS p -- de onde vem
	INNER JOIN SpotifyClone.Usuarios AS us -- juntando as duas tabelas
		ON  us.tipos_plano = p.planos_id; -- as chaves que são correlacionadas