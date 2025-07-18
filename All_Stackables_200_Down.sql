UPDATE acore_world.item_template JOIN acore_world.item_template_backup ON acore_world.item_template_backup.entry = acore_world.item_template.entry
  SET acore_world.item_template.stackable = acore_world.item_template_backup.stackable;
