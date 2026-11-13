#!/system/bin/sh
SKIPUNZIP=0

ui_print "************************************************"
ui_print "*      HyperOS Launcher Stack Recents Enabler  *"
ui_print "*                 Author: Kagiyama             *"
ui_print "************************************************"

ui_print "- Setting up permissions..."
set_perm_recursive "$MODPATH" 0 0 0755 0644
set_perm "$MODPATH/service.sh" 0 0 0755
[ -f "$MODPATH/post-fs-data.sh" ] && set_perm "$MODPATH/post-fs-data.sh" 0 0 0755
[ -f "$MODPATH/uninstall.sh" ] && set_perm "$MODPATH/uninstall.sh" 0 0 0755

ui_print "- Applying default Stack layout setting..."
settings put global task_stack_view_layout_style 2

ui_print "- Clearing Launcher dalvik-cache..."
rm -f /data/dalvik-cache/arm64/product@priv-app@MiuiHome@MiuiHome.apk*

ui_print "************************************************"
ui_print "* Installation complete! Enjoy Stack Recents!  *"
ui_print "************************************************"
