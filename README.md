# Gaming Network Optimizer

A simple Windows batch script that temporarily stops and disables background services that can interfere with gaming performance or network stability. It allows you to quickly switch between Gaming Mode (optimized state) and Normal Mode (restores default services).

# Features

One-click Gaming Mode to stop and disable selected Windows services
Restore Mode to re-enable and restart services
Automatic Administrator privilege elevation
Simple interactive menu

# Services Managed
Windows Update (wuauserv)
Background Intelligent Transfer Service (bits)
Delivery Optimization (dosvc)
SysMain (SysMain)
Xbox Services (XblAuthManager, XblGameSave, XboxNetApiSvc)

# Usage
Run the .bat file.
Select:
1 → Optimize for Gaming (stop + disable services)
2 → Restore Normal Windows State
3 → Exit

Designed for gamers who want a quick way to reduce background activity during gaming sessions and easily revert afterward.
