#### AI coding assistants

In the second half of the course, I'll introduce AI assisted coding in the browser and in your IDE with the slides in i.4 AI coding.  
This lesson covers:

- **in-browser assistance**
  - financially free for you at [claude.ai](https://claude.ai) (suggested for coding),
  - or [gemini.google.com](https://gemini.google.com), [chatgpt.com](https://chatgpt.com) etc.
  - requires attaching files and copypasting AI output
  - lacks awareness of all your project files + conventions
  - *maybe [don't use](https://garymarcus.substack.com/p/breaking-openai-was-warned-months) OpenAI*
- **IDE-integrated assistance**
  - requires a paid plan
  - costs around 20€/month, i.e. 0.7% of your expected salary after graduating
  - enables AI to read your project, edit files, and run commands for you
  - needs a safety-aware configuration (step B)
  - here for [Claude Code](https://code.claude.com/docs/en/overview); analogous: [OpenAI Codex](https://developers.openai.com/codex/), 
  [Gemini CLI](https://github.com/google-gemini/gemini-cli), or 
  [GitHub Copilot](https://github.com/features/copilot).
  - *maybe [don't use](https://www.forrester.com/blogs/an-ai-security-facepalm-openais-evaluation-became-hugging-faces-incident/) OpenAI*

*The original version of the guide below was generated 2026-08-26 with Claude Sonnet 5 Medium, but has been heavily edited.*

If you plan to use **Posit Assistant in RStudio**, read (but don't run) the safety setup and **start in step C**.

Jump to [Install](#install-claude-code), [Safety](#safety-setup), [RStudio](#rstudio), [VScode](#vscode), [Start](#start)

#### Install Claude Code

- <mark>Step A</mark>: install the claude code CLI (Command Line Interface):
  - Create a Claude account, see the [pricing](https://claude.com/pricing) options. 
  - *Good habit*: inspect installation scripts before blindly executing them ([.sh](https://claude.ai/install.sh), [.ps1](https://claude.ai/install.ps1)).
  - In a [terminal](https://brry.github.io/course/path.html), run (*Triple click to mark full command for copypasting*):
    - **MacOS / Linux**  
      `curl -fsSL https://claude.ai/install.sh | bash`
    - **Windows**  
      `irm https://claude.ai/install.ps1 | iex`
  - Close and reopen your terminal, then check with `claude --version`.
  - *Optional*: read the full [Claude Code quickstart](https://code.claude.com/docs/en/quickstart).
  - In a terminal, `cd` (see fpsetup [step 3b](https://github.com/brry/fpsetup#python)) into a project you want to use AI in.
  - Run `claude` and follow the link to authenticate in the browser.

#### Safety setup

Need motivation / reasoning for safety first? Read this account [from the trenches](https://techtrenches.dev/p/nine-basic-intrusions-one-zero-day-escape).\

Strongly suggested: **Version control stays your job**, so you keep control of what actually changes.  
**Commit your work** before starting an AI session! It may change code in unexpected ways.

This step creates  
- global settings (block sensitive actions for every project)  
- project settings (do not allow access to parent folders)  
- project-level rules (advisory, not binding to claude) for added safety.\
*Posit Assistant implements the settings by default.*

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

- <mark>Step B</mark>: write safety instructions *(skip this if you want to use step C)*:
  - If not already done, clone the fpsetup repo ([step 2c](https://github.com/brry/fpsetup#git)).
  - In RStudio or VScode, open and run the file *`8d_setup_claude.R`* as instructed inside.
  - Follow the instructions to adapt the settings to your needs, e.g. 
    - allow `Bash(git commit:*)`
    - allow `Bash(git push:*)` (but not `--force`!)
    - remove or adapt the "folder_AI_may_not_change/"
    - allow things like `uv add`, `Rscript`, `pytest`, etc.
  - Stay safe, don't run claude with `--dangerously-skip-permissions`.
  - *Optional*: read the full [permissions docs](https://code.claude.com/docs/en/permissions).
  - *Optional*: read the full [memory docs](https://code.claude.com/docs/en/memory).
  - *Optional*: run `claude`, type `/init`, and let it append a project description above your rules.
  - Keep your AGENTS.md file short (ChatGPT suggest way too verbose unnecessary fluff).

#### RStudio

- <mark>Step C</mark>: use AI in RStudio (step A+B are not needed):
    - Follow the instructions for [Posit Assistant](https://assistant.posit.co/).
    - Use an API key from one of the [providers](https://assistant.posit.co/docs/getting-started/providers/).
    - This costs money per token (i.e. usage), not per month.
    - The newest models are significantly more expensive than slightly older ones.
    - Open a project, click on Posit Assistant (top right).
    - Turn on the sandbox in each new project. Other than that, safety-first principles are applied [by default](https://assistant.posit.co/docs/features/permissions/).
    - Use [ClaudeR](https://github.com/IMNMV/ClaudeR) to also edit plots etc.
    
#### VScode

- <mark>Step D</mark> use AI in VScode: 
  - Open the Extensions view (`CTRL`/`CMD` + `SHIFT` + `X`).
  - Search "Claude Code" (publisher: Anthropic), click Install.
  - *Optional*: read the full [Claude Code in VScode](https://code.claude.com/docs/en/vs-code) guide.
  - Open a project file, click the ✱ icon in the editor toolbar.
  
#### Start

- <mark>Step E</mark>: use AI responsibly and safely:
  - Ask it something small first, e.g. *"suggest improvements to some_file.R"*
  - Review the keep/undo or plan/diff it proposes before approving any file edit.
  - Decide whether to
    - accept
    - reject
    - redirect
  - Improve the first output! Ask things like:
    - Suggest alternative approaches for this
    - Simplify/Shorten this code
    - Compress comments by half
    - Check if there is a package for this code
    - Iterate over names instead of index
    - ...
  - If you make changes to a file, **commit them first** before (!) you ask for a review of the changes.
    The AI agent will happily change your file with verbose nonsense that is otherwise hard to undo.

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
- commit everything before letting AI edit your files!!!
- enjoy coding!

*Any improvements to this guide are very welcome!*
