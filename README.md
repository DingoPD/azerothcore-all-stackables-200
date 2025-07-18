# All stackables to 200

SQL script to change all stackables to 200 or more.
Things like ammo that can stack to 1000 aren't changed only stuff that stacks to under 200.

Use `All_Stackables_200_Up.sql` in **acore_world** to apply the changes. 

If you'd like to revert them, use `All_Stackables_200_Down.sql` in **acore_world**.

---
Whenever messing with the server database, make sure you back it up first, things can go wrong.
If your server breaks, you get to keep all the pieces.
---

This is a modified version of the original project by AsgavinYT. 

It automatically backs up the original stack values in item_templates_backup table when `All_Stackables_200_Up.sql` is executed.
Then uses that backup table to restore original values when `All_Stackables_200_Down.sql` is ran.

This fork also removes any queries that manipulate maxcount, as that is manipulating max unique count instead of stack size.

If you used the original scripts, and you wish to reset the stack sizes to original values, you can use the `item_template_backup.sql` file to import a backup table with original stack values (as of 071725).
Then you will be able to use the `All_Stackables_200_Down.sql` script from this fork.

---

If you maxcount values for items got hosed, you have two choices:
  The first and easier/faster one is to just drop item_template table and reimport it from the `~/azerothcore/data/sql/base/db_world/item_template.sql` file.
  
  ***<ins>!!! This will erase any custom items or changes you've made !!! Make sure you back up the table first.</ins>***
  
  The second choice would be to import original item_template table under different table name (for example item_template_backup), then you could use query like this to copy the maxcount values from the original table into yours:

```
UPDATE acore_world.item_template JOIN acore_world.item_template_backup
 ON acore_world.item_template_backup.entry = acore_world.item_template.entry
 SET acore_world.item_template.maxcount = acore_world.item_template_backup.maxcount;
```
   
  Once the query script finishes running without errors, you can safely drop the item_template_backup table.
