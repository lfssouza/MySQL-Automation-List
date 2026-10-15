DELIMITER $$

create procedure localizar_nulos()
begin

DECLARE done INT DEFAULT FALSE;
DECLARE v_tabela varchar(255);
DECLARE v_coluna varchar(255);
DECLARE v_sql varchar(255);

DECLARE cur cursor for select table_name, column_name from information_schema.columns where table_schema = database() and data_type in ( 'varchar', 'char', 'text', 'mediumtext', 'longtext', 'tinytext');

DECLARE continue handler for not found set done = true;

DROP temporary table if exists RelatorioEspacos;

create temporary table RelatorioEspacos(
	Tabela varchar(255),
    Coluna varchar(255),
    Qtd_Espacos_ou_Vazios int,
    Qtd_Nulos int
);

open cur;

read_loop:LOOP fetch cur INTO v_tabela, v_coluna;
if done then leave read_loop;
end if;

 SET @v_sql = CONCAT(
            'INSERT INTO RelatorioEspacos ',
            '(Tabela, Coluna, Qtd_Espacos_ou_Vazios, Qtd_Nulos) ',
            'SELECT ',
            '''', v_tabela, ''', ',
            '''', v_coluna, ''', ',
            'SUM(CASE ',
            'WHEN TRIM(`', v_coluna, '`) = '''' ',
            'THEN 1 ELSE 0 END), ',
            'SUM(CASE ',
            'WHEN `', v_coluna, '` IS NULL ',
            'THEN 1 ELSE 0 END) ',
            'FROM `', v_tabela, '`'
        );

PREPARE stmt FROM @v_sql;
execute stmt;
deallocate prepare stmt;

end loop;
close cur;

select * from RelatorioEspacos where Qtd_Espacos_ou_Vazios > 0 or Qtd_Nulos > 0 order by Tabela, Coluna;

drop temporary table RelatorioEspacos;

END $$

DELIMITER ;
