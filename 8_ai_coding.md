#### AI coding assistant (Claude Code)

[#ai-coding-assistant](#ai-coding-assistant)

So far your AI coding help has lived in a browser tab. **Claude Code** is Anthropic's
agentic coding assistant that runs in the terminal instead: it can read your project,
write and edit files, and run commands for you - with your explicit approval at each
step. This lesson sets it up safely, once for **RStudio** and once for **VScode**.

*Requires a paid Claude plan (Pro or higher, from $20/month) - the free claude.ai plan
does not include Claude Code. See [pricing](https://claude.com/pricing).*  
*Note: on Linux, follow the MacOS instructions unless noted otherwise.*

Jump to [Install](#install-claude-code), [Safety setup](#safety-setup), [RStudio](#in-rstudio), [VScode](#in-vscode)

#### Install Claude Code

[#install-claude-code](#install-claude-code)

- ==Step 8a==: install the CLI (native installer, no Node.js needed):
  * **MacOS / Linux**: in a terminal, run  
    `curl -fsSL https://claude.ai/install.sh | bash`
  * **Windows**: in PowerShell, run  
    `irm https://claude.ai/install.ps1 | iex`
  * Close and reopen your terminal, then check with `claude --version`.
  * Full reference: [Claude Code quickstart](https://code.claude.com/docs/en/quickstart).
- ==Step 8b==: authenticate:
  * In a terminal, `cd` into your course folder (see step 2a) and run `claude`.
  * Follow the printed link to log in with your Claude subscription in the browser.

#### Safety setup

[#safety-setup](#safety-setup)

*Do this once, before your first real task - it applies to every project.*  
**Ground rule for this course: Claude Code never runs `git` commands.** Staging,
committing, and pushing stay entirely your job, since that's how you (and your
instructor) keep control of what actually changes.

- ==Step 8c==: create a global settings file that blocks `git` and other sensitive
  actions for every project, not just this course folder:
  * **MacOS / Linux**, in a terminal:  
    `mkdir -p ~/.claude && cat > ~/.claude/settings.json << 'EOF'
{
  "permissions": {
    "deny": [
      "Bash(git:*)",
      "Read(**/.env)",
      "Read(**/.env.*)",
      "Read(~/.ssh/**)",
      "Read(~/.aws/**)"
    ]
  }
}
EOF`
  * **Windows**, in PowerShell:  
    `New-Item -ItemType Directory -Force ~/.claude | Out-Null
@'
{
  "permissions": {
    "deny": [
      "Bash(git:*)",
      "Read(**/.env)",
      "Read(**/.env.*)",
      "Read(~/.ssh/**)",
      "Read(~/.aws/**)"
    ]
  }
}
'@ | Set-Content ~/.claude/settings.json`
  * This blocks *any* `git` subcommand and reading of common credential files.
    Deny rules always win over allow rules. Details: [permissions docs](https://code.claude.com/docs/en/iam#permission-rules).
- ==Step 8d==: add a project-level `CLAUDE.md` in your course folder, so Claude reads
  your rules as context every session (belt-and-suspenders on top of step 8c):
  * Run `claude`, then type `/init` and let it draft one from your project.
  * Open the generated `CLAUDE.md` and add a section, e.g.:
    ```
    ## Rules
    - Never run git commands (status/diff excepted only if I ask). I handle all git myself.
    - Stay inside this project folder; do not read or edit files elsewhere on my machine.
    - Do not edit anything under exercise answer-key or scoring files/folders.
    - Ask before installing packages or changing project-wide settings.
    ```
  * More on this file: [CLAUDE.md / memory docs](https://code.claude.com/docs/en/memory).
- ==Step 8e==: keep the default permission mode:
  * Never start it with `--dangerously-skip-permissions` in this course - you want
    the file-edit and command prompts to keep appearing so you review every change.

#### In RStudio

[#in-rstudio](#in-rstudio)

- ==Step 8f==: use Claude Code from RStudio's built-in terminal:
  * In RStudio, open the **Terminal** tab (next to Console).
  * `cd` into your project if not already there, then run `claude`.
  * Ask it something small first, e.g. *"explain what this script does"* - review the
    plan/diff it proposes before approving any file edit.
  * There is no dedicated RStudio extension; the terminal *is* the integration.

#### In VScode

[#in-vscode](#in-vscode)

- ==Step 8g==: install the official extension:
  * Open the Extensions view (`CTRL`/`CMD` + `SHIFT` + `X`), search "Claude Code"
    (publisher: Anthropic), click Install.
  * A ✱ (spark) icon appears in the editor toolbar once a file is open - click it to
    open the chat panel. It reuses the same login and settings from step 8b-8d.
  * Reference: [Claude Code in VS Code](https://code.claude.com/docs/en/vs-code).
- ==Step 8h==: try it:
  * Open a project file, click the ✱ icon, ask for a small, verifiable change.
  * Review the side-by-side diff it proposes; accept, reject, or redirect - same
    review habit as in RStudio's terminal.

You now have a second way to code with AI - in your own command line, with guardrails
you control. Compare it to your browser-based experience and see what you prefer!
