-- Selecione todos players Brasileiros que nasceram em 1992
SELECT *
FROM tb_players
WHERE descCountry = 'br' AND
      strftime ('%Y', dtBirth) = '1992'

-- O motivo de não ter usado o LIKE é o custo computacional