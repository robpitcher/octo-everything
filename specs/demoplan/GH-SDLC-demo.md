# GitHub for the Full SDLC

**Demo Guide: End-to-End Software Development Lifecycle with GitHub + Copilot**

---

## 🎯 Demo Objective

Tell the story of the **complete Software Development Lifecycle (SDLC)**—from ideation to production—using only GitHub products. For each phase and persona, demonstrate how GitHub delivers AI-powered capabilities across the entire development workflow.

**Core Message:** *"One platform for your entire SDLC—planning, coding, testing, deploying, and documenting—with AI that understands your code, your team, and your workflow."*

---

## 👥 Personas Covered

| Persona | GitHub Capabilities |
|---------|---------------------|
| **Product Manager** | GitHub Issues + Projects + Copilot Spaces |
| **Developer** | GitHub Issues + Repos + Copilot |
| **QA Engineer** | GitHub Issues + Actions + Copilot |
| **Security Engineer** | GitHub Advanced Security + Copilot Autofix |
| **Release Manager** | GitHub Releases + Actions + Projects |
| **DevOps/SRE** | GitHub Actions + Environments + Deployments |
| **Technical Writer** | GitHub Markdown + Pages + Copilot |

---

## 🔄 The SDLC Story

```
┌─────────┐    ┌─────────┐    ┌─────────┐    ┌─────────┐    ┌─────────┐    ┌─────────┐
│  PLAN   │───▶│ DESIGN  │───▶│ DEVELOP │───▶│  TEST   │───▶│ DEPLOY  │───▶│ OPERATE │
└─────────┘    └─────────┘    └─────────┘    └─────────┘    └─────────┘    └─────────┘
     │              │              │              │              │              │
   PM, QA      PM, Dev        Dev, QA      QA, Security   Release, SRE    SRE, Dev
```

Each phase below shows:
1. **What the persona does** in that phase
2. **GitHub approach** with specific features
3. **Agentic enhancement** (Copilot capabilities)

---

## 🧠 Product Brain: The Demo Project

**Product Brain** is an example project that demonstrates the GitHub SDLC workflow end-to-end. It's a structured repository showing how all team members—PMs, developers, QA, security, and release managers—can collaborate using GitHub + Copilot.

> *Reference implementation: [github.com/digitarald/product-brain](https://github.com/digitarald/product-brain)*

### What Product Brain Demonstrates

| Capability | How It's Shown | Personas |
|------------|----------------|----------|
| **Knowledge Management** | Specs, insights, research organized in folders | PM, Tech Writer |
| **Copilot Spaces** | Curated context collections that ground AI responses | All roles |
| **Agentic Workflows** | Custom agents for exploration, analysis, prototyping | PM, Developer |
| **AI-Assisted Development** | Copilot generates code, tests, docs, issues | Developer, QA |
| **CI/CD Integration** | Actions workflows for test, build, deploy | DevOps, Release |
| **Security Scanning** | Dependabot, secret scanning, CodeQL | Security |
| **Unified Platform** | Everything in one repo | All roles |

### Repository Structure
```
product-brain/
├── specs/           # PRDs, feature specs
├── insights/        # Synthesized research findings
├── research/        # Market analysis, customer data
├── roadmap/         # OKRs, priorities, timelines
├── analysis/        # Analysis scripts, DAX queries for Power BI
└── prototypes/      # Working demos, proof-of-concepts
```

### Why This Matters for the Demo
| Benefit | Description |
|---------|-------------|
| All context in one place | No scattered documentation |
| Auto-linked PRs ↔ Issues ↔ Projects | Automatic traceability |
| AI understands your codebase (Copilot) | Code-aware assistance |
| One platform, one contract, one support | Simplified operations |
| Developers stay in VS Code / GitHub | No context-switching |

---

## 📈 The Evolution of Development Tools

> "AI agents are a much better product manager than I ever was" — Dennis Yang, Principal PM at Chime

| Era | Development Approach | Key Shift |
|-----|----------------------|-----------|
| **2010s** | Manual everything | Fragmented tooling |
| **2020s** | Integrated platforms | Better, but still siloed |
| **2025+** | AI-native SDLC | GitHub + Copilot as unified platform ✅ **This Demo** |

The key shift: Every role moves from *manual, tool-hopping workflows* to *AI-assisted, unified platform workflows*.

---

## 🤖 Agent Customization

Configure AI agents to understand your product context:

### Workspace Instructions
Always-on context about company, conventions, personas.

**File:** `.github/copilot-instructions.md`
```markdown
# Product Context
- Company: Contoso Outdoor Gear
- Target users: Outdoor enthusiasts, sustainability-conscious consumers
- Tech stack: React Native, Node.js, PostgreSQL
- Personas: Trail Seeker (casual), Peak Performer (serious), Eco-Advocate (values-driven)
```

### File-Specific Instructions
Auto-attach context when editing specific file patterns.

```yaml
applyTo: "specs/**"
instructions: |
  When editing specs, always include:
  - User persona affected
  - Success metrics
  - Dependencies on other specs
```

### Reusable Prompts
Slash commands for common workflows:

| Command | Purpose | Output |
|---------|---------|--------|
| `/feedback-synthesis` | Raw feedback → themed insights | Structured analysis with quotes |
| `/spec-explainer` | PRD → stakeholder summary | Executive-friendly 1-pager |
| `/meeting-prep` | Gather context, surface questions | Briefing doc with open items |
| `/issue-from-insight` | Insight → GitHub Issue | Issue with labels & context |

### Custom Agents
Specialized personas configured via Copilot instructions:

> **Note:** These agents are configured using `.github/copilot-instructions.md` and custom prompts. "Permissions" represent intended usage patterns enforced through prompt engineering, not hard access controls.

| Agent | Purpose | Intended Scope |
|-------|---------|----------------|
| **Explore** | Query product knowledge | Read-only queries |
| **Data Analyst** | Create analysis scripts, DAX queries | Analysis in `analysis/` |
| **Scaffold** | Build HTML/Tailwind prototypes | Prototypes in `prototypes/` |
| **Design Partner** | Devil's advocate, challenge thinking | Socratic questioning mode |

---

## 📖 The Story Arc

Follow **Alex**, a Product Manager, through a typical sprint cycle using the **Product Brain** demo project:

| Act | PM Activity | GitHub Demo (Product Brain) |
|-----|-------------|-------------|
| **0** | Explore existing knowledge | Copilot Spaces + semantic search |
| **1** | Write a PRD | Markdown in `specs/` |
| **1.5** | Analyze customer data | Copilot + Power BI |
| **2** | Break down into work items | Copilot generates Issues |
| **2.5** | Build a prototype | Scaffold Agent builds demo |
| **2.75** | Challenge the approach | Design Partner Agent stress-tests |
| **3** | Plan the sprint | GitHub Projects |
| **4** | Track daily progress | Projects board view |
| **5** | Resolve blockers | Issue links + sub-issues |
| **6** | Report to leadership | Projects Insights |
| **7** | Ship the feature | GitHub Actions |
| **8** | Document for users | Markdown in repo or GitHub Pages |

---

## 👥 Role-Based Agentic Workflows

The demo focuses on PM workflows, but GitHub + Copilot enables agentic automation across all developer-adjacent roles. Use these patterns to expand the demo for different audiences.

### 🧑‍💻 Developer Workflows

| Workflow | GitHub + Copilot Agentic |
|----------|--------------------------|
| **Code Review** | Copilot code review + auto-suggestions |
| **Bug Triage** | Copilot analyzes stack trace, suggests fix locations |
| **Refactoring** | Copilot Edits for multi-file refactoring |
| **Test Generation** | Copilot generates unit/integration tests |
| **Documentation** | Copilot generates docs from code |
| **Dependency Updates** | Dependabot + Copilot explains breaking changes |

**Agentic Demo Script:**
```
DEVELOPER: "Copilot, this PR has 15 files changed. Summarize the key changes 
            and flag anything risky."

[Copilot Code Review runs automatically on PR]

COPILOT: "Summary: Refactors auth module to use OAuth2. 
         ⚠️ Risk: Line 142 removes rate limiting check.
         ⚠️ Risk: No test coverage for new token refresh logic.
         Suggestion: Add test for edge case when refresh token expires."

DEVELOPER: "Generate the missing tests."

[Copilot generates test file with 4 test cases]
```

### 🧪 QA / Test Engineer Workflows

| Workflow | GitHub + Copilot Agentic |
|----------|--------------------------|
| **Test Case Creation** | Copilot generates from spec or code |
| **Bug Verification** | Copilot runs automated repro script |
| **Regression Analysis** | Actions run tests, Copilot analyzes failures |
| **Test Data Generation** | Copilot generates realistic test data |
| **Accessibility Audit** | Copilot + Actions audit on PR |

**Agentic Demo Script:**
```
QA: "Generate test cases for specs/dark-mode.md"

[Copilot analyzes spec]

COPILOT: "I've generated 12 test cases covering:
         ✅ System preference detection (3 cases)
         ✅ Manual toggle behavior (4 cases)
         ✅ Persistence across sessions (2 cases)
         ✅ Accessibility contrast requirements (3 cases)
         
         Shall I create these as a test plan issue or generate Playwright tests?"

QA: "Create Playwright tests in tests/dark-mode.spec.ts"

[Copilot generates executable test file]
```

### 📦 Release Manager Workflows

| Workflow | GitHub + Copilot Agentic |
|----------|--------------------------|
| **Release Notes** | Copilot generates from merged PRs |
| **Change Impact** | Copilot analyzes PR scope + dependencies |
| **Go/No-Go Checklist** | Actions + branch protection rules |
| **Rollback Plan** | Copilot generates from deployment config |
| **Stakeholder Communication** | Copilot drafts release announcement |

**Agentic Demo Script:**
```
RELEASE MGR: "Draft release notes for v2.3.0 targeting non-technical stakeholders."

[Copilot analyzes all PRs since v2.2.0]

COPILOT: "## What's New in v2.3.0

         🌙 **Dark Mode** — Switch to a comfortable dark theme that saves battery 
            and reduces eye strain. Automatically follows your system preference.
         
         🔒 **Enhanced Security** — Faster login with biometric authentication.
         
         ⚡ **Performance** — App launches 40% faster on older devices.
         
         ---
         *Full technical changelog available in CHANGELOG.md*"
```

### 🔐 Security Workflows

| Workflow | GitHub + Copilot Agentic |
|----------|--------------------------|
| **Vulnerability Triage** | Copilot Autofix suggests remediation |
| **Dependency Scanning** | Dependabot + secret scanning native |
| **Security Review** | Copilot flags security anti-patterns |
| **Incident Response** | Copilot generates response based on context |
| **Compliance Documentation** | Copilot generates from code + policies |

**Agentic Demo Script:**
```
[Dependabot creates PR for critical CVE]

SECURITY: "Copilot, explain this vulnerability and the fix."

COPILOT: "CVE-2026-1234 affects lodash < 4.17.21.
         Impact: Prototype pollution allows remote code execution.
         Your usage: Used in src/utils/data-transform.js line 45.
         Risk: HIGH — user input flows to vulnerable function.
         
         This PR updates to 4.17.21. I've verified no breaking changes
         affect your usage pattern. Tests pass."

SECURITY: "Approve and merge."

[Auto-merge with required approvals]
```

### 🤖 2026 Agentic Capabilities Summary

| Capability | What It Does | Roles Benefited |
|------------|--------------|-----------------|
| **Copilot Chat** | Conversational AI for code, docs, and project context | All |
| **Copilot Edits** | Multi-file refactoring with AI guidance | Developer |
| **Copilot Code Review** | AI-powered PR review with fix suggestions | Developer, QA |
| **Copilot Autofix** | Automatic security vulnerability remediation | Security, Developer |
| **Copilot Coding Agent** | Autonomous issue resolution with human oversight | Developer, PM |
| **Copilot Spaces** | Curated context collections for grounded responses | PM, QA, Release |
| **MCP (Model Context Protocol)** | Extend Copilot with external tools and data | All (extensibility) |
| **GitHub Actions** | CI/CD automation for any workflow | Release, QA, Security |
| **Dependabot** | Automated dependency updates with context | Security, Developer |
| **Secret Scanning** | Prevent credential leaks with push protection | Security |
| **Issue/PR Auto-linking** | Connect code changes to work items | PM, Release |

### When to Demo Agentic Capabilities

| Audience | Lead With | Secondary |
|----------|-----------|-----------|
| **Engineering Leadership** | Copilot Code Review, Coding Agent | Security Autofix, Actions |
| **Product Leadership** | Copilot Spaces, Issue Generation | Prototype Agent |
| **Security/Compliance** | Autofix, Secret Scanning, Dependabot | Audit trails |
| **QA Leadership** | Test Generation, PR Automation | Copilot Spaces for context |
| **Release Management** | Release Notes, Actions Workflows | Change Impact Analysis |

---

# 📋 SDLC Phase-by-Phase

For each SDLC phase, we show what each persona does and how GitHub enables it with AI.

---

## Phase 1: PLAN

*Defining what to build, gathering requirements, prioritizing work*

### 📊 Product Manager

| Activity | GitHub Approach | Agentic Enhancement |
|----------|-----------------|---------------------|
| **Write PRD** | Markdown in repo (`specs/`) | Copilot drafts from prompts |
| **Gather requirements** | Issue discussions + Copilot Spaces | Copilot synthesizes from Space |
| **Prioritize backlog** | Projects Table view + Priority field | Copilot suggests priority based on context |
| **Create roadmap** | Projects Roadmap view | Auto-links to dependent issues |
| **Share with stakeholders** | Public Projects view, shareable links | — |

### 🧪 QA Engineer (Planning)

| Activity | GitHub Approach | Agentic Enhancement |
|----------|-----------------|---------------------|
| **Review requirements** | Read spec in repo + ask Copilot | Copilot identifies testable requirements |
| **Create test plan** | Markdown test plan in repo | Copilot generates test cases from spec |
| **Estimate QA effort** | Project custom fields | Copilot estimates based on code complexity |
| **Identify risks** | Copilot Spaces query | Copilot flags similar past bugs |

---

## Phase 2: DESIGN

*Technical design, architecture decisions, prototyping*

### 🧑‍💻 Developer

| Activity | GitHub Approach | Agentic Enhancement |
|----------|-----------------|---------------------|
| **Technical design doc** | Markdown ADR (Architecture Decision Record) | Copilot drafts design from requirements |
| **Diagram architecture** | Mermaid diagrams in Markdown | Copilot generates Mermaid from description |
| **Review designs** | PR review on design docs | Copilot suggests improvements |
| **Spike/POC** | Branch in GitHub | Copilot writes POC code |

### 📊 Product Manager (Design)

| Activity | GitHub Approach | Agentic Enhancement |
|----------|-----------------|---------------------|
| **Build prototype** | Scaffold Agent builds HTML demo | 2-minute working prototype |
| **Review technical feasibility** | Ask Copilot about codebase | Copilot explains technical constraints |
| **Document decisions** | ADR in repo | Copilot drafts decision record |

---

## Phase 3: DEVELOP

*Writing code, code review, iteration*

### 🧑‍💻 Developer

| Activity | GitHub Approach | Agentic Enhancement |
|----------|-----------------|---------------------|
| **Pick up work** | GitHub Issue assignment | Copilot Coding Agent can start autonomously |
| **Write code** | VS Code + GitHub | Copilot completions, chat, edits |
| **Create PR** | GitHub PR | Auto-links to Issue |
| **Code review** | GitHub PR review | Copilot Code Review suggests fixes |
| **Address feedback** | Copilot implements suggestions | One-click apply fixes |
| **Update status** | Auto-update via Project automation | — |

### 🧪 QA Engineer (Development)

| Activity | GitHub Approach | Agentic Enhancement |
|----------|-----------------|---------------------|
| **Review PR for testability** | GitHub PR review | Copilot flags untested code |
| **Write tests** | Tests in same repo | Copilot generates test cases |
| **Request changes** | GitHub review requests | Copilot suggests test improvements |

---

## Phase 4: TEST

*Testing, QA, security scanning*

### 🧪 QA Engineer

| Activity | GitHub Approach | Agentic Enhancement |
|----------|-----------------|---------------------|
| **Run test suite** | GitHub Actions | Auto-runs on PR |
| **Bug reporting** | GitHub Issue from failed test | Copilot creates issue with context |
| **Regression testing** | Actions workflow | Copilot analyzes failures |
| **Test data setup** | Actions + Copilot | Copilot generates realistic test data |
| **Accessibility audit** | Actions + Copilot | Copilot flags accessibility issues |

### 🔐 Security Engineer

| Activity | GitHub Approach | Agentic Enhancement |
|----------|-----------------|---------------------|
| **Dependency scanning** | Dependabot (native) | Auto-creates PRs for updates |
| **Secret detection** | Secret Scanning (native) | Push protection blocks commits |
| **Code security review** | Code Scanning (CodeQL) | Copilot Autofix remediates |
| **Vulnerability triage** | Security alerts dashboard | Copilot explains impact + fix |
| **Compliance checks** | Actions + policy as code | Copilot generates compliance reports |

---

## Phase 5: DEPLOY

*Release management, CI/CD, deployment*

### 📦 Release Manager

| Activity | GitHub Approach | Agentic Enhancement |
|----------|-----------------|---------------------|
| **Release planning** | GitHub Milestones + Releases | Copilot drafts release notes |
| **Change log** | Auto-generated from PRs | Copilot summarizes for users |
| **Go/no-go decision** | Branch protection + required checks | Automated gates |
| **Deploy to staging** | GitHub Actions + Environments | One-click deployments |
| **Deploy to production** | Actions with approval gates | Environment protection rules |
| **Rollback plan** | Actions workflow | Copilot generates from deploy config |

### 🛠️ DevOps/SRE

| Activity | GitHub Approach | Agentic Enhancement |
|----------|-----------------|---------------------|
| **CI/CD pipeline** | GitHub Actions | Copilot writes workflows |
| **Infrastructure as Code** | Same repo, linked to app | Copilot generates Terraform/Bicep |
| **Environment management** | GitHub Environments | Secrets management native |
| **Deployment monitoring** | Actions logs + Deployments view | — |
| **Incident response** | Issues + Actions for remediation | Copilot drafts runbooks |

---

## Phase 6: OPERATE & MONITOR

*Production monitoring, incident management, continuous improvement*

### 🛠️ DevOps/SRE

| Activity | GitHub Approach | Agentic Enhancement |
|----------|-----------------|---------------------|
| **Incident tracking** | GitHub Issues + Discussions | Copilot drafts postmortem |
| **Postmortem documentation** | Markdown in repo | Copilot generates from timeline |
| **On-call handoff** | Repo-based runbook | Copilot Spaces for quick context |
| **Capacity planning** | Projects + Copilot analysis | — |

### 📊 Product Manager (Operate)

| Activity | GitHub Approach | Agentic Enhancement |
|----------|-----------------|---------------------|
| **User feedback triage** | Issues + Copilot Spaces | Copilot synthesizes feedback themes |
| **Feature usage analysis** | Copilot queries usage data | — |
| **Plan next iteration** | GitHub Projects + Copilot | Copilot suggests based on feedback |

---

## 📋 Quick Reference: GitHub Capabilities by Persona

### Product Manager
| Capability | GitHub Feature | AI Enhancement |
|------------|----------------|----------------|
| PRD Writing | Markdown `specs/` | Copilot drafts |
| Backlog Management | Projects Table | Copilot prioritizes |
| Roadmap Planning | Projects Roadmap | Auto-linked |
| Knowledge Discovery | Copilot Spaces | AI-grounded queries |
| Reporting | Projects Insights | — |

### Developer
| Capability | GitHub Feature | AI Enhancement |
|------------|----------------|----------------|
| Work Items | GitHub Issue | Coding Agent resolves |
| Code Changes | GitHub PR | Copilot reviews |
| Code Review | PR Review | Copilot suggests fixes |
| Tech Docs | Markdown ADRs | Copilot drafts |
| Status Updates | Auto via PR | Project automations |

### QA Engineer
| Capability | GitHub Feature | AI Enhancement |
|------------|----------------|----------------|
| Test Plans | Markdown test plans | Copilot generates |
| Bug Tracking | Issues from tests | Auto-created |
| CI Testing | Actions workflows | Auto-runs |
| Test Docs | Repo-based docs | Version-controlled |

### Security Engineer
| Capability | GitHub Feature | AI Enhancement |
|------------|----------------|----------------|
| Security Alerts | Security Dashboard | Centralized |
| Scanning | Native scanning | Dependabot, CodeQL |
| Remediation | Copilot Autofix | Auto-fix PRs |
| Compliance | Policy as code | Actions enforcement |

### Release Manager
| Capability | GitHub Feature | AI Enhancement |
|------------|----------------|----------------|
| Releases | GitHub Releases | Copilot notes |
| Changelog | Auto-generated | From PRs |
| Deployment | Actions deploy | Native |
| Approvals | Environment gates | Required reviewers |

### DevOps/SRE
| Capability | GitHub Feature | AI Enhancement |
|------------|----------------|----------------|
| CI/CD | Actions | Copilot writes YAML |
| Pipelines | Actions | Powerful workflows |
| Runbooks | Markdown runbooks | Copilot drafts |
| Incidents | Issues | Copilot postmortem |

---

## 🔍 Act 0: Explore the Knowledge

### Scene Setup
Before writing anything, Alex explores what the Product Brain repo already knows — using **Copilot Spaces** to organize and query curated context.

### What is Copilot Spaces?
Copilot Spaces let you organize context that grounds Copilot's responses:
- **Include:** Repositories, code, PRs, issues, notes, images, file uploads
- **Share:** With team members or publicly
- **Stay in sync:** Sources auto-update as they change
- **Use anywhere:** Copilot Chat on GitHub or via MCP server in VS Code

### The Agentic Pattern
```
🔍 Explore → 📊 Analyze → ⚡ Prototype → 🤔 Challenge
```

This is the core workflow that Product Brain demonstrates: ~15 minutes from question to working prototype, zero meetings, full context with citations.

### Demo Script
```
ALEX: "Before I write a new spec, let me check our Product Brain space..."

[Open Copilot Spaces → Select "Product Brain" space]

ALEX: "This space includes our specs folder, customer research, and recent PRs.
       Let me ask: What do we know about customer sustainability preferences?"

[Copilot searches across the curated context in the Space]

COPILOT: "Based on your Product Brain space, I found relevant context in 4 sources:
         → specs/sustainability-dashboard.md — Approved spec with Impact Dashboard
         → insights/sustainability-survey-2025.md — 68% say sustainability influences purchases
         → research/gen-z-outdoor-trends.md — Gen Z expects eco transparency
         → specs/loyalty-program-v2.md — Sustainability perks in Trail Rewards"

ALEX: "Perfect—we already have research. I don't need to start from scratch.
       And this space is shared with my team, so they can explore the same context."
```

### Benefits of Copilot Spaces
| Capability | Description |
|------------|-------------|
| Curated context with semantic search | Find relevant content across the Space |
| Cross-references maintained automatically | Links stay up to date |
| Shared Spaces persist beyond chat history | Knowledge is preserved |
| Self-service knowledge via shared Spaces | Team members can explore independently |

---

## 🎬 Act 1: The Idea (PRD Creation)

### Scene Setup
Alex has a new feature idea: **"Dark Mode for Mobile App"**

### What to Demo

| Feature | Demo Action |
|---------|-------------|
| Create markdown doc | File → New → From PRD template |
| Markdown + preview | Write requirements with headers, lists |
| Drag-drop images, Mermaid | Add architecture diagram |
| @username | Tag engineering lead for review |
| VS Code Live Share* | Second person edits simultaneously |
| Inline comments | Add review comment, resolve it |
| Git history | Show previous versions |

*Requires VS Code Live Share extension; alternatively, use PR-based async collaboration.

### Demo Script
```
ALEX: "I start my day in VS Code—this is my single interface for everything.
       Let me create a new PRD from our template..."
       
[Create markdown doc from template]

ALEX: "I'll write up the requirements. Notice I can add diagrams right inline—
       this is Mermaid syntax, renders automatically."
       
[Add Mermaid diagram]

ALEX: "Now I'll tag Sarah to review. She can edit at the same time I do."
       
[@mention, show real-time cursor]

ALEX: "And here's the AI-powered capability..."
```

### The Differentiator
```
ALEX: "Copilot, summarize the key technical risks in this PRD."

[Copilot analyzes and responds]

ALEX: "Copilot knows our codebase, so it can flag that OAuth implementation 
       will conflict with our existing auth module."
```

---

## 📊 Act 1.5: Analyze Data & Create Visualizations

### Scene Setup
The Explore agent found a customer survey. Alex digs deeper into the raw data and needs to create visualizations for leadership.

### GitHub Projects Built-in Analytics

Before reaching for Power BI, GitHub Projects provides native analytics capabilities:

| Capability | What It Does | When to Use |
|------------|--------------|-------------|
| **Insights Charts** | Bar, column, stacked charts from project data | Quick team metrics, sprint reports |
| **Historical Charts** | Burn up charts showing Open → Completed over time | Sprint progress, velocity trends |
| **Aggregations** | Sum, average, min, max on number fields | Story point totals, estimate accuracy |
| **Roadmap View** | Timeline visualization with drag-to-adjust dates | Release planning, milestone tracking |

**GitHub Projects Insights supports:**
- **Current Charts**: Visualize items by status, assignee, label, iteration, or any custom field
- **Historical Charts**: Track progress over time with "Burn up" style charts (Open, Completed, Not Planned states)
- **Aggregations**: Y-axis can show count, sum, average, minimum, or maximum of number fields (like Story Points)
- **Filters**: Slice data by any field combination
- **Chart Types**: Bar charts, stacked column charts, line charts for historical data

> **Note:** GitHub Projects native charts do NOT include traditional Gantt charts with dependency lines. The Roadmap view provides timeline visualization but not dependency management. For Gantt-style views with dependencies, use Power BI.

### Layering Power BI on GitHub

For advanced analytics beyond built-in Insights, Power BI integrates with GitHub through multiple methods:

#### Integration Options

| Method | Data Available | Best For |
|--------|----------------|----------|
| **GitHub (Beta) Connector** | Issues, PRs, commits, contributors, repos | Repository metrics, team performance |
| **Web/REST API Connector** | Any GitHub REST API endpoint | Custom data extraction |
| **GraphQL API + Python** | Projects, custom fields, roadmaps, all data | Full project analytics, Gantt charts |
| **CSV Export → Power BI** | Exported project data | One-time reports, offline analysis |

#### Power BI GitHub Connector (Built-in)

Power BI includes a native **GitHub (Beta) connector** that provides direct access to:
- Repository metadata
- Issues and pull requests
- Commits and contributors
- Organization data

```
Power BI Desktop → Get Data → GitHub (Beta) → Authenticate → Select tables
```

#### GitHub Projects Data via GraphQL

For GitHub Projects data (which includes custom fields, iterations, roadmaps), use the GraphQL API:

```graphql
query ProjectItems($org: String!, $number: Int!) {
  organization(login: $org) {
    projectV2(number: $number) {
      items(first: 100) {
        nodes {
          fieldValues(first: 20) {
            nodes {
              ... on ProjectV2ItemFieldTextValue { text field { ... on ProjectV2Field { name } } }
              ... on ProjectV2ItemFieldNumberValue { number field { ... on ProjectV2Field { name } } }
              ... on ProjectV2ItemFieldDateValue { date field { ... on ProjectV2Field { name } } }
              ... on ProjectV2ItemFieldIterationValue { title startDate duration }
            }
          }
          content { ... on Issue { title state createdAt closedAt } }
        }
      }
    }
  }
}
```

#### Visualization Types in Power BI

| Visualization | GitHub Data Source | Use Case |
|---------------|-------------------|----------|
| **Gantt Chart** | Projects + Start/End dates | Release timelines with dependencies |
| **Burndown** | Issues closed over time | Sprint progress tracking |
| **Velocity Chart** | Story points per iteration | Sprint capacity planning |
| **Contributor Graph** | Commits by author | Team workload distribution |
| **PR Cycle Time** | PR created → merged timestamps | Development efficiency |
| **Issue Flow** | Issue state transitions | Bottleneck identification |

### Demo Script
```
ALEX: "The survey insight is interesting, but I want to understand the segments
       and create a leadership dashboard..."

[Select Data Analyst agent]

ALEX: "Analyze research/data/customer-survey-2025.csv — what predicts 
       sustainability interest? Also generate DAX measures for our Power BI dashboard."

[Agent generates Python analysis + DAX queries]

COPILOT: "I've created analysis/scripts/sustainability-analysis.py with:
         📈 Python script analyzing the CSV data
         📊 DAX measures for Power BI: 
            - Age×Sustainability cross-tab
            - Tenure correlation
            - Segment breakdown visual
         🎯 Key finding: 'Eco-Advocates' segment — high NPS, 2.3x LTV, 31% of base
         
         For the Power BI dashboard, I've created:
         - analysis/powerbi/sustainability-measures.dax
         - analysis/powerbi/segment-breakdown.json (visual config)"

ALEX: "Now let's create a Gantt chart for the Dark Mode release timeline..."

[Switch to Projects data]

ALEX: "Copilot, create a Power BI Gantt chart from our GitHub Project, 
       showing iterations, start dates, and dependencies."

COPILOT: "I've created analysis/powerbi/release-gantt.py that:
         1. Queries GitHub GraphQL API for Project items
         2. Extracts Start Date, Target Date, and Iteration fields
         3. Outputs JSON for Power BI import
         
         The Gantt visual will show:
         - Dark bars for each issue/task
         - Iteration groupings
         - Milestone markers from your Project
         
         Run the script and import release-data.json into Power BI Desktop."
```

### Power BI Dashboard Architecture

```
┌─────────────────────────────────────────────────────────────────┐
│                     Power BI Dashboard                          │
├─────────────────────────────────────────────────────────────────┤
│  ┌─────────────┐  ┌─────────────┐  ┌─────────────────────────┐ │
│  │  Velocity   │  │  Burndown   │  │     Gantt Timeline      │ │
│  │   Chart     │  │   Chart     │  │  (with dependencies)    │ │
│  └─────────────┘  └─────────────┘  └─────────────────────────┘ │
│  ┌─────────────────────────────┐  ┌───────────────────────────┐│
│  │   Issue Flow by Status      │  │  Contributor Workload    ││
│  │   (Sankey or Funnel)        │  │  (by story points)       ││
│  └─────────────────────────────┘  └───────────────────────────┘│
└─────────────────────────────────────────────────────────────────┘
         │                  │                    │
         ▼                  ▼                    ▼
    GitHub (Beta)    GraphQL API via      CSV/JSON exports
      Connector      Python connector     from repo scripts
```

### Benefits of GitHub + Power BI
| Capability | Description |
|------------|-------------|
| Power BI with full visualization library | Extensive customization |
| Gantt charts with dependencies in Power BI | Project dependency visualization |
| Automated pipelines from repo to dashboard | Streamlined data flow |
| GitHub Insights + Power BI (any tier) | Flexible reporting options |
| Data in Git repo, visualized anywhere | Portable analytics |

### Output Artifacts

```
analysis/
├── scripts/
│   ├── sustainability-analysis.py    # Customer data analysis
│   ├── github-projects-export.py     # Extract Projects via GraphQL
│   └── pr-metrics.py                 # PR cycle time analysis
├── powerbi/
│   ├── github-dashboard.pbix         # Main Power BI file
│   ├── measures/
│   │   ├── velocity.dax              # Velocity calculation
│   │   ├── burndown.dax              # Burndown metrics
│   │   └── lead-time.dax             # Issue lead time
│   └── connectors/
│       └── github-graphql.pq         # Power Query for GraphQL
└── exports/
    ├── project-items.json            # Cached project data
    └── sprint-velocity.csv           # Historical velocity
```

---

## 🎬 Act 2: The Breakdown (PRD → Issues)

### Scene Setup
PRD is approved. Alex needs to create work items for the team.

### What to Demo

| Feature | Demo Action |
|---------|-------------|
| Create Issue with "Epic" label | New Issue → Epic template |
| Create linked Issues | Child issues |
| Tasklists | Add checklist to story |
| Custom field (Number) | Set Story Points = 5 |
| Custom field (Single select) | Set Priority = P1 |
| Add to Iteration | Assign to "Sprint 23" |

### Demo Script (The Manual Way)
```
ALEX: "Traditionally, I'd manually create each issue from my PRD—
       that takes about an hour for a feature this size."
       
[Create one epic, one story manually to show it works]
```

### Demo Script (The AI Way)
```
ALEX: "But here's where GitHub changes the game. Watch this..."

[Select PRD requirements section]

ALEX: "Copilot, create GitHub Issues for each requirement in this PRD.
       Use our standard epic/story structure."

[Copilot drafts 8-10 issues for review]

ALEX: "In 30 seconds, I have my entire backlog drafted. Let me review 
       before creating them...
       - Epic: Dark Mode Implementation
       - Story: Update color tokens
       - Story: Add system preference detection
       - Story: Create settings toggle
       
       I'll confirm each one, then Copilot creates them with links back to the PRD."

[Create issues after review, show issues linked back to PRD in repo]
```

> **Demo Note:** Copilot generates issue drafts that require human review and confirmation before creation. This ensures quality and allows PMs to refine acceptance criteria.

### The Differentiator
```
ALEX: "Now here's what makes Copilot special..."

ALEX: "Copilot, based on our team's Git history, who should own each story?"

[Copilot suggests assignments based on code ownership]

ALEX: "It knows Sarah owns the design system, so she gets the color tokens.
       It knows Marcus built the settings page, so he gets the toggle.
       Copilot has code context."
```

---

## ⚡ Act 2.5: Build the Prototype

### Scene Setup
Before sprint planning, Alex wants to validate the concept with a working prototype.

### The Agentic Pattern
```
🔍 Explore → 📊 Analyze → ⚡ Prototype → 🤔 Challenge
                          ^^^^^^^^^^^^
                          WE ARE HERE
```

### Demo Script
```
ALEX: "Normally I'd wait 2 sprints for engineering to build something.
       But I can validate the concept right now..."

[Select Scaffold agent]

ALEX: "Build a Dark Mode prototype based on specs/dark-mode.md"

[Agent generates HTML/Tailwind/Alpine.js prototype]

COPILOT: "I've created prototypes/dark-mode/index.html with:
         • System preference detection
         • Manual toggle with smooth transition
         • Color token preview across components
         • Accessibility contrast checker"

[Open prototype in browser]

ALEX: "In 2 minutes, I have a working demo I can show stakeholders.
       Let me share this in our spec review..."

[Copy prototype URL to spec discussion]
```

### Benefits
| Capability | Description |
|------------|-------------|
| Show working prototype | More tangible than descriptions |
| PM builds proof-of-concept | No engineering bottleneck |
| Stakeholders interact with demo | Direct validation |
| Same-day validation | Faster feedback cycle |

### Output Location
```
prototypes/
└── dark-mode/
    ├── index.html      # Interactive demo
    ├── styles.css      # Tailwind-generated
    └── README.md       # Links back to spec
```

---

## 🤔 Act 2.75: Challenge the Thinking

### Scene Setup
Before committing to sprint scope, Alex stress-tests the approach.

### Demo Script
```
ALEX: "I want to find the blind spots before the exec review..."

[Select Design Partner agent]

ALEX: "What's the strongest argument against specs/dark-mode.md?"
```

### Agent Response Patterns

**Devil's Advocate Mode:**
```
COPILOT: "Dark mode increases testing surface by 2x. Have you budgeted for:
         - Visual regression testing for both themes?
         - Accessibility audits for both color schemes?
         - User research on actual preference distribution?"
```

**Socratic Mode:**
```
COPILOT: "What would need to be true for users to actually switch to dark mode?
         Your spec assumes 'users want it' — have you validated that assumption
         beyond the 2023 survey which had 12% response rate?"
```

**Blind Spot Hunter:**
```
COPILOT: "Who loses if this succeeds? 
         - Marketing just launched light-mode brand guidelines
         - The new onboarding flow assumes light theme
         - Partner integrations may not support dark themes
         Have you aligned with these stakeholders?"
```

### Demo Script (Continued)
```
ALEX: "Hmm, good points. Let me add these risks to the spec..."

[Add 'Open Questions' section to spec]

ALEX: "Now when leadership asks 'what could go wrong?', I'm prepared.
       Better to find these now than in the post-mortem."
```

### Benefits
| Capability | Description |
|------------|-------------|
| Proactively surface blind spots | Earlier risk identification |
| Objections already addressed | Better prepared for reviews |
| AI provides external perspective | Avoid groupthink |
| Risks discovered before coding | Reduce production issues |

---

## 🎬 Act 3: Sprint Planning

### Scene Setup
Sprint planning meeting. Alex and the Scrum Master need to commit to scope.

### What to Demo

| Feature | Demo Action |
|---------|-------------|
| Projects Table view | Open table, sort by priority |
| Projects Board view | Switch to board |
| Projects Roadmap view | Show timeline with iterations |
| Projects Insights | Show historical velocity |
| Iteration view | See points assigned vs. target |
| Drag to iteration | Move items into Sprint 23 |

### Demo Script
```
ALEX: "Here's our backlog. Let me switch to Table view—
       same as a list view sorted by priority."

[Show Table view sorted by Priority]

ALEX: "We need 40 points for this sprint. Let me check our velocity..."

[Open Insights → Velocity chart]

ALEX: "Team averages 42 points. We're planning 38—good buffer for 
       unexpected work."

[Switch to Roadmap view]

ALEX: "Here's our timeline. Dark Mode epic spans Sprints 23-24.
       Dependencies are visible—we can't start UI until tokens are done."

[Show dependency arrows on roadmap]

ALEX: "Now I'll drag the committed items into Sprint 23..."

[Drag 5 stories into iteration]

ALEX: "And switch to Board view for our daily standups."

[Show Board: To Do | In Progress | Review | Done]
```

### Custom Field Demonstration
```
ALEX: "You're probably wondering about custom fields. Let me show you..."

[Open issue, show custom fields sidebar]

| Field | Example |
|-------|---------|
| Story Points | 5 |
| Priority | P1 |
| Iteration | Sprint 23 |
| Parent | Dark Mode Epic |
| Labels | ios, mobile |
```

---

## 🎬 Act 4: Daily Standup

### Scene Setup
It's Wednesday. Alex checks progress before standup.

### What to Demo

| Feature | Demo Action |
|---------|-------------|
| Projects Board view | Show current sprint board |
| Group by assignee | Group cards by owner |
| Filter controls | Filter to "In Progress" only |
| Issue panel | Click card, show detail |
| Timeline | Show work happened yesterday |

### Demo Script
```
ALEX: "Every morning I open my board. Here's Sprint 23..."

[Show Board view with items in various columns]

ALEX: "I can group by assignee to see who's working on what."

[Group by Assignee]

ALEX: "Sarah has 3 items in progress—might be overloaded.
       Marcus hasn't started his yet—I'll ping him."

[Click into an issue]

ALEX: "Here's the activity timeline—Sarah pushed code yesterday,
       CI passed, she's waiting on code review."

[Show linked PR, CI status]

ALEX: "I can see the actual code without leaving GitHub."
```

---

## 🎬 Act 5: Blockers & Dependencies

### Scene Setup
Sarah reports she's blocked—the API team hasn't delivered the endpoint she needs.

### What to Demo

| Feature | Demo Action |
|---------|-------------|
| Tracked-by / Tracks | Show dependency |
| Blocked-by label + link | Mark as blocked |
| Filter blocked items | Query all blocked issues |
| Cross-repo references | Link to API team's issue |

### Demo Script
```
ALEX: "Sarah says she's blocked. Let me find the dependency..."

[Open Sarah's issue, show "blocked by" link]

ALEX: "She's waiting on the API team's issue. Let me check their repo..."

[Click through to API team's issue in different repo]

ALEX: "Ah, it's still in review. I'll add a comment..."

[Comment on the blocking issue]

ALEX: "Now let me see all blockers in our sprint."

[Filter: is:issue label:blocked]

ALEX: "Two blockers total. I'll escalate in our sync."
```

### Sub-issue Demonstration
```
ALEX: "Let me also show how we do sub-tasks..."

[Open a story with tasklist]

ALEX: "Each checkbox can be converted to a full issue if needed.
       Or keep it lightweight as a checklist."
```

---

## 🎬 Act 6: Leadership Reporting

### Scene Setup
Friday afternoon. Alex needs to update leadership on Q2 progress.

### What to Demo

| Feature | Demo Action |
|---------|-------------|
| Projects Insights | Show sprint burndown |
| Projects Insights | Show velocity trend |
| Insights + filters | Status distribution |
| Share link / screenshot | Generate shareable view |
| Multi-project view | Aggregate across projects |

### Demo Script
```
ALEX: "Leadership asks me every week: 'Are we on track?'"

[Open Projects → Insights]

ALEX: "Here's my answer: Burndown shows we're trending to complete 
       36 of 40 points—we'll hit our commitment."

[Show Burndown chart]

ALEX: "Velocity is stable at 40 points/sprint—team is predictable."

[Show Velocity chart]

ALEX: "Status breakdown: 60% done, 25% in progress, 15% to do."

[Show Status pie chart]

ALEX: "And I can share this view with leadership directly..."

[Copy share link]

ALEX: "No GitHub login required. They see exactly what I see."
```

### The Q2 Rollup
```
ALEX: "For quarterly planning, I can aggregate across projects..."

[Show org-level Projects view or multiple projects]

ALEX: "Dark Mode: 75% complete
       Performance: 90% complete
       Search Rewrite: 40% complete (at risk)
       
       I'll flag Search in our exec meeting."
```

---

## 🎬 Act 7: Ship It (CI/CD)

### Scene Setup
Sprint's over. Dark Mode is ready to deploy.

### What to Demo

| Feature | Demo Action |
|---------|-------------|
| GitHub Actions | Show workflow runs |
| Automated pipelines | PR merge triggers deploy |
| Actions + Environments | Show staging → prod flow |
| Releases | Auto-generated from PRs |

### Demo Script
```
ALEX: "Code's merged. Let me show you what happens automatically..."

[Show Actions tab with recent workflow run]

ALEX: "CI ran: tests passed, build succeeded, deployed to staging."

[Show green checkmarks]

ALEX: "For production, we require approval..."

[Show Environment protection rules]

ALEX: "I approve here—no switching to a deploy tool—and it ships."

[Click Approve, show deployment in progress]

ALEX: "The issue automatically closes and gets a 'Deployed' comment."

[Show issue with deployment status]
```

### The Full Loop
```
ALEX: "Let's trace the full journey:
       1. PRD in repo ✓
       2. Issues generated by Copilot ✓
       3. Sprint planned in Projects ✓
       4. Code written with Copilot ✓
       5. PR reviewed and merged ✓
       6. Deployed via Actions ✓
       
       One platform. One login. One bill."
```

---

## 🎬 Act 8: Document & Close

### Scene Setup
Feature is live. Alex writes release notes and user documentation.

### What to Demo

| Feature | Demo Action |
|---------|-------------|
| GitHub Releases | Create release with notes |
| GitHub Wiki / Pages | Write user-facing docs |
| Auto-linked PRs | Show what's included in release |
| Copilot | Generate changelog |

### Demo Script
```
ALEX: "Feature's live. Let me create the release documentation..."

[Open Releases → Draft new release]

ALEX: "GitHub auto-generates the changelog from merged PRs."

[Show auto-generated changelog]

ALEX: "But I want user-friendly release notes. Copilot..."

ALEX: "Copilot, summarize these changes for our end users. 
       Focus on benefits, not technical details."

[Copilot generates user-friendly summary]

ALEX: "Perfect. I'll post this in our Wiki documentation..."

[Create new doc in Wiki]

ALEX: "And link back to the PRD for internal reference."

[Add link to original PRD]
```

---

## 🎯 GitHub Capabilities Scorecard

Use this during/after the demo to validate coverage:

### Project Management

| Feature | GitHub | Demo'd |
|---------|--------|--------|
| Scrum boards | ✅ Projects Board | ⬜ |
| Kanban boards | ✅ Projects Board | ⬜ |
| Sprint planning | ✅ Iterations | ⬜ |
| Backlog management | ✅ Table view | ⬜ |
| Roadmap/timeline | ✅ Roadmap view | ⬜ |
| Custom fields | ✅ Any type | ⬜ |
| Automations | ✅ Project automations + Actions | ⬜ |
| Burndown charts | ✅ Insights | ⬜ |
| Velocity reports | ✅ Insights | ⬜ |
| Dependencies | ✅ Issue links (tracks/tracked-by) | ⬜ |
| Sub-tasks | ✅ Tasklists / Sub-issues | ⬜ |
| Issue templates | ✅ Issue forms + templates | ⬜ |
| Mobile app | ✅ GitHub Mobile | ⬜ |
| API access | ✅ REST + GraphQL | ⬜ |
| Query Language | ✅ Search syntax + GraphQL | ⬜ |
| Release management | ✅ Releases + Milestones | ⬜ |
| Epics/Story mapping | ✅ Parent issues + Labels | ⬜ |
| Marketplace/Apps | ✅ GitHub Marketplace + MCP | ⬜ |

### Documentation

| Feature | GitHub | Demo'd |
|---------|--------|--------|
| Rich text editing | ✅ Markdown + Preview | ⬜ |
| Real-time collab | ✅ VS Code Live Share | ⬜ |
| Page hierarchy | ✅ Folder structure | ⬜ |
| Templates | ✅ Doc templates | ⬜ |
| @mentions | ✅ @username | ⬜ |
| Comments | ✅ Inline comments / PR reviews | ⬜ |
| Version history | ✅ Git history | ⬜ |
| Search | ✅ Global search + Copilot Spaces | ⬜ |
| Diagrams | ✅ Mermaid + Markmap | ⬜ |
| Permissions | ✅ Repo/branch permissions | ⬜ |
| AI summaries | ✅ Copilot (native) | ⬜ |
| Knowledge sharing | ✅ Copilot Spaces | ⬜ |
| Curated context | ✅ Copilot Spaces | ⬜ |
| Guest access | ✅ Outside collaborators | ⬜ |
| Export to PDF | ✅ pandoc / browser print | ⬜ |

### AI & Automation Differentiators

| Capability | GitHub Feature |
|------------|----------------|
| Code-aware AI | ✅ Copilot understands codebase |
| Issue generation from docs | ✅ PRD → Issues via Copilot |
| Curated AI context | ✅ Copilot Spaces (persistent, shareable) |
| Single platform | ✅ One platform, one login |
| Built-in CI/CD | ✅ Actions (50K mins included) |
| Copilot coding assistant | ✅ Code completion + chat |
| Copilot code review | ✅ AI-powered PR review |
| Copilot Autofix | ✅ Security vulnerability fixes |
| Agentic automation | ✅ Copilot Coding Agent |
| MCP extensibility | ✅ Model Context Protocol |
| Secret scanning | ✅ Native + push protection |
| Dependency scanning | ✅ Dependabot native |

---

## 🛠 Demo Setup Checklist

### Option 1: Clone the Reference Implementation

The fastest way to get started is to clone the existing Product Brain demo:

```powershell
git clone https://github.com/digitarald/product-brain
cd product-brain
code .
```

Then explore:
1. Open any spec, ask Copilot about it
2. Type `/` to see available prompt commands
3. Switch agents via the agent dropdown
4. Review the 7 demo scenarios in README

### Option 2: Build Your Own Product Brain

Create a custom demo repo for your customer's domain:

### Product Brain Repository Structure

```
product-brain/
├── .github/
│   └── copilot-instructions.md    # Workspace context
├── specs/
│   ├── dark-mode.md               # Feature spec for demo
│   └── templates/
│       └── prd-template.md        # PRD template
├── insights/
│   └── customer-preferences.md    # Synthesized research
├── research/
│   └── data/
│       └── customer-survey.csv    # Raw data for analysis
├── roadmap/
│   └── q2-priorities.md           # OKRs and priorities
├── analysis/
│   └── scripts/                   # Analysis scripts & DAX (created during demo)
└── prototypes/
    └── dark-mode/                 # Prototype (created during demo)
```

### Before the Demo

**GitHub Setup:**
- [ ] GitHub Enterprise Cloud org provisioned
- [ ] SSO configured (show login flow)
- [ ] 3+ user accounts (Alex PM, Sarah Eng, Marcus Eng)
- [ ] Copilot Business licenses assigned

**Product Brain Content:**
- [ ] Repository structure created per above
- [ ] `.github/copilot-instructions.md` with company context
- [ ] 2-3 specs in `specs/` folder (one incomplete for live editing)
- [ ] 2-3 insights in `insights/` folder
- [ ] Sample CSV in `research/data/` for analysis demo
- [ ] PRD template in `specs/templates/`

**GitHub Project:**
- [ ] 2 completed sprints (for velocity data)
- [ ] 1 current sprint with mixed-status items
- [ ] Custom fields: Story Points, Priority, Epic
- [ ] Automations configured (status → assign)

**Copilot Spaces Setup:**
- [ ] Create "Product Brain" Space in the org
- [ ] Add repository as a source
- [ ] Add key specs, insights, and research files
- [ ] Share with demo team members
- [ ] Test queries to verify context is grounded correctly

**Agent Configuration:**
- [ ] Explore agent (read-only, can search all folders)
- [ ] Data Analyst agent (can create in `analysis/`)
- [ ] Scaffold agent (can create in `prototypes/`)
- [ ] Design Partner agent (read-only, Socratic mode)

**VS Code Setup:**
- [ ] Copilot extension installed
- [ ] GitHub Pull Requests extension
- [ ] Python + Data Science extensions (for analysis scripts)
- [ ] Agent dropdown configured with custom agents

### Demo Flow Timing

| Act | Duration | Key Moment |
|-----|----------|------------|
| 0. Explore Knowledge | 3 min | Query Copilot Space for curated context |
| 1. PRD Creation | 5 min | Real-time collab, Copilot analysis |
| 1.5. Analyze Data | 3 min | Python analysis + DAX queries for Power BI |
| 2. Issue Generation | 4 min | Copilot drafts 10 issues for review |
| 2.5. Build Prototype | 4 min | Scaffold agent creates working demo |
| 2.75. Challenge | 3 min | Design Partner finds blind spots |
| 3. Sprint Planning | 5 min | Board, roadmap, velocity |
| 4. Daily Standup | 3 min | Board view, PR integration |
| 5. Blockers | 3 min | Dependencies, cross-repo linking |
| 6. Leadership | 4 min | Burndown, shareable links |
| 7. Ship It | 4 min | Actions deploy, issue auto-close |
| 8. Documentation | 3 min | Release notes, Copilot summary |
| **Total** | **44 min** | Buffer: 6 min for questions |

---

## ⚠️ Cautions & Governance

> *"Vibe coding your way to a production codebase is clearly risky."* — Simon Willison

### What to Watch Out For

#### 1. "Almost Right" is Risky
AI-generated code and analysis needs human review. The 90% that looks correct makes the 10% that's wrong harder to spot.

**Demo Mitigation:** 
- Always show the review step
- "I generated this, now let me verify..."
- Emphasize AI as accelerator, not replacement

#### 2. Tool Adoption ≠ Impact
Measure outcomes (conversion, customer satisfaction) not activity (prompts run, prototypes built). Easy to confuse motion with progress.

**Demo Mitigation:**
- Tie everything back to business metrics
- "This prototype let us validate before building"
- "We shipped 2 weeks faster because of early feedback"

#### 3. Role Clarity Matters
When PMs ship prototypes, who owns quality? When AI drafts specs, who validates claims? Define governance before scaling.

**Questions to Address:**
| New Capability | Governance Question |
|----------------|---------------------|
| PM-built prototypes | Who reviews for security? |
| AI-generated issues | Who validates acceptance criteria? |
| Auto-assigned work | Who handles edge cases? |
| Agent-written analysis | Who checks statistical validity? |

**Demo Mitigation:**
- Show the human-in-the-loop at each step
- "I review every generated issue before committing"
- "The prototype is for validation only, not production"

### Recommended Guardrails

| Guardrail | Implementation |
|-----------|----------------|
| Prototype isolation | `prototypes/` folder has `.gitignore` for sensitive data |
| Review required | Branch protection on `specs/` and `roadmap/` |
| Agent permissions | Explore agent is read-only by design |
| Audit trail | All changes committed with linked context |
| Human approval | Actions require approval for production deployment |

---

## � Regulatory Compliance & Data Sovereignty

For enterprises with strict regulatory requirements, GitHub offers additional security and compliance options.

### GitHub Enterprise Compliance

| Requirement | GitHub Capability |
|-------------|-------------------|
| **SOC 2 Type II** | ✅ Certified annually |
| **ISO 27001** | ✅ Certified |
| **FedRAMP** | ✅ GitHub Enterprise Cloud with data residency |
| **GDPR** | ✅ DPA available, EU data residency option |
| **HIPAA** | ✅ BAA available for Enterprise |
| **PCI DSS** | ✅ Compliant infrastructure |

### Data Residency

GitHub Enterprise Cloud offers **data residency** options for organizations that require data to remain in specific geographic regions:

- **EU Data Residency** — All repository data, issues, and metadata stored in EU
- **Australia Data Residency** — Available for APAC compliance requirements
- **Additional regions** — Expanding based on customer demand

### Copilot for Business: Bring Your Own Key (BYOK)

> **Separate Offering:** Copilot BYOK is available as an add-on for GitHub Enterprise Cloud customers with specific compliance requirements.

For organizations requiring complete control over AI encryption, **Copilot BYOK** provides:

| Feature | Description |
|---------|-------------|
| **Customer-Managed Keys** | Encrypt Copilot data with your own Azure Key Vault keys |
| **Key Rotation** | Control key lifecycle and rotation policies |
| **Revocation Control** | Immediately revoke access by rotating/deleting keys |
| **Audit Logging** | Full visibility into key usage via Azure Monitor |

#### How BYOK Works

```
┌─────────────────────┐     ┌─────────────────────┐     ┌─────────────────────┐
│   Your Azure        │     │   GitHub Copilot    │     │   AI Processing     │
│   Key Vault         │────▶│   Service           │────▶│   (Encrypted)       │
│   (Customer-owned)  │     │   (Uses your key)   │     │                     │
└─────────────────────┘     └─────────────────────┘     └─────────────────────┘
         │
         ▼
   You control access,
   rotation, and revocation
```

#### When to Position BYOK

| Customer Signal | Response |
|-----------------|----------|
| "We can't use cloud AI due to data sovereignty" | BYOK + Data Residency addresses this |
| "Our security team requires customer-managed encryption" | BYOK is designed for this requirement |
| "We need to demonstrate control for auditors" | BYOK provides audit trail + key control |
| "What happens if we need to cut access immediately?" | Key revocation = immediate access termination |

#### BYOK Demo Talking Points

```
"For organizations with strict compliance requirements, we offer Copilot 
with Bring Your Own Key. Your Azure Key Vault holds the encryption keys—
GitHub never has access to the raw keys.

This means:
- You control the encryption lifecycle
- Auditors can verify you hold the keys
- If you ever need to cut access, revoke the key

It's the same Copilot experience, with enterprise-grade key management."
```

### Compliance Resources

| Resource | Link |
|----------|------|
| GitHub Security Overview | [github.com/security](https://github.com/security) |
| Trust Center | [github.com/trust-center](https://github.com/trust-center) |
| Data Residency Documentation | [GitHub Docs](https://docs.github.com/en/enterprise-cloud@latest/admin/data-residency/about-github-enterprise-cloud-with-data-residency) |
| Compliance Certifications | Available via GitHub Sales |
| BYOK Enhancements (Jan 2026) | [GitHub Changelog](https://github.blog/changelog/2026-01-15-github-copilot-bring-your-own-key-byok-enhancements/) |

---

## �📚 References

### This Repository
- [Feature Parity Details](featureparity.md)
- [Original Demo Plan](demoplan.md)
- [Full Proposal Spec](demo-spec.md)

### Product Brain (Reference Implementation)
- **Repository:** [github.com/digitarald/product-brain](https://github.com/digitarald/product-brain)
- **Talk slides:** [Agentic PM Workflows](https://digitarald.github.io/product-brain/agentic-pm-talk/)
- **What it includes:**
  - 7 demo scenarios with scripts
  - 7 custom agents configured
  - Analysis scripts for Power BI integration
  - Interactive prototypes
  - Sample specs, insights, research data

> ⚠️ **Before demoing:** Verify the reference repository is accessible and contains current content. The repository contents may have changed since this guide was written. Test all demo scenarios before presenting.
