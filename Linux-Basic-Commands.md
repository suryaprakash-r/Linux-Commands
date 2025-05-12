# Linux Basic Commands Guide

## 1. `ls` - List Directory Contents

- **Syntax:** `ls [options] [directory]`
- **Description:** Lists files and directories in the current or specified directory.
- **Examples:**
  - `ls` – Lists contents of the current directory.
  - `ls -l` – Lists with detailed info (permissions, size, etc.).
  - `ls -a` – Includes hidden files (starting with `.`).

---

## 2. `pwd` - Print Working Directory

- **Syntax:** `pwd`
- **Description:** Displays the full path of the current directory.
- **Example:**  
  - `/home/user/projects`

---

## 3. `cd` - Change Directory

- **Syntax:** `cd [directory]`
- **Description:** Moves between directories.
- **Examples:**
  - `cd /home/user` – Goes to that path.
  - `cd ..` – Moves one level up.
  - `cd` – Takes you to the home directory.

---

## 4. `mkdir` - Make Directory

- **Syntax:** `mkdir [directory-name]`
- **Description:** Creates a new directory.
- **Examples:**
  - `mkdir myfolder` – Creates a folder named `myfolder`.
  - `mkdir -p dir1/dir2` – Creates nested directories.

---

## 5. `rmdir` - Remove Empty Directory

- **Syntax:** `rmdir [directory-name]`
- **Description:** Deletes an empty directory.
- **Example:**  
  - `rmdir myfolder`

---

## 6. `rm` - Remove Files or Directories

- **Syntax:** `rm [options] [file/directory]`
- **Description:** Deletes files or directories.
- **Examples:**
  - `rm file.txt` – Removes a file.
  - `rm -r folder` – Removes a folder and its contents.
  - `rm -rf folder` – Force deletes a folder and suppresses warnings.

---

## 7. `mv` - Move or Rename Files

- **Syntax:** `mv [source] [destination]`
- **Description:** Moves or renames files or directories.
- **Examples:**
  - `mv file1.txt /tmp/` – Moves file to `/tmp/`.
  - `mv oldname.txt newname.txt` – Renames the file.

---

## 8. `cp` - Copy Files or Directories

- **Syntax:** `cp [source] [destination]`
- **Description:** Copies files and directories.
- **Examples:**
  - `cp file.txt /tmp/` – Copies file to `/tmp/`.
  - `cp -r dir1 dir2` – Copies directory recursively.

---

## 9. `cat` - Concatenate and Display Files

- **Syntax:** `cat [file]`
- **Description:** Displays contents of a file.
- **Examples:**
  - `cat file.txt` – Shows the file's contents.
  - `cat file1 file2` – Combines and shows both.

---

## 10. `tail` - View End of File

- **Syntax:** `tail [options] [file]`
- **Description:** Shows the last 10 lines of a file by default.
- **Examples:**
  - `tail file.txt` – Shows last 10 lines.
  - `tail -n 20 file.txt` – Shows last 20 lines.
  - `tail -f log.txt` – Live updates when file changes (useful for logs).

---

## 11. `head` - View Start of File

- **Syntax:** `head [options] [file]`
- **Description:** Shows the first 10 lines of a file by default.
- **Examples:**
  - `head file.txt`
  - `head -n 5 file.txt` – Shows first 5 lines.

---

## 12. `less` - View Large Files One Page at a Time

- **Syntax:** `less [file]`
- **Description:** Opens a file for paginated reading.
- **Tips:**
  - Use `Up`/`Down` arrows to scroll.
  - Press `q` to quit.

---

## 13. `man` - Manual Pages for Commands

- **Syntax:** `man [command]`
- **Description:** Shows detailed help for a command.
- **Examples:**
  - `man ls` – Opens the manual for `ls`.

---

📝 **Tip:** Use `--help` with most commands (like `ls --help`) for quick usage help.
