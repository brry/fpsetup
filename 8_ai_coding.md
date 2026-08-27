#### AI coding assistants

At the end of the course, I'll introduce AI assisted coding in the browser and locally.
This part of the course is entirely optional.

- **In-browser assistance** is financially free for you at 
  - [claude.ai](https://claude.ai) (suggested for coding),
  - or [gemini.google.com](https://gemini.google.com), [chatgpt.com](https://chatgpt.com) etc.
  - It requires attaching files and copypasting AI output.
- The **IDE-integrated assistance** requires a paid plan (except step F).
  - It costs around 20€/month, i.e. 0.7% of your expected salary after graduating.  
  - This guide is for [Claude Code](https://code.claude.com/docs/en/overview). 
  - Other options with analogous setup: [OpenAI Codex](https://developers.openai.com/codex/), 
  [Gemini CLI](https://github.com/google-gemini/gemini-cli), or 
  [GitHub Copilot](https://github.com/features/copilot).
  - In the command line, AI can read your project, edit files, and run commands for you -
with your approval at each step.  



*The original version of this guide was generated 2026-08-26 with Claude Sonnet 5 Medium.*

Jump to [Install](#install-claude-code), [Safety](#safety-setup), [RStudio](#in-rstudio), [VScode](#in-vscode)

#### Install Claude Code

- <mark>Step A</mark>: create a Claude account:
  - see the [pricing](https://claude.com/pricing) options. 
- <mark>Step B</mark>: install the CLI:
  - *Good habit*: inspect installation scripts before blindly executing them.
  - *Triple click to mark full command for copypasting.*
  - **MacOS / Linux**: in a [terminal](https://brry.github.io/course/path.html#mac-os), run  
    `curl -fsSL https://claude.ai/install.sh | bash`
  - **Windows**: in [PowerShell](https://brry.github.io/course/path.html#windows-1), run  
    `irm https://claude.ai/install.ps1 | iex`
  - Close and reopen your terminal, then check with `claude --version`.
  - *Optional*: read the full [Claude Code quickstart](https://code.claude.com/docs/en/quickstart).
- <mark>Step C</mark>: authenticate:
  - In a terminal, `cd` into your course folder (see fpsetup [step 3b](https://github.com/brry/fpsetup#python)) and run `claude`.
  - Follow the displayed link to log in with your Claude subscription in the browser.

#### Safety setup

Suggested ground rule: don't let Claude Code run `git` commands.  
Version control stays your job, so you keep control of what actually changes.  
Commit your own work before starting an AI session.

**This step does not provide absolute security!**  
Claude could still write a script that performs banned actions.  
For sensitive data / code, look into air-gapping and sandboxing!

- <mark>Step D</mark>: global settings (block sensitive actions for every project):
  - If not already done, clone the fpsetup repo ([step 2c](https://github.com/brry/fpsetup#git)).
  - **MacOS / Linux**: in a terminal, run  
    `mkdir -p ~/.claude && cp fpsetup/8D_claude_settings.json ~/.claude/settings.json`
  - **Windows**: in PowerShell, run  
    `New-Item -ItemType Directory -Force ~/.claude | Out-Null; Copy-Item fpsetup\8D_claude_settings.json ~\.claude\settings.json`
    *potentially change `~` to `$HOME` or `$env:USERPROFILE`*
  - Stay safe, don't run claude with `--dangerously-skip-permissions`.
  - *Optional*: adapt the settings to your needs.
  - *Optional*: read the full [permissions docs](https://code.claude.com/docs/en/iam#permission-rules).
- <mark>Step E</mark>: project-level rules (advisory, not binding to claude) for added safety:
  - **MacOS / Linux**: in a terminal, run  
    `cp fpsetup/8E_claude_rules.md CLAUDE.md`
  - **Windows**: in PowerShell, run  
    `Copy-Item fpsetup/8E_claude_rules.md CLAUDE.md`
  - *Optional*: adapt the rules to your needs.
  - *Optional*: run `claude`, type `/init`, and let it append a project description above
    your rules.
  - *Optional*: read the full [memory docs](https://code.claude.com/docs/en/memory).

#### In RStudio

- <mark>Step F</mark>: use AI in RStudio. *Either*:
  - use [Posit Assistant](https://assistant.posit.co/) (with free trial credits), *or*
  - open the **Terminal** tab (next to Console), `cd` into your project if not already there, then run `claude`.
  - Ask it something small first, e.g. *"suggest improvements to some_file.R"*
  - Review the keep/undo (posit) or plan/diff (terminal) it proposes before approving any file edit.
  - *Aside*: [ClaudeR](https://github.com/IMNMV/ClaudeR) connects Claude Code and other LLMs to a live RStudio session 
    - with access to variables, plots etc instead of just files,
    - making it more powerful, but less reviewable per step.
  

#### In VScode

- <mark>Step G</mark>: install the official extension:
  - Open the Extensions view (`CTRL`/`CMD` + `SHIFT` + `X`), search "Claude Code"
    (publisher: Anthropic), click Install.
  - *Optional*: read the full [Claude Code in VS Code](https://code.claude.com/docs/en/vs-code) guide.
- <mark>Step H</mark>: try it:
  - Open a project file, click the ✱ icon in the editor toolbar
  - Ask for a small, verifiable change.
  - Review the side-by-side diff it proposes
    - accept
    - reject
    - redirect

#### Alternative IDEs

Some other IDEs have AI assistance built directly into the editor interface:

- [Positron](https://positron.posit.co/)
- [JetBrains AI Assistant](https://www.jetbrains.com/ai/)
- [Cursor](https://cursor.com/)
- [Windsurf](https://codeium.com/windsurf)
- [Zed](https://zed.dev/)

#### A few words at the end

- never blindly trust the AI suggestions
- take ownership of your code
- don't forget to [learn the basics before outsourcing your skill development to a machine](https://brry.github.io/course/ai.html)
- enjoy coding!

*Any improvements to this guide are very welcome!*
