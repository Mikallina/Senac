
DELIMITER //
CREATE EVENT IF NOT EXISTS `backup_event`
ON SCHEDULE EVERY 1 DAY
DO
BEGIN
    SET @backup_path = 'C:\Users\mi_bo\OneDrive\Documentos\Cursos\Senac\MyWorkbench\12-2023\Atividade 1';
    SET @backup_filename = CONCAT(@backup_path, 'uc4atividades_backup_', DATE_FORMAT(NOW(), '%Y%m%d%H%i%s'), '.sql');
    SET @mysqldump_cmd = CONCAT('mysqldump -u root -psenha uc4atividades > "', @backup_filename, '"');
    SELECT sys_exec(@mysqldump_cmd);
END;
//
DELIMITER ;

SET GLOBAL event_scheduler = ON;