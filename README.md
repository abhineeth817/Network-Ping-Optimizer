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

# When to use 
I was experiencing non-stop Ping Spikes and packet loss in Valorant for a long time, until I noticed my Windows data usage page and saw that Windows update was consuming 16GB data in the last 7 days, while the next highest is Valorant with only 1GB. I had gaming mode enabled, windows updates paused, metered connection set to On, and disable download update from other windows devices Off, and this still happened. So, I tried manually disabling the Windows update services from services.msc and this fixed my issues instantly like magic, but windows kept restarting them (through Task scheduler which you cannot disable). So just run this script before you start your gaming session, it doesn't cause any permanent damage to windows (I've tried other scripts that do and had to reinstall windows) and you don't even need to re-enable the services as windows does it automatically.
You might have to run the script multiple times in a single gaming session as windows might restart some services in the middle of games sessions.

# Usage
Run the .bat file.
Select:

1 → Optimize for Gaming (stop + disable services)

2 → Restore Normal Windows State

3 → Exit

Designed for gamers who want a quick way to reduce background activity during gaming sessions and easily revert afterward.
