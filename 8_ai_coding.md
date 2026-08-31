#### AI coding assistants

At the end of the course, I'll introduce AI assisted coding in the browser and locally.
This part of the course is entirely optional and covers:

- **in-browser assistance**
  - financially free for you at [claude.ai](https://claude.ai) (suggested for coding),
  - or [gemini.google.com](https://gemini.google.com), [chatgpt.com](https://chatgpt.com) etc.
  - requires attaching files and copypasting AI output
  - covered in the slides in i.4 AI coding
- **IDE-integrated assistance**
  - requires a paid plan (except Posit Assistant in step E)
  - costs around 20€/month, i.e. 0.7% of your expected salary after graduating
  - enables AI to read your project, edit files, and run commands for you
  - needs a safety-aware configuration (step D)
  - covered in the guide below for [Claude Code](https://code.claude.com/docs/en/overview)
  - other options with analogous setup: [OpenAI Codex](https://developers.openai.com/codex/), 
  [Gemini CLI](https://github.com/google-gemini/gemini-cli), or 
  [GitHub Copilot](https://github.com/features/copilot).

*The original version of this guide was generated 2026-08-26 with Claude Sonnet 5 Medium.*

Jump to [Install](#install-claude-code), [Safety](#safety-setup), [RStudio](#in-rstudio), [VScode](#in-vscode)

#### Install Claude Code

- <mark>Step A</mark>: create a Claude account:
  - see the [pricing](https://claude.com/pricing) options. 
- <mark>Step B</mark>: install the CLI:
  - *Good habit*: inspect installation scripts before blindly executing them.
  - In a [terminal](https://brry.github.io/course/path.html), run (*Triple click to mark full command for copypasting*):
    - **MacOS / Linux**  
      `curl -fsSL https://claude.ai/install.sh | bash`
    - **Windows**  
      `irm https://claude.ai/install.ps1 | iex`
  - Close and reopen your terminal, then check with `claude --version`.
  - *Optional*: read the full [Claude Code quickstart](https://code.claude.com/docs/en/quickstart).
- <mark>Step C</mark>: authenticate:
  - In a terminal, `cd` (see fpsetup [step 3b](https://github.com/brry/fpsetup#python)) into a project you want to use AI in and run `claude`.
  - Follow the displayed link to log in with your Claude subscription in the browser.

#### Safety setup

Suggested: Version control stays your job, so you keep control of what actually changes.  
**Commit your work** before starting an AI session! It may change code in unexpected ways.

This step creates  
- global settings (block sensitive actions for every project)  
- project settings (do not allow access to parent folders)  
- project-level rules (advisory, not binding to claude) for added safety.

**This step does not provide absolute security!**  

- Claude could still write a script that performs banned actions.  
- For sensitive data / code, look into
[air-gapping](https://en.wikipedia.org/wiki/Air_gap_(networking))
and [sandboxing](https://code.claude.com/docs/en/sandboxing).  
- For masking secrets that slip past your deny rules, see 
[redaction](https://github.com/ShindouMihou/cc-redact/).
- The global sandbox settings are probably ignored on Windows.
- Don't blindly trust AI-generated setting files, see e.g. the 
[maxTimeout debacle](https://claude.ai/share/db32c8ed-1d76-41d6-a25d-7f7d6eb5f724).
- As of Aug 31, the templates need some work, but 
[Claude](https://claude.ai/share/b60ad556-164d-416b-b6e6-ccd0768a6868), 
[Gemini](https://share.gemini.google/ktnFQOcEHnbe) 
and [ChatGPT](https://chatgpt.com/share/6a95aeaf-b010-83eb-80b2-f05b2cac2740) 
disagree on the changes.

Enough warnings, let's go:

- <mark>Step D</mark>: write safety instructions:
  - If not already done, clone the fpsetup repo ([step 2c](https://github.com/brry/fpsetup#git)).
  - In RStudio or VScode, open and run the file *`8d_setup_claude.R`* as instructed inside.
  - Follow the instructions to change adapt the settings to your needs, e.g. 
    - allow `Bash(git commit:*)`
    - allow `Bash(git push:*)` (but not `--force`!)
    - remove or adapt the "folder_AI_may_not_change/"
    - allow things like `uv add`, `Rscript`, `pytest`, etc.
  - Stay safe, don't run claude with `--dangerously-skip-permissions`.
  - *Optional*: read the full [permissions docs](https://code.claude.com/docs/en/permissions).
  - *Optional*: read the full [memory docs](https://code.claude.com/docs/en/memory).
  - *Optional*: run `claude`, type `/init`, and let it append a project description above your rules.

#### In RStudio

- <mark>Step E</mark>: use AI in RStudio. *Either*:
  - use [Posit Assistant](https://assistant.posit.co/) (with free trial credits), *or*
  - open the **Terminal** tab (next to Console), `cd` into your project if not already there, then run `claude`.
  - Ask it something small first, e.g. *"suggest improvements to some_file.R"*
  - Review the keep/undo (posit) or plan/diff (claude) it proposes before approving any file edit.
  - *Aside*: [ClaudeR](https://github.com/IMNMV/ClaudeR) connects Claude Code and other LLMs to a live RStudio session 
    - with access to variables, plots etc instead of just files,
    - making it more powerful, but less reviewable per step.
  

#### In VScode

- <mark>Step F</mark>: install the official extension:
  - Open the Extensions view (`CTRL`/`CMD` + `SHIFT` + `X`), search "Claude Code"
    (publisher: Anthropic), click Install.
  - *Optional*: read the full [Claude Code in VS Code](https://code.claude.com/docs/en/vs-code) guide.
- <mark>Step F</mark>: try it:
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
