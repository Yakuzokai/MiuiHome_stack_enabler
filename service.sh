#!/system/bin/sh
MODDIR=${0%/*}

# Wait for boot completion
while [ "$(getprop sys.boot_completed)" != "1" ]; do
    sleep 1
done

# Ensure task_stack_view_layout_style is set to 2 (Stack)
settings put global task_stack_view_layout_style 2

