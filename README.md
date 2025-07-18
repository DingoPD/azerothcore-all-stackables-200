# All stackables to 200

SQL script to change all stackables to 200 or more.
Things like ammo that can stack to 1000 aren't changed only stuff that stacks to under 200.

Use `All_Stackables_200_Up.sql` in **acore_world** to apply the changes. 

If you'd like to revert them, use `All_Stackables_200_Down.sql` in **acore_world**.

This is a modified version of the original project by AsgavinYT. 

It automatically backs up the original stack values in item_templates_backup table when `All_Stackables_200_Up.sql` is executed.
Then uses that backup table to restore original values when `All_Stackables_200_Down.sql` is ran.

This fork also removes any queries that manipulate maxcount, as that is manipulating max unique count instead of stack size.
