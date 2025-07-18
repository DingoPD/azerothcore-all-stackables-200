CREATE TABLE item_template_backup (
  entry int unsigned NOT NULL DEFAULT '0',
  stackable int DEFAULT '1', 
  PRIMARY KEY (entry)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Item Stack size backup';

INSERT INTO acore_world.item_template_backup (entry,stackable) SELECT entry,stackable FROM acore_world.item_template WHERE acore_world.item_template.stackable > 1;
UPDATE acore_world.item_template SET stackable=200 WHERE stackable > 1 and stackable < 200;
