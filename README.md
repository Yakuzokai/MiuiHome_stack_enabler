# MiuiHome_stack_enabler

**HyperOS Launcher Stack Recents Enabler** (Magisk / KernelSU / APatch Module)  
**Author**: Kagiyama  

A systemless Magisk / KernelSU module that unlocks the hidden **3D Stacked Recents** layout in Xiaomi HyperOS System Launcher (`MiuiHome`) and enables it as the default recents view.

---

## 🌟 Features
- **Unlocks Stacked Layout**: Enables the hidden "Stack" option in `Settings -> Home screen -> Arrange items in Recents` (`TaskStackViewLayoutStyleStack`).
- **Interactive Previews**: Retains animated Lottie layout previews for Vertically, Horizontally, and Stacked modes.
- **Default Stack Recents**: Configures `task_stack_view_layout_style = 2` as the launcher's native default.
- **Persistent on Boot**: Background service automatically ensures the global setting persists across system reboots and cache wipes.
- **Systemless & Clean**: Overlays `/product/priv-app/MiuiHome/MiuiHome.apk` safely without modifying system partitions.

---

## 📱 Compatibility
- **ROM**: Xiaomi HyperOS 1.0 / 2.0 / 3.0+ (Ported or Official)
- **Android Version**: Android 14 (A14) / Android 15 (A15)
- **Root Solutions**: KernelSU, Magisk, APatch

---

## 🚀 Installation
1. Download the latest flashable zip from [Releases](https://github.com/Yakuzokai/MiuiHome_stack_enabler/releases) or build it using the repository.
2. Open **KernelSU** / **Magisk** / **APatch**.
3. Select **Modules** $\rightarrow$ **Install from storage**.
4. Choose `MiuiHome_stack_enabler_v1.0.0.zip`.
5. Reboot your device.

---

## ⚙️ Manual Verification
To verify or change the recents layout manually via ADB:
```bash
# Set to Stack (2)
settings put global task_stack_view_layout_style 2

# Set to Horizontally (1)
settings put global task_stack_view_layout_style 1

# Set to Vertically (0)
settings put global task_stack_view_layout_style 0
```

---

## 👤 Credits & Author
- **Author**: Kagiyama
- Developed for Xiaomi HyperOS Community.
