# How to delete a plugin

Steps to delete the plugin (if doesn't used for too long or no necessity to keep it):

    1. Delete tables named with this pattern `glpi_plugin_'plugin_name'_*` from database, 
    2. Delete rows contain the plugin information in `glpi_plugins` table,
    3. Delete plugin folder on `plugins/'plugin_name'`,
    4. Delete rows that contain plugin name pattern in `glpi_crontasks` (pattern: `Plugin%s` or `GlpiPlugin\\\\%s\\\\`)
    5. It could be done by do step 1-3, then delete crontasks, logs and hooks manually by UI action button (brush icon (clean_plugin), right of the plugin to be deleted) 