<div align="center">

# ⚡ Awesome Alias

**A personal collection of shell aliases that boost productivity and let you type fewer characters for everyday terminal commands.**

[![License](https://img.shields.io/badge/license-MIT-green.svg)](LICENSE)
[![Python](https://img.shields.io/badge/python-3.9%2B-blue.svg?logo=python&logoColor=white)](https://www.python.org/)
[![Shell](https://img.shields.io/badge/shell-zsh%20%7C%20bash-1a1a1a.svg?logo=gnu-bash&logoColor=white)](#-compatibility)
[![Made with questionary](https://img.shields.io/badge/CLI-questionary-ff69b4.svg)](https://github.com/tmbo/questionary)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](#-contributing)

</div>

---

## 📖 About

**Awesome Alias** is an interactive installer that gathers all the aliases defined in this repo, merges them into a single file in your home directory (`~/.qvdx-aliases`), and wires it up to your shell config automatically.

No copy-pasting, no manually editing your `.zshrc` or `.bashrc` — just run the installer, pick your shell, and you're done.

## ✨ Features

- 🧠 **Auto shell detection** — detects your current shell and asks for confirmation.
- 🗂️ **Modular aliases** — organized into `.alias` files by category (`git`, `terminal`, ...).
- 📦 **Single generated file** — all aliases bundled into `~/.qvdx-aliases`.
- 🔒 **Idempotent** — won't duplicate the `source` line if it's already there.
- 🎨 **Interactive CLI** — friendly prompts powered by [questionary](https://github.com/tmbo/questionary).

## 🖥️ Compatibility

| Shell | Config file |
| ----- | ----------- |
| `zsh` | `~/.zshrc`  |
| `bash`| `~/.bashrc` |

## 🚀 Installation

### Quick install (one-liner)

```bash
curl -fsSL https://raw.githubusercontent.com/qualvalordex/awesome-alias/main/install.sh | bash
```

### Manual install

```bash
# 1. Clone the repository
git clone https://github.com/qualvalordex/awesome-alias.git
cd awesome-alias

# 2. Create and activate a virtual environment
python3 -m venv .venv
source .venv/bin/activate

# 3. Install dependencies
pip install -r requirements.txt

# 4. Run the installer
python install.py
```

After the installation completes, reload your shell:

```bash
source ~/.zshrc   # or ~/.bashrc
```

…or simply restart your terminal.

## 📚 Available Aliases

### 🌿 Git (`aliases/git.alias`)

| Alias  | Command | Description |
| ------ | ------- | ----------- |
| `gi`   | `git init` | Initialize a repository |
| `gs`   | `git status` | Show working tree status |
| `ga`   | `git add` | Stage specific files |
| `gall` | `git add .` | Stage all changes |
| `gc`   | `git commit -m` | Commit with a message |
| `gck`  | `git checkout` | Switch branches / restore files |
| `gcb`  | `git checkout -b` | Create and switch to a new branch |
| `gl`   | `git log` (pretty, one line per commit) | Compact, colorized log |
| `glo`  | `git log` (detailed) | Full commit details per entry |
| `gls`  | `git log --stat` | Log with changed-files stats |

### 💻 Terminal (`aliases/terminal.alias`)

| Alias  | Command | Description |
| ------ | ------- | ----------- |
| `..`   | `cd ..` | Go up one directory |
| `...`  | `cd ../..` | Go up two directories |
| `....` | `cd ../../..` | Go up three directories |
| `lsa`  | `ls -la` | List all files (incl. hidden) in long format |

## 🛠️ How It Works

```
aliases/*.alias  ──►  install.py  ──►  ~/.qvdx-aliases  ──►  sourced from ~/.zshrc | ~/.bashrc
```

1. `install.py` collects every `*.alias` file inside the `aliases/` directory.
2. It concatenates them into `~/.qvdx-aliases` (auto-generated — **don't edit manually**).
3. It appends a `source` line to your shell config so the aliases load on every new session.

## ➕ Adding Your Own Aliases

1. Create or edit a `.alias` file inside the `aliases/` directory:

   ```bash
   # aliases/docker.alias
   alias dps="docker ps"
   alias dcu="docker compose up -d"
   ```

2. Re-run the installer to regenerate `~/.qvdx-aliases`:

   ```bash
   python install.py
   ```

3. Reload your shell — your new aliases are live. 🎉

## 🤝 Contributing

Contributions are welcome! Feel free to open an issue or submit a pull request with new aliases or improvements.

## 📄 License

Released under the MIT License.

---

<div align="center">
Made with ❤️ by <strong>qvdx</strong>
</div>
