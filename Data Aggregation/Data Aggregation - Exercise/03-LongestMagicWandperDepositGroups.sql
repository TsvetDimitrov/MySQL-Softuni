SELECT deposit_group, MAX(magic_wand_size) AS 'longest_magic_wand_size' FROM wizzard_deposits
GROUP BY deposit_group
ORDER BY longest_magic_wand_size ASC, deposit_group ASC;