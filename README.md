# ⚡ ZyqorinX 24/7 Cloud Environment (Google IDX)

An automated interactive script for Google IDX that setups a **24/7 Virtual Linux Workspace (VPS)** with root features or hosts a high-performance **Minecraft Server** with Pterodactyl panel emulation and `playit.gg` auto-tunneling.

---

## 🚀 Features

*   **⚡ ZyqorinX Terminal Branding:** Sleek design upon workspace startup.
*   **💻 Full Root VPS Mode:** Installs Node.js, Python, Java, Git, and enables directory creation (`sudo mkdir`, `etc` files).
*   **🎮 Minecraft Server Engine:** Supports PaperMC, Purpur, Forge, and Fabric across popular versions.
*   **🌐 Network Tunneling:** Integrated `playit.gg` to claim a free server IP instantly.
*   **🔄 Fully 24/7 Uptime:** Built-in background Python keep-alive web server bound to port `8080`.

---

## 🛠️ Deployment Instructions

### Step 1: Import to Google IDX
1. Go to [Google IDX](https://idx.google.com/).
2. Click on **Import a Repository**.
3. Paste your GitHub Repository URL and hit import.

### Step 2: Make it Fully 24/7 (Crucial)
To prevent Google IDX from falling asleep when you close your browser tab, follow these steps:

1. Once the project loads, Google IDX will expose a web server preview URL on port **8080**.
2. Copy that Web Preview URL.
3. Go to a free uptime monitor service like [UptimeRobot](https://uptimerobot.com/) or [Cron-Job.org](https://cron-job.org/).
4. Create an HTTP monitor pointing to your IDX preview URL and set the check interval to **Every 5 Minutes**.
5. This continuous automated ping mimics activity and prevents the container from timing out!

---

## 📝 Configuration Layout

*   `setup.sh` — The core terminal automation matrix.
*   `.idx/dev.nix` — Environment engine loading all binary packages.

