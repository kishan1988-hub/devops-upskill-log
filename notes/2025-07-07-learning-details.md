# DevOps Learning Summary  
**Date:** 2025-07-07  

---

## 🛠 Topics Covered & Practiced

### 1. Linux Permissions  
**What I Practiced:**  
- Used `chmod +x`, `chmod 000`, `chmod 755` to test execution and lock files.  
- Changed file ownership using `chown root` and restored it.  
- Observed permission changes with `ls -l`.

---

### 2. Linux Tools (grep, find, tail)  
**What I Practiced:**  
- Filtered log entries using `grep "ERROR"` and `grep -c`.  
- Located `.log` files and recently modified files using `find`.  
- Used `find -exec` to delete files.  
- Monitored logs in real-time using `tail -f`.

---

### 3. Bash Scripting  
**What I Practiced:**  
- Wrote `healthcheck.sh` script to check disk, memory (via `vm_stat`), and top CPU processes.  
- Used variables, redirection (`>>`), and commands like `ps`, `df`.  
- Made script executable with `chmod +x` and ran it.  
- Output saved to log file with date-based naming.

---

### 4. awk  
**What I Practiced:**  
- Extracted columns using awk print commands.  
- Filtered by conditions (`$2 > 50`) and summed values using `END`.  
- Cleaned text using `gsub` and printed formatted output from `vm_stat`, `ps aux`, and `df`.

---

### 5. DevOps Workflow Setup  
**What I Practiced:**  
- Initialized a local Git repo and connected it to GitHub via SSH.  
- Created a helper script (`new-note.sh`) for auto-generating dated Markdown files.  
- Created `push-notes.sh` to automate staging, committing, and pushing notes to GitHub.

---
