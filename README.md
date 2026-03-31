# Linux# OSS Audit Project

## Student Details

Name: Anuj Chauhan
Registration Number: 24MIP10012
Course: Open Source Software

---

## Chosen Software

For this project, I chose **Git** as the open-source software to study. It is widely used in software development and is an essential tool for version control.

---

## About This Repository

This repository contains five shell scripts that were developed as part of the OSS audit assignment. These scripts are designed to explore basic Linux concepts and demonstrate how open-source tools work in a system environment.

Each script focuses on a specific task like system information, package checking, disk analysis, log processing, and generating a small open-source philosophy statement.

---

## Scripts Overview

**Script 1 – System Identity Report**
This script prints general system information such as kernel version, current user, uptime, and OS details. It gives a quick overview of the system environment.

**Script 2 – Package Inspector**
This script checks whether a given package (like git) is installed on the system. It also displays version and description details.

**Script 3 – Disk and Permission Auditor**
This script loops through important system directories and shows their size along with permissions and ownership.

**Script 4 – Log File Analyzer**
This script reads a log file and counts how many times a specific keyword appears. It also shows the last few matching lines.

**Script 5 – Open Source Manifesto Generator**
This is an interactive script that asks a few questions and generates a short text file describing a personal view on open source.

---

## How to Run the Scripts

Clone the repository:
git clone https://github.com/anuujjjj/Linux.git

Go into the scripts folder:
cd oss-audit-rollnumber/scripts

Give execute permission:
chmod +x *.sh

Run any script:
./script1_system_identity.sh
./script2_package_inspector.sh git
./script3_disk_auditor.sh
./script4_log_analyzer.sh /var/log/syslog error
./script5_manifesto.sh

---

## Requirements

* Linux system (Ubuntu recommended)
* Bash shell
* Basic utilities like grep, awk, dpkg or rpm

---

## Notes

The scripts were tested on Ubuntu. Some commands may slightly differ on other distributions, but overall functionality remains the same.

---

## Final Thought

Working on this project helped me understand how much of modern computing depends on open-source software. Tools like Git are not just utilities but part of a larger ecosystem built by communities.
