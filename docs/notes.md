# Technical Notes

## Docker Desktop Problem & How I Solved It

### The Problem

After installing **Docker Desktop**, it wouldn't start. Every time I tried, I got the error: **"Virtualization support not detected"**, and the Docker Engine remained stuck at **“Starting the Docker Engine…”**.  
This issue took me **almost two full days** of attempts, including restarting the system multiple times and testing different solutions.

### Cause

1. Virtualization was turned off in BIOS/UEFI.
2. Some required Windows features like **Hyper-V**, **Virtual Machine Platform**, and **Windows Subsystem for Linux (WSL)** were not enabled.

### Steps I Took to Fix It

1. Entered BIOS/UEFI and enabled **Virtualization Technology (Intel VT-x / AMD-V)**.
2. Opened **Windows Features** and checked:
   - Hyper-V
   - Virtual Machine Platform
   - Windows Subsystem for Linux (WSL)
3. Ran `WSL --shutdown` to reset the WSL environment.
4. Opened **PowerShell as Admin** to manually ensure virtualization features were enabled.
5. Restarted the system.

### Result

Docker Desktop started successfully, the icon turned green, and the environment was fully ready to run containers and projects.

---

## README.md Formatting Challenge

Even though writing the `README.md` seemed simple, I spent a long time fixing formatting issues due to incorrect Markdown code block syntax.  
The solution was simple: use the proper code block markers (```), but discovering this took me **almost half a day**.  
This taught me that **small details in documentation can take significant time to figure out**, especially when working on a project for the first time.

---

## Most Important Git/GitHub Lesson Learned

The most valuable lesson I learned is how Git and GitHub help organize work and protect progress.  
At one point, my laptop shut down unexpectedly, but I didn’t lose any work because all changes were safely stored and versioned on GitHub.  
This experience showed me the real importance of **version control** in professional development and project management.

---

# Deployment Notes

- During this assignment, I spent four consecutive days trying to deploy the project on a VPS.  
- Unfortunately, I could not find a free VPS provider that allowed me to deploy the project successfully.  
- Despite this, I understood the assignment completely and learned all the required steps for deploying a Dockerized project.  
- To demonstrate the workflow, I used a temporary provider (Railway) to run the Docker commands and take screenshots for the assignment.  
- I made sure to document all the deployment steps, Dockerfile updates, and README instructions properly.  
- Overall, I exerted effort and followed all required steps, but the limitations of free VPS providers prevented a full production deployment.
