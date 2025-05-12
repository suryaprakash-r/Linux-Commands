👤 Linux User Management – Commands with Explanation



### 1. Create a New User (Recommended Way)
```bash
sudo adduser john
```
Creates the user `john`, sets up home directory `/home/john`, and prompts for password.

---

### 2. Set or Change a User's Password
```bash
sudo passwd john
```
Sets or updates the user's password.

---

### 3. Create a User Without Prompt (Advanced)
```bash
sudo useradd -m -s /bin/bash john
```
Creates a user with home directory and shell without prompting for details.

---

### 4. Add User to a Group (e.g., sudo)
```bash
sudo usermod -aG sudo john
```
Adds `john` to the `sudo` group (admin privileges).

---

### 5. See User Details
```bash
id john
```
Shows UID, GID, and group info.

---

### 6. List All Users
```bash
cut -d: -f1 /etc/passwd
```
Lists all user accounts from `/etc/passwd`.

---

### 7. Delete a User
```bash
sudo deluser john
```
Deletes the user but retains home directory.

---

### 8. Delete User and Home Directory
```bash
sudo deluser --remove-home john
```
Deletes user and `/home/john`.

---

### 9. Change Username
```bash
sudo usermod -l newjohn john
sudo mv /home/john /home/newjohn
sudo usermod -d /home/newjohn -m newjohn
```
Renames user and updates home directory.

---

### 10. Change User's Home Directory
```bash
sudo usermod -d /custom/home -m john
```
Changes and moves the home directory.

---

### 11. Lock a User Account
```bash
sudo usermod -L john
```
Disables login for user.

---

### 12. Unlock a User Account
```bash
sudo usermod -U john
```
Enables login for user.

---

### 13. Expire a User Account
```bash
sudo usermod --expiredate 1 john
```
Expires user account immediately.

---

### 14. Check Login History
```bash
last
```
Displays recent logins.

---

### 15. Force Logout a User
```bash
pkill -KILL -u john
```
Forcefully logs out user `john`.

---

## Summary Table

| Action                  | Command Example                            |
|-------------------------|--------------------------------------------|
| Create user             | `sudo adduser john`                        |
| Set password            | `sudo passwd john`                         |
| Add to group            | `sudo usermod -aG sudo john`               |
| Delete user             | `sudo deluser john`                        |
| Delete with home        | `sudo deluser --remove-home john`         |
| Lock user               | `sudo usermod -L john`                     |
| Unlock user             | `sudo usermod -U john`                     |
| Change home directory   | `sudo usermod -d /new/home -m john`       |
| Change username         | `sudo usermod -l newname oldname`         |
| List users              | `cut -d: -f1 /etc/passwd`                  |
| View user info          | `id john`                                  |
| Expire account          | `sudo usermod --expiredate 1 john`        |
