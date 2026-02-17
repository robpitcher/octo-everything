<!-- 
╔════════════════════════════════════════════════════════════════════════════╗
║                         MAINTENANCE INSTRUCTIONS                           ║
╠════════════════════════════════════════════════════════════════════════════╣
║ PURPOSE: This markdown is a compete document against Atlassian products.   ║
║ It compares GitHub tools to Atlassian across every SDLC persona including  ║
║ leadership. The content includes the story, personas, product tool         ║
║ mapping, and demo instructions.                                            ║
║                                                                            ║
║ DEMO STORY:                                                                ║
║ The demo uses GitHub MCP to connect Copilot directly to GitHub. The PM     ║
║ creates plan/spec markdown, then Copilot via MCP creates real GitHub       ║
║ artifacts (projects, issues, PRs) from the markdown content.               ║
║                                                                            ║
║ ARCHITECTURE:                                                              ║
║ This document drives automated generation of customer-facing assets:       ║
║                                                                            ║
║   pm-demo-guide.md ──► GitHub Actions Workflow ──► pm-demo.html            ║
║         │                     │                         │                  ║
║         │                     └──► Updates README.md    │                  ║
║         │                          (table of contents)  │                  ║
║         │                                               │                  ║
║         └───────────────► Source of truth ◄─────────────┘                  ║
║                                                                            ║
║ WORKFLOW TRIGGER:                                                          ║
║ When this markdown is updated and pushed to main:                          ║
║ 1. GitHub Actions workflow detects changes to specs/demoplan/*.md          ║
║ 2. Copilot/AI summarizes content into sleek HTML brochure (pm-demo.html)   ║
║ 3. README.md is updated with table of contents linking to HTML assets      ║
║ 4. Changes are committed back to the repository                            ║
║                                                                            ║
║ DEMO VERIFICATION:                                                         ║
║ The demo must reflect the story in this markdown. Use GitHub MCP tools:    ║
║ - mcp_io_github_git_* tools for repository operations                      ║
║ - Create issues, PRs, and projects that match the narrative                ║
║ - Verify feature claims against actual GitHub product capabilities         ║
║                                                                            ║
║ RULES:                                                                     ║
║ 1. This markdown is the SOURCE OF TRUTH - HTML is generated from it        ║
║ 2. The HTML brochure is customer-facing - keep it visual & sleek           ║
║ 3. All feature claims must be grounded on verified product capability      ║
║ 4. DO NOT include pricing or cost comparisons                              ║
║ 5. DO NOT reference specific demo repositories or implementation details   ║
║ 6. Focus on capability differentiation, not cost                           ║
║ 7. Keep the HTML email-safe for Outlook (inline styles, no external deps)  ║
║ 8. Author and date must always be current in the header                    ║
║                                                                            ║
║ GITHUB ACTIONS WORKFLOW (specs-to-brochure.yml):                           ║
║ ┌──────────────────────────────────────────────────────────────────────┐   ║
║ │ on:                                                                  │   ║
║ │   push:                                                              │   ║
║ │     paths: ['specs/demoplan/*.md']                                   │   ║
║ │   workflow_dispatch:                                                 │   ║
║ │                                                                      │   ║
║ │ jobs:                                                                │   ║
║ │   generate-brochure:                                                 │   ║
║ │     - Extract personas, SDLC phases, tool mappings from markdown     │   ║
║ │     - Generate/update pm-demo.html with modern sleek styling         │   ║
║ │     - Update README.md with table of contents                        │   ║
║ │     - Commit changes back to repository                              │   ║
║ └──────────────────────────────────────────────────────────────────────┘   ║
║                                                                            ║
║ MCP INTEGRATION FOR DEMO SETUP:                                            ║
║ Use GitHub MCP server tools to programmatically create demo artifacts:     ║
║ - mcp_io_github_git_create_repository: Create demo workspace               ║
║ - mcp_io_github_git_push_files: Push spec templates                        ║
║ - mcp_io_github_git_issue_write: Create sample issues matching narrative   ║
║ - mcp_io_github_git_create_pull_request: Create PRs for demo flow          ║
╚════════════════════════════════════════════════════════════════════════════╝
-->

# GitHub for the Full SDLC: Replacing Atlassian Across Every Role

**Author:** Microsoft Product Team  
**Last Updated:** February 16, 2026  
**Status:** Active

**Compete Brief: Feature Parity with Jira & Confluence for Developers and Developer-Adjacent Roles**

---

## 🎯 Demo Objective

Tell the story of the **complete Software Development Lifecycle (SDLC)**—from ideation to production—using only GitHub products. For each phase and each persona, demonstrate how GitHub replaces Atlassian tools (Jira, Confluence, Bitbucket) while adding AI-powered capabilities they can't match.

**Core Message:** *"One platform for your entire SDLC—planning, coding, testing, deploying, and documenting—with AI that understands your code, your team, and your workflow."*

---

## 👥 Personas Covered

| Persona | Atlassian Today | GitHub Tomorrow |
|---------|-----------------|-----------------|
| **Product Manager** | Confluence + Jira | GitHub Issues + Projects + Copilot Spaces + MCP |
| **Developer** | Jira + Bitbucket | GitHub Issues + Repos + Copilot |
| **QA Engineer** | Jira + Confluence (test plans) | GitHub Issues + Actions + Copilot |
| **Security Engineer** | Jira + third-party scanners | GitHub Advanced Security + Copilot Autofix |
| **Release Manager** | Jira + Confluence + CI tool | GitHub Releases + Actions + Projects |
| **DevOps/SRE** | Jira + external CI/CD | GitHub Actions + Environments + Deployments |
| **Technical Writer** | Confluence | GitHub Markdown + Pages + Copilot |
| **Leadership/Executive** | Jira Align + manual exports | GitHub Projects Insights + Power BI |

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
2. **Atlassian approach** (Jira/Confluence/Bitbucket)
3. **GitHub approach** with specific features
4. **Agentic enhancement** (Copilot capabilities)

---

## 🧠 Product Brain: The Demo Concept

**Product Brain** represents a structured repository approach that demonstrates the GitHub SDLC workflow end-to-end. It shows how all team members—PMs, developers, QA, security, and release managers—can collaborate using GitHub + Copilot.

### What Product Brain Demonstrates

| Capability | How It's Shown | Personas |
|------------|----------------|----------|
| **Knowledge Management** | Specs, insights, research organized in folders | PM, Tech Writer |
| **Copilot Spaces** | Curated context collections that ground AI responses | All roles |
| **Agentic Workflows** | Custom agents for exploration, analysis, prototyping | PM, Developer |
| **AI-Assisted Development** | Copilot generates code, tests, docs, issues | Developer, QA |
| **CI/CD Integration** | Actions workflows for test, build, deploy | DevOps, Release |
| **Security Scanning** | Dependabot, secret scanning, CodeQL | Security |
| **Unified Platform** | Everything in one repo—replaces 4+ Atlassian tools | All roles |

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
| Atlassian Stack (4+ tools) | GitHub Platform (1 tool) |
|----------------------------|--------------------------|
| Jira + Confluence + Bitbucket + Jenkins | GitHub (Issues, Projects, Repos, Actions) |
| Context scattered across tools | All context in one place |
| Manual sync between systems | Auto-linked PRs ↔ Issues ↔ Projects |
| AI doesn't understand code (Rovo) | AI understands your codebase (Copilot) |
| Separate logins, contracts, support | One platform, one contract, one support |
| Developers context-switch constantly | Developers stay in VS Code / GitHub |

---

## � GitHub MCP: The PM's Automation Engine

**Model Context Protocol (MCP)** is the backbone of this demo. It connects Copilot directly to GitHub, enabling PMs to turn plan documents into real project artifacts without leaving VS Code.

### What is GitHub MCP?

MCP is a server that exposes GitHub APIs to AI assistants. When the user runs Copilot in VS Code with the GitHub MCP server enabled:

1. **Copilot can read** — repos, issues, PRs, projects, file contents
2. **Copilot can write** — create issues, push files, open PRs, update projects
3. **Everything is authenticated** — uses the user's GitHub credentials
4. **Full context** — AI understands your plan markdown AND can act on it

### The PM Workflow with GitHub MCP

```
┌─────────────────────┐     ┌─────────────────────┐     ┌─────────────────────┐
│  Plan Markdown      │────▶│  Copilot + MCP      │────▶│  GitHub Artifacts   │
│  (specs/dark-mode.md)│     │  Reads & Executes   │     │  Projects, Issues   │
└─────────────────────┘     └─────────────────────┘     └─────────────────────┘
         │                           │                           │
         │                           ▼                           │
         │                  ┌─────────────────┐                  │
         │                  │ GitHub MCP Tools │                  │
         │                  │ • issue_write    │                  │
         │                  │ • push_files     │                  │
         │                  │ • create_pr      │                  │
         │                  │ • search_issues  │                  │
         │                  └─────────────────┘                  │
         │                                                        │
         └────────────────── Bidirectional Sync ──────────────────┘
```

### Demo Flow: Plan Markdown → GitHub Project

| Step | PM Action | MCP Tool | Result |
|------|-----------|----------|--------|
| 1 | Open PRD in VS Code | — | Copilot has context |
| 2 | "Create a project for this feature" | `mcp_io_github_git_*` | GitHub Project created |
| 3 | "Generate issues from requirements" | `mcp_io_github_git_issue_write` | Issues created & linked |
| 4 | "Assign based on code ownership" | `mcp_io_github_git_*` + repo analysis | Smart assignments |
| 5 | "Update the PRD with issue links" | `mcp_io_github_git_push_files` | Markdown updated |

### Why This Beats Atlassian

| Atlassian + Rovo | GitHub + Copilot MCP |
|------------------|----------------------|
| Rovo can search Confluence | Copilot can search AND create |
| Manual issue creation from docs | Automated issue creation from markdown |
| No code context | Full codebase awareness |
| Separate tool integrations | Native MCP server built-in |
| AI suggests, human executes | AI executes (with human approval) |

### Enabling GitHub MCP

```json
// VS Code settings.json
{
  "mcp": {
    "servers": {
      "github": {
        "command": "npx",
        "args": ["-y", "@modelcontextprotocol/server-github"]
      }
    }
  }
}
```

> **Demo Tip:** Show the MCP server connection in VS Code status bar. When green, Copilot can execute GitHub operations directly.

---

## �📈 The Evolution of Development Tools

> "AI agents are a much better product manager than I ever was" — Dennis Yang, Principal PM at Chime

| Era | Development Approach | Tools | GitHub Equivalent |
|-----|----------------------|-------|-------------------|
| **2010s** | Manual everything | Jira, Confluence, Jenkins, Bitbucket | ❌ Legacy fragmentation |
| **2020s** | Integrated platforms | Atlassian Cloud, Azure DevOps | ⚠️ Better, still siloed |
| **2025+** | AI-native SDLC | GitHub + Copilot as unified platform | ✅ **This Demo** |

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

| Act | PM Activity | Atlassian Today | GitHub Demo (Product Brain) |
|-----|-------------|-----------------|-------------|
| **0** | Explore existing knowledge | Search Confluence | Copilot Spaces + semantic search |
| **1** | Write a PRD | Confluence page | Markdown in `specs/` |
| **1.5** | Analyze customer data | Export to Excel, manual analysis | Copilot + Power BI |
| **2** | Break down into work items | Manual Jira issues | Copilot + GitHub MCP creates Issues & Projects |
| **2.5** | Build a prototype | Wait for engineering | Scaffold Agent builds demo |
| **2.75** | Challenge the approach | Hope for feedback in review | Design Partner Agent stress-tests |
| **3** | Plan the sprint | Jira backlog + board | GitHub Projects |
| **4** | Track daily progress | Jira board | Projects board view |
| **5** | Resolve blockers | Jira dependencies | Issue links + sub-issues |
| **6** | Report to leadership | Jira dashboards | Projects Insights |
| **7** | Ship the feature | Separate CI/CD tool | GitHub Actions |
| **8** | Document for users | Confluence page | Markdown in repo or GitHub Pages |

---

## 👥 Role-Based Agentic Workflows

The demo focuses on PM workflows, but GitHub + Copilot enables agentic automation across all developer-adjacent roles. Use these patterns to expand the demo for different audiences.

### 🧑‍💻 Developer Workflows

| Workflow | Atlassian Today | GitHub + Copilot Agentic |
|----------|-----------------|--------------------------|
| **Code Review** | Manual review in Bitbucket | Copilot code review + auto-suggestions |
| **Bug Triage** | Jira ticket + manual investigation | Copilot analyzes stack trace, suggests fix locations |
| **Refactoring** | Manual with IDE refactor tools | Copilot Edits for multi-file refactoring |
| **Test Generation** | Write tests manually | Copilot generates unit/integration tests |
| **Documentation** | Confluence after the fact | Copilot generates docs from code |
| **Dependency Updates** | Manual or Renovate | Dependabot + Copilot explains breaking changes |

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

| Workflow | Atlassian Today | GitHub + Copilot Agentic |
|----------|-----------------|--------------------------|
| **Test Case Creation** | Manual in Confluence/Zephyr | Copilot generates from spec or code |
| **Bug Verification** | Manual reproduce steps | Copilot runs automated repro script |
| **Regression Analysis** | Manual test suite execution | Actions run tests, Copilot analyzes failures |
| **Test Data Generation** | Manual or custom scripts | Copilot generates realistic test data |
| **Accessibility Audit** | Manual or third-party tools | Copilot + Actions audit on PR |

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

| Workflow | Atlassian Today | GitHub + Copilot Agentic |
|----------|-----------------|--------------------------|
| **Release Notes** | Manual Confluence page | Copilot generates from merged PRs |
| **Change Impact** | Manual review of Jira tickets | Copilot analyzes PR scope + dependencies |
| **Go/No-Go Checklist** | Manual Confluence checklist | Actions + branch protection rules |
| **Rollback Plan** | Manual documentation | Copilot generates from deployment config |
| **Stakeholder Communication** | Manual email draft | Copilot drafts release announcement |

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

| Workflow | Atlassian Today | GitHub + Copilot Agentic |
|----------|-----------------|--------------------------|
| **Vulnerability Triage** | Manual review of security tickets | Copilot Autofix suggests remediation |
| **Dependency Scanning** | Third-party tools | Dependabot + secret scanning native |
| **Security Review** | Manual code review checklist | Copilot flags security anti-patterns |
| **Incident Response** | Manual playbook in Confluence | Copilot generates response based on context |
| **Compliance Documentation** | Manual Confluence pages | Copilot generates from code + policies |

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

## 🏛️ Regulatory & Compliance: GitHub for Regulated Industries

GitHub Enterprise provides enterprise-grade compliance capabilities that meet the stringent requirements of regulated industries—financial services, healthcare, and government.

### GitHub Compliance Certifications

| Certification | GitHub Status | Atlassian Status | Why It Matters |
|---------------|---------------|------------------|----------------|
| **SOC 2 Type II** | ✅ Certified | ✅ Certified | Independent audit of security controls |
| **SOC 3** | ✅ Certified | ✅ Certified | Public-facing security attestation |
| **FedRAMP High** | ✅ GitHub ATO | ⚠️ Moderate only | Federal agencies requiring High baseline |
| **FedRAMP Moderate** | ✅ Certified | ✅ Certified | Most federal workloads |
| **HIPAA BAA** | ✅ Available | ✅ Available | Healthcare data processing |
| **ISO 27001** | ✅ Certified | ✅ Certified | Information security management |
| **ISO 27017** | ✅ Certified | ✅ Certified | Cloud-specific security controls |
| **ISO 27018** | ✅ Certified | ✅ Certified | PII protection in cloud |
| **PCI DSS** | ✅ Level 1 | ✅ Certified | Payment card data handling |
| **StateRAMP** | ✅ Authorized | ❌ Not listed | State & local government |
| **DoD IL4** | ✅ GitHub ATO | ⚠️ Limited | Department of Defense workloads |

> **Key Differentiator:** GitHub has achieved **FedRAMP High** authorization, enabling use for the most sensitive federal workloads. Atlassian Cloud is FedRAMP Moderate only, limiting its use in high-security federal environments.

### Regulated Industries Use Cases

#### 🏦 Financial Services

| Requirement | GitHub Capability | Demo Point |
|-------------|-------------------|------------|
| **Segregation of Duties** | Branch protection + required approvals | No single person can push to production |
| **Change Management** | PR-based workflow with audit trail | Every change linked to approval |
| **Audit Trail** | Git history + deploy logs + Actions | Immutable record of who, what, when |
| **Vendor Risk** | SBOM generation via Actions | Know every dependency in production |
| **Encryption** | At-rest and in-transit (AES-256, TLS 1.3) | Meets banking encryption standards |

**Demo Script (Financial Services):**
```
ALEX: "For our banking clients, compliance isn't optional. 
       Let me show how GitHub meets SOX and FFIEC requirements..."

[Show branch protection rules]

ALEX: "No code reaches production without at least two approvals.
       This rule is enforced by GitHub—not just policy, but technically enforced."

[Show audit log]

ALEX: "Every action is logged: who approved, when, what SHA was deployed.
       This is the audit trail your compliance team needs for SOX 404."

[Show SBOM generation in Actions]

ALEX: "We generate a Software Bill of Materials on every release.
       Your security team knows exactly what's in production."
```

#### 🏥 Healthcare

| Requirement | GitHub Capability | Demo Point |
|-------------|-------------------|------------|
| **HIPAA BAA** | ✅ Available with Enterprise | Business associate agreement for PHI |
| **Access Control** | SSO + SCIM + team sync | Principle of least privilege |
| **Audit Logging** | Enterprise audit log API | Export to SIEM for compliance monitoring |
| **Secret Protection** | Push protection + secret scanning | Prevent PHI in code |
| **Data Residency** | GitHub Enterprise Server option | On-premises for strict requirements |

**Demo Script (Healthcare):**
```
ALEX: "Healthcare clients need HIPAA compliance built into their workflow..."

[Show GitHub Enterprise HIPAA BAA documentation]

ALEX: "We have a signed BAA with GitHub. That means we can use GitHub
       for repositories that touch PHI—with proper access controls."

[Show secret scanning alert]

ALEX: "If someone accidentally commits a patient ID pattern, 
       GitHub blocks the push before it ever reaches the server."
```

#### 🏛️ Government (Federal, State, Local)

| Requirement | GitHub Capability | Demo Point |
|-------------|-------------------|------------|
| **FedRAMP High** | ✅ GitHub.com (ATO) | Authorized for sensitive federal data |
| **ITAR** | GitHub Enterprise Server | Air-gapped for defense |
| **StateRAMP** | ✅ Authorized | State/local agency compliance |
| **CJIS** | GitHub Enterprise Server | Criminal justice data |
| **508 Compliance** | VPAT available | Accessibility for federal web apps |

**Demo Script (Government):**
```
ALEX: "For federal agencies, FedRAMP authorization is table stakes..."

[Show GitHub FedRAMP marketplace listing]

ALEX: "GitHub has FedRAMP High authorization—not just Moderate like Atlassian.
       This means agencies with higher security classifications can use us."

[Show StateRAMP listing]

ALEX: "For state and local government, we're StateRAMP authorized.
       Atlassian isn't on the StateRAMP marketplace."
```

### Compliance Comparison: GitHub vs Atlassian

| Capability | GitHub Enterprise | Atlassian Cloud | Winner |
|------------|-------------------|-----------------|--------|
| FedRAMP High | ✅ Authorized | ❌ Moderate only | **GitHub** |
| StateRAMP | ✅ Authorized | ❌ Not listed | **GitHub** |
| DoD IL4 | ✅ ATO available | ⚠️ Limited | **GitHub** |
| HIPAA BAA | ✅ Available | ✅ Available | Tie |
| SOC 2 Type II | ✅ Certified | ✅ Certified | Tie |
| On-premises option | ✅ Enterprise Server | ✅ Data Center | Tie |
| Air-gapped deployment | ✅ Supported | ✅ Supported | Tie |
| Audit log API | ✅ Streaming to SIEM | ✅ Available | Tie |

### What This Means for Sales

When competing for regulated industry accounts:

1. **Federal (High baseline)**: GitHub wins outright—FedRAMP High vs Moderate
2. **State/Local**: GitHub has StateRAMP; Atlassian does not
3. **Financial Services**: Equivalent certifications, but GitHub has native SBOM, immutable history
4. **Healthcare**: Both offer HIPAA BAA; GitHub secret scanning adds protection
5. **Defense**: GitHub Enterprise Server for ITAR/air-gapped; similar to Atlassian Data Center

---

# 📋 SDLC Phase-by-Phase: Atlassian vs GitHub

For each SDLC phase, we show what each persona does, how they do it in Atlassian today, and how GitHub replaces it with better integration and AI.

---

## Phase 1: PLAN

*Defining what to build, gathering requirements, prioritizing work*

### 📊 Product Manager

| Activity | Atlassian Today | GitHub Approach | Agentic Enhancement |
|----------|-----------------|-----------------|---------------------|
| **Write PRD** | Confluence page | Markdown in repo (`specs/`) | Copilot drafts from prompts |
| **Gather requirements** | Confluence comments, Jira links | Issue discussions + Copilot Spaces | Copilot synthesizes from Space |
| **Prioritize backlog** | Jira backlog ranking | Projects Table view + Priority field | Copilot suggests priority based on context |
| **Create roadmap** | Jira Roadmap (Premium) | Projects Roadmap view | Auto-links to dependent issues |
| **Share with stakeholders** | Confluence page exports | Public Projects view, shareable links | — |

**Atlassian Features Replaced:**
- Confluence pages → Markdown + Copilot Spaces
- Jira backlog → GitHub Projects Table view
- Jira Roadmap → GitHub Projects Roadmap view
- Confluence @mentions → GitHub @mentions with code context

### 🧪 QA Engineer (Planning)

| Activity | Atlassian Today | GitHub Approach | Agentic Enhancement |
|----------|-----------------|-----------------|---------------------|
| **Review requirements** | Read Confluence page | Read spec in repo + ask Copilot | Copilot identifies testable requirements |
| **Create test plan** | Confluence + Zephyr | Markdown test plan in repo | Copilot generates test cases from spec |
| **Estimate QA effort** | Jira story points | Project custom fields | Copilot estimates based on code complexity |
| **Identify risks** | Manual review | Copilot Spaces query | Copilot flags similar past bugs |

**Atlassian Features Replaced:**
- Zephyr test management → Markdown test plans + Issues
- Confluence test documentation → Repo-based docs with version history

---

## Phase 2: DESIGN

*Technical design, architecture decisions, prototyping*

### 🧑‍💻 Developer

| Activity | Atlassian Today | GitHub Approach | Agentic Enhancement |
|----------|-----------------|-----------------|---------------------|
| **Technical design doc** | Confluence page | Markdown ADR (Architecture Decision Record) | Copilot drafts design from requirements |
| **Diagram architecture** | Confluence + draw.io | Mermaid diagrams in Markdown | Copilot generates Mermaid from description |
| **Review designs** | Confluence comments | PR review on design docs | Copilot suggests improvements |
| **Spike/POC** | Branch in Bitbucket | Branch in GitHub | Copilot writes POC code |

**Atlassian Features Replaced:**
- Confluence technical docs → Markdown ADRs in repo
- draw.io diagrams → Mermaid (rendered in GitHub/VS Code)
- Confluence comments → PR discussions with code context

### 📊 Product Manager (Design)

| Activity | Atlassian Today | GitHub Approach | Agentic Enhancement |
|----------|-----------------|-----------------|---------------------|
| **Build prototype** | Wait for engineering | Scaffold Agent builds HTML demo | 2-minute working prototype |
| **Review technical feasibility** | Meeting with engineers | Ask Copilot about codebase | Copilot explains technical constraints |
| **Document decisions** | Confluence decision log | ADR in repo | Copilot drafts decision record |

**Atlassian Features Replaced:**
- Waiting for engineering → PM builds prototypes with AI
- Confluence decision logs → Git-versioned ADRs

---

## Phase 3: DEVELOP

*Writing code, code review, iteration*

### 🧑‍💻 Developer

| Activity | Atlassian Today | GitHub Approach | Agentic Enhancement |
|----------|-----------------|-----------------|---------------------|
| **Pick up work** | Jira "In Progress" | GitHub Issue assignment | Copilot Coding Agent can start autonomously |
| **Write code** | IDE + Bitbucket | VS Code + GitHub | Copilot completions, chat, edits |
| **Create PR** | Bitbucket PR | GitHub PR | Auto-links to Issue |
| **Code review** | Bitbucket review | GitHub PR review | Copilot Code Review suggests fixes |
| **Address feedback** | Manual fixes | Copilot implements suggestions | One-click apply fixes |
| **Update Jira status** | Manual transition | Auto-update via Project automation | — |

**Atlassian Features Replaced:**
- Jira issue tracking → GitHub Issues (linked to code)
- Bitbucket PRs → GitHub PRs (with Copilot review)
- Jira board → GitHub Projects Board (auto-updates from PR status)
- Manual status updates → Project automations

### 🧪 QA Engineer (Development)

| Activity | Atlassian Today | GitHub Approach | Agentic Enhancement |
|----------|-----------------|-----------------|---------------------|
| **Review PR for testability** | Bitbucket PR comments | GitHub PR review | Copilot flags untested code |
| **Write tests** | Separate test suite | Tests in same repo | Copilot generates test cases |
| **Request changes** | Bitbucket comments | GitHub review requests | Copilot suggests test improvements |

---

### 🧑‍💻 Developer Deep-Dive: Daily Workflow Comparison

#### Morning Routine: Picking Up Work

| Activity | Atlassian Stack | GitHub Stack | Time Saved |
|----------|-----------------|--------------|------------|
| Find assigned work | Open Jira → Filter "My Issues" → Sort by sprint | Open GitHub → Issues assigned to me | ~2 min/day |
| Understand context | Click issue → Read description → Open Confluence → Find related docs → Open Bitbucket → Find related code | Click issue → See linked PRs, commits, specs in same interface | ~10 min/task |
| Start coding | Copy branch name → Open terminal → Create branch → Open IDE | Click "Create branch" → Open in VS Code | ~3 min/task |

#### Code Review Comparison

| Capability | Bitbucket | GitHub + Copilot | Impact |
|------------|-----------|------------------|--------|
| Review assignment | Manual or round-robin | CODEOWNERS + auto-assign | Faster routing |
| Review suggestions | Text comments only | Copilot suggests fixes inline | 40% faster reviews* |
| Security review | Manual checklist | Copilot flags vulnerabilities | Shift-left security |
| Apply suggestions | Copy-paste from comment | One-click apply | ~5 min/PR saved |
| CI feedback | Switch to Jenkins | Inline in PR | No context switch |

*Based on GitHub internal studies on Copilot code review adoption

#### Developer Productivity Metrics (Trackable in GitHub)

| Metric | How to Measure | GitHub Source | Power BI Visualization |
|--------|----------------|---------------|------------------------|
| **PR Cycle Time** | Time from PR open → merge | PR timestamps via API | Line chart over time |
| **Review Turnaround** | Time from review request → approval | PR review events | Box plot by team |
| **First-Time Approval Rate** | PRs approved without changes requested | PR review state | Percentage gauge |
| **Code Review Coverage** | % of PRs with Copilot review | Copilot usage API | Stacked bar |
| **Commit Frequency** | Commits per developer per week | Commit history | Heatmap calendar |
| **Copilot Acceptance Rate** | % of Copilot suggestions accepted | Copilot telemetry | Trend line |

#### Developer Demo Script
```
DEVELOPER: "Let me show you my morning workflow..."

[Open GitHub Issues]

DEVELOPER: "Here are my assigned issues. I'll start with this bug fix."

[Click issue, show full context]

DEVELOPER: "I can see:
           - The spec that defined this feature
           - The PR that introduced the bug
           - The failing test in CI
           - Related discussions
           
           In Atlassian, this is 4 browser tabs. Here it's one screen."

[Click "Create branch"]

DEVELOPER: "Branch created. Now I open in VS Code..."

[Open VS Code with Copilot]

DEVELOPER: "Copilot already understands the context from the issue.
           Watch—I'll describe what I need to fix..."

[Type comment, Copilot suggests code]

DEVELOPER: "It read the issue description and suggested the fix.
           Rovo can't do this—it doesn't have code context."
```

---

## Phase 4: TEST

*Testing, QA, security scanning*

### 🧪 QA Engineer

| Activity | Atlassian Today | GitHub Approach | Agentic Enhancement |
|----------|-----------------|-----------------|---------------------|
| **Run test suite** | Jenkins/external CI | GitHub Actions | Auto-runs on PR |
| **Bug reporting** | Jira bug ticket | GitHub Issue from failed test | Copilot creates issue with context |
| **Regression testing** | Manual or Zephyr | Actions workflow | Copilot analyzes failures |
| **Test data setup** | Manual or scripts | Actions + Copilot | Copilot generates realistic test data |
| **Accessibility audit** | Third-party tools | Actions + Copilot | Copilot flags accessibility issues |

**Atlassian Features Replaced:**
- Jenkins CI → GitHub Actions (native)
- Jira bug tickets → GitHub Issues (linked to failing tests)
- Zephyr test execution → Actions test workflows

### 🔐 Security Engineer

| Activity | Atlassian Today | GitHub Approach | Agentic Enhancement |
|----------|-----------------|-----------------|---------------------|
| **Dependency scanning** | Third-party (Snyk, etc.) | Dependabot (native) | Auto-creates PRs for updates |
| **Secret detection** | Third-party tools | Secret Scanning (native) | Push protection blocks commits |
| **Code security review** | Manual checklist | Code Scanning (CodeQL) | Copilot Autofix remediates |
| **Vulnerability triage** | Jira security tickets | Security alerts dashboard | Copilot explains impact + fix |
| **Compliance checks** | Manual Confluence docs | Actions + policy as code | Copilot generates compliance reports |

**Atlassian Features Replaced:**
- Jira security tickets → GitHub Security Alerts
- External scanners → Native Dependabot, Secret Scanning, CodeQL
- Manual remediation → Copilot Autofix

---

## Phase 5: DEPLOY

*Release management, CI/CD, deployment*

### 📦 Release Manager

| Activity | Atlassian Today | GitHub Approach | Agentic Enhancement |
|----------|-----------------|-----------------|---------------------|
| **Release planning** | Jira Release page | GitHub Milestones + Releases | Copilot drafts release notes |
| **Change log** | Manual Confluence page | Auto-generated from PRs | Copilot summarizes for users |
| **Go/no-go decision** | Meeting + Jira filter | Branch protection + required checks | Automated gates |
| **Deploy to staging** | Jenkins/external tool | GitHub Actions + Environments | One-click deployments |
| **Deploy to production** | Manual or Jenkins | Actions with approval gates | Environment protection rules |
| **Rollback plan** | Confluence runbook | Actions workflow | Copilot generates from deploy config |

**Atlassian Features Replaced:**
- Jira Releases → GitHub Releases + Milestones
- Confluence release notes → Auto-generated from PRs
- Jenkins deployments → GitHub Actions with Environments
- Manual rollback docs → Actions-based rollback workflows

### 🛠️ DevOps/SRE

| Activity | Atlassian Today | GitHub Approach | Agentic Enhancement |
|----------|-----------------|-----------------|---------------------|
| **CI/CD pipeline** | Jenkins + Bitbucket Pipelines | GitHub Actions | Copilot writes workflows |
| **Infrastructure as Code** | Separate repo + Confluence docs | Same repo, linked to app | Copilot generates Terraform/Bicep |
| **Environment management** | External tools | GitHub Environments | Secrets management native |
| **Deployment monitoring** | External dashboards | Actions logs + Deployments view | — |
| **Incident response** | Jira + PagerDuty | Issues + Actions for remediation | Copilot drafts runbooks |

**Atlassian Features Replaced:**
- Bitbucket Pipelines → GitHub Actions (more powerful)
- Jenkins → GitHub Actions (native, no separate server)
- Confluence runbooks → Markdown runbooks + Copilot

---

### 🛠️ DevOps/SRE Deep-Dive

#### CI/CD Comparison

| Capability | Jenkins | Bitbucket Pipelines | GitHub Actions | Winner |
|------------|---------|---------------------|----------------|--------|
| YAML config | Jenkinsfile | bitbucket-pipelines.yml | workflow YAML | Tie |
| Matrix builds | Plugin | Limited | Native | Actions |
| Self-hosted runners | ✅ | ✅ | ✅ | Tie |
| Hosted runners | ❌ (pay separately) | Limited | 50K mins included | Actions |
| Secrets management | Vault integration | Pipelines variables | Native + OIDC | Actions |
| Environment protection | Manual gates | Basic | Full protection rules | Actions |
| Reusable workflows | Shared libraries | Limited | Reusable workflows | Actions |
| Marketplace | Plugins | Limited | 15K+ Actions | Actions |
| Copilot assistance | ❌ | ❌ | ✅ Writes YAML | Actions |

#### DORA Metrics Implementation

```yaml
# .github/workflows/dora-metrics.yml
# Note: This is a conceptual workflow. Implement metric calculations
# using GitHub API queries or third-party actions like:
# - dorametrics/github-actions-dora
# - codeclimate/velocity
name: DORA Metrics Collection

on:
  schedule:
    - cron: '0 0 * * *'  # Daily
  workflow_dispatch:

jobs:
  collect-metrics:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v4
        
      - name: Calculate Metrics via GitHub API
        env:
          GH_TOKEN: ${{ secrets.GITHUB_TOKEN }}
        run: |
          # Deployment frequency: count workflow runs for deploy workflows
          gh api repos/${{ github.repository }}/actions/runs \
            --jq '[.workflow_runs[] | select(.name=="Deploy")] | length' > deploy_count.txt
          
          # Lead time: calculate from PR merge to deploy
          # (implementation depends on your deploy tagging strategy)
          
      - name: Export to Power BI
        run: |
          curl -X POST "${{ secrets.POWERBI_PUSH_URL }}" \
            -H "Content-Type: application/json" \
            -d @metrics.json
```

#### Incident Response Comparison

| Phase | Atlassian (Jira + Opsgenie) | GitHub |
|-------|----------------------------|--------|
| **Alert** | Opsgenie pages on-call | Actions → Webhook → PagerDuty |
| **Triage** | Create Jira incident ticket | Create Issue with incident template |
| **Investigate** | Open multiple tools, search Confluence | Ask Copilot: "What changed in the last 24 hours?" |
| **Communicate** | Update Jira + Slack manually | Issue comments + Slack integration |
| **Resolve** | Push fix via Jenkins | Push fix, Actions deploys |
| **Postmortem** | Create Confluence page manually | Copilot generates from incident timeline |
| **Action items** | Create Jira tickets manually | Copilot creates Issues from postmortem |

#### DevOps Demo Script

```
SRE: "Let me show you our incident workflow..."

[Simulate incident alert]

SRE: "Alert comes in. I create an issue using our incident template."

[Create issue from template]

SRE: "Now I need to understand what changed. Copilot..."

COPILOT: "In the last 24 hours:
         - 3 PRs merged to main
         - 1 deployment to production at 14:32
         - Config change in deploy workflow at 14:30
         
         The config change modified timeout settings.
         This correlates with the error spike."

SRE: "Found it. Let me revert..."

[Create revert PR]

SRE: "Actions runs tests, deploys automatically. Now postmortem..."

[Ask Copilot to generate postmortem]

COPILOT: "I've drafted a postmortem in incidents/2026-02-16-timeout.md:
         - Timeline reconstructed from commits and deploys
         - Root cause: timeout reduced below p99 latency
         - Action items: Add latency check to CI pipeline"
```

---

## Phase 6: OPERATE & MONITOR

*Production monitoring, incident management, continuous improvement*

### 🛠️ DevOps/SRE

| Activity | Atlassian Today | GitHub Approach | Agentic Enhancement |
|----------|-----------------|-----------------|---------------------|
| **Incident tracking** | Jira + Opsgenie | GitHub Issues + Discussions | Copilot drafts postmortem |
| **Postmortem documentation** | Confluence | Markdown in repo | Copilot generates from timeline |
| **On-call handoff** | Confluence wiki | Repo-based runbook | Copilot Spaces for quick context |
| **Capacity planning** | Confluence + spreadsheets | Projects + Copilot analysis | — |

### 📊 Product Manager (Operate)

| Activity | Atlassian Today | GitHub Approach | Agentic Enhancement |
|----------|-----------------|-----------------|---------------------|
| **User feedback triage** | Jira + Confluence synthesis | Issues + Copilot Spaces | Copilot synthesizes feedback themes |
| **Feature usage analysis** | External tools | Copilot queries usage data | — |
| **Plan next iteration** | Back to Jira/Confluence | GitHub Projects + Copilot | Copilot suggests based on feedback |

---

## 📋 Quick Reference: Atlassian → GitHub by Persona

### Product Manager
| Atlassian | GitHub | AI Enhancement |
|-----------|--------|----------------|
| Confluence PRD | Markdown `specs/` | Copilot drafts |
| Jira Backlog | Projects Table | Copilot prioritizes (via chat) |
| Jira Roadmap | Projects Roadmap | Date-based timeline |
| Confluence spaces | Copilot Spaces | AI-grounded queries |
| Jira dashboards | Projects Insights | Historical charts, aggregations |

### Developer
| Atlassian | GitHub | AI Enhancement |
|-----------|--------|----------------|
| Jira ticket | GitHub Issue | Coding Agent resolves |
| Bitbucket PR | GitHub PR | Copilot reviews |
| Bitbucket Code Review | PR Review | Copilot suggests fixes |
| Confluence tech docs | Markdown ADRs | Copilot drafts |
| Jira status updates | Auto via PR | Project automations |

### QA Engineer
| Atlassian | GitHub | AI Enhancement |
|-----------|--------|----------------|
| Zephyr test plans | Markdown test plans | Copilot generates |
| Jira bug tickets | Issues from tests | Auto-created |
| Jenkins testing | Actions workflows | Auto-runs |
| Confluence test docs | Repo-based docs | Version-controlled |

### Security Engineer
| Atlassian | GitHub | AI Enhancement |
|-----------|--------|----------------|
| Jira security tickets | Security Alerts | Dashboard |
| External scanners | Native scanning | Dependabot, CodeQL |
| Manual remediation | Copilot Autofix | Auto-fix PRs |
| Confluence compliance | Policy as code | Actions enforcement |

### Release Manager
| Atlassian | GitHub | AI Enhancement |
|-----------|--------|----------------|
| Jira Releases | GitHub Releases | Copilot notes |
| Confluence changelog | Auto-generated | From PRs |
| Jenkins deploy | Actions deploy | Native |
| Manual approvals | Environment gates | Required reviewers |

### DevOps/SRE
| Atlassian | GitHub | AI Enhancement |
|-----------|--------|----------------|
| Jenkins | Actions | Copilot writes YAML |
| Bitbucket Pipelines | Actions | More powerful |
| Confluence runbooks | Markdown runbooks | Copilot drafts |
| Jira incidents | Issues | Copilot postmortem |

### Leadership/Executive
| Atlassian | GitHub | AI Enhancement |
|-----------|--------|----------------|
| Jira Align | Projects Insights | Native |
| Manual exports to Excel | Power BI integration | Real-time |
| Jira dashboards | Insights + Power BI | DORA metrics |
| Portfolio views | Org-level Projects | Cross-repo visibility |
| Manual status meetings | Shareable links | Self-service |

---

## 📊 Leadership & Executive Workflows

> **Key Insight:** Leadership doesn't care about tools—they care about outcomes. GitHub provides the data pipeline; Power BI provides the executive dashboard.

### What Leadership Asks

| Question | Atlassian Answer | GitHub + Power BI Answer |
|----------|------------------|--------------------------|
| "Are we on track for Q2?" | Export Jira → Excel → Build chart | Projects Insights → Shareable link |
| "Why is Feature X late?" | Dig through Jira, ask PM | Copilot: "Summarize blockers for Feature X" |
| "How productive is the team?" | Guess from velocity | DORA metrics dashboard (deploy frequency, lead time) |
| "What's our security posture?" | Ask Security team | Security Overview dashboard (native) |
| "How much technical debt?" | No visibility | Dependabot + Code Scanning trends |

### GitHub Native Metrics for Leadership

| Metric | Where to Find | What It Tells You |
|--------|---------------|-------------------|
| **Deployment Frequency** | Actions → Workflow runs | How often we ship (DORA) |
| **Lead Time for Changes** | PR open → deploy timestamp (calculate via API) | Speed from code to production (DORA) |
| **Change Failure Rate** | Rollback deploys / Total deploys (calculate via API) | Quality of releases (DORA) |
| **Mean Time to Recovery** | Incident issue open → resolved (calculate via API) | Resilience (DORA) |
| **Sprint Progress** | Projects → Insights → Historical chart | Items completed over time (burn-up style) |
| **Story Point Totals** | Projects → Insights → Aggregation | Sprint capacity, completion |
| **Open Security Alerts** | Security → Overview | Risk exposure |
| **Dependency Health** | Dependabot → Alerts | Supply chain risk |

> **Note:** DORA metrics require custom calculation via GitHub API or third-party tools. GitHub does not provide native DORA dashboards.

### Power BI Executive Dashboard Architecture

```
┌────────────────────────────────────────────────────────────────────────────┐
│                     EXECUTIVE DASHBOARD (Power BI)                        │
├────────────────────────────────────────────────────────────────────────────┤
│ ┌──────────────────┐ ┌──────────────────┐ ┌──────────────────────────────┐│
│ │  DORA Metrics    │ │  Portfolio View  │ │     Security Posture         ││
│ │  ─────────────   │ │  ─────────────   │ │     ─────────────            ││
│ │  Deploy Freq: 12 │ │  ● Checkout: 90% │ │     Critical: 2              ││
│ │  Lead Time: 2.3d │ │  ● Search: 45%   │ │     High: 8                  ││
│ │  Failure: 4%     │ │  ○ Mobile: 20%   │ │     Medium: 23               ││
│ │  MTTR: 1.2h      │ │                  │ │     [Trend ↓ 15%]            ││
│ └──────────────────┘ └──────────────────┘ └──────────────────────────────┘│
│ ┌──────────────────────────────────┐ ┌───────────────────────────────────┐│
│ │       Team Velocity Trend        │ │     Release Timeline (Gantt)      ││
│ │         (12-week rolling)        │ │     with dependency arrows        ││
│ └──────────────────────────────────┘ └───────────────────────────────────┘│
├────────────────────────────────────────────────────────────────────────────┤
│  Data Sources:                                                             │
│  ├── GitHub REST API (repos, PRs, commits)                                │
│  ├── GitHub GraphQL API (Projects, custom fields)                         │
│  ├── GitHub Actions API (workflow runs, deployments)                      │
│  └── Security API (alerts, Dependabot, code scanning)                     │
└────────────────────────────────────────────────────────────────────────────┘
```

### Leadership Demo Script

```
EXEC: "I need to update the board on engineering health. What do you have?"

[Open Power BI Dashboard]

ALEX: "Here's our engineering health dashboard—data pulled directly from GitHub.

       DORA Metrics (top left):
       - We deploy 12 times per week (up from 8 last quarter)
       - Lead time is 2.3 days (industry elite is <1 day, we're close)
       - Change failure rate is 4% (below 15% threshold)
       - MTTR is 1.2 hours (excellent)
       
       This tells you: the team is shipping fast AND safely."

[Point to Portfolio View]

ALEX: "Portfolio status:
       - Checkout Redesign: 90% complete, ships next week
       - Search Rewrite: 45% complete, ON TRACK
       - Mobile Refresh: 20% complete, AT RISK (see the red indicator)
       
       The at-risk flag is automatic—Copilot detected 3 blockers
       older than 5 days."

[Point to Security Posture]

ALEX: "Security:
       - 2 critical vulnerabilities (both have PRs in review)
       - Trend is down 15% from last month
       - No secrets exposed (push protection working)"

EXEC: "Can I see this without logging into GitHub?"

[Generate shareable link]

ALEX: "This Power BI dashboard updates hourly. You can access it from
       your browser, Teams, or the Power BI mobile app.
       
       With Atlassian, you'd need Jira Align ($15k+ annually) plus
       manual exports to get this view."
```

### ROI Metrics for Leadership

| ROI Category | Metric | How to Calculate | Target |
|--------------|--------|------------------|--------|
| **Developer Productivity** | PR cycle time reduction | (Old avg - New avg) / Old avg | 30% reduction |
| **Time to Market** | Lead time for changes | Commit → Production deploy | <1 week |
| **Quality** | Change failure rate | Failed deploys / Total deploys | <15% |
| **Security** | Mean time to remediate | Vuln detected → Fixed | <7 days |
| **Cost Savings** | Tool consolidation | Atlassian cost - GitHub cost | 18-72% savings |
| **Context Switching** | Tools used per task | Survey / observation | <2 tools |

---

## 🏢 SAFe at Scale: Enterprise Agile Support

> **Key Insight:** GitHub Projects can support SAFe concepts natively. For full SAFe implementations (3+ ARTs), a GitHub + Azure DevOps hybrid provides the best of both worlds.

### When to Use Which Approach

| Scenario | Recommended Solution |
|----------|---------------------|
| Teams < 50, no formal SAFe | GitHub Projects native |
| SAFe Essential (1-2 ARTs) | GitHub Projects + Power BI dashboards |
| SAFe Large Solution (3+ ARTs) | GitHub + Azure DevOps hybrid |
| Full SAFe (Portfolio level) | GitHub + Azure DevOps hybrid |

### GitHub Projects: Native SAFe Capabilities

GitHub Projects V2 supports SAFe-style planning with these native features:

| SAFe Artifact | GitHub Implementation | How |
|---------------|----------------------|-----|
| **Epic** | Issue Type: Epic | Org-level issue types |
| **Feature** | Issue Type: Feature | Parent issue with sub-issues |
| **Story** | Issue Type: Story | Sub-issues under Features |
| **PI (Program Increment)** | Custom Field: Iteration | Single-select: "PI 25.1", "PI 25.2" |
| **ART (Agile Release Train)** | Custom Field: Train | Single-select: "Platform", "Mobile" |
| **Team** | Repository or Label | Filter by repo or team label |
| **Story Points** | Custom Field: Points | Number field |
| **WSJF** | Custom Field: WSJF | Calculated or manual number |

### SAFe Board Views in GitHub Projects

Create multiple views in a single org-level Project:

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                    GitHub Project: "SAFe Program Board"                     │
├─────────────────────────────────────────────────────────────────────────────┤
│                                                                             │
│  View: Portfolio Kanban (Filter: type=Epic)                                │
│  ┌──────────────┐ ┌──────────────┐ ┌──────────────┐ ┌──────────────┐       │
│  │   Funnel     │ │   Analyzing  │ │  Implementing│ │     Done     │       │
│  └──────────────┘ └──────────────┘ └──────────────┘ └──────────────┘       │
│                                                                             │
│  View: Program Board (Filter: type=Feature, group by: PI)                  │
│  ┌──────────────────────────────────────────────────────────────────────┐  │
│  │  PI 25.1                 │  PI 25.2                 │  Backlog       │  │
│  └──────────────────────────────────────────────────────────────────────┘  │
│                                                                             │
│  View: Team Board (Filter: team=Platform, group by: Sprint)               │
│  ┌──────────────┐ ┌──────────────┐ ┌──────────────┐ ┌──────────────┐       │
│  │   To Do      │ │ In Progress  │ │   Review     │ │     Done     │       │
│  └──────────────┘ └──────────────┘ └──────────────┘ └──────────────┘       │
│                                                                             │
└─────────────────────────────────────────────────────────────────────────────┘
```

### SAFe Metrics via GitHub GraphQL + Power BI

GitHub doesn't provide native SAFe dashboards, but metrics can be calculated:

| SAFe Metric | Data Source | Calculation |
|-------------|-------------|-------------|
| **PI Predictability** | GitHub GraphQL API | Features Completed ÷ Features Committed |
| **Feature Cycle Time** | Issue timestamps | Created → Closed (days) |
| **Team Velocity** | Custom field sum | Story Points completed per sprint |
| **Epic Progress** | Sub-issue rollup | Child Features Done ÷ Total |
| **Flow Efficiency** | Issue state history | Active time ÷ Total time |

**Implementation:** Python script queries GraphQL API → exports to JSON → Power BI visualizes.

### GitHub + Azure DevOps Hybrid for Full SAFe

For enterprises requiring full SAFe ceremonies (PI Planning, ART sync, dependency management):

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                         SAFe HYBRID ARCHITECTURE                           │
├─────────────────────────────────────────────────────────────────────────────┤
│                                                                             │
│  AZURE DEVOPS (SAFe Layer)                                                 │
│  ├── Portfolio Kanban (Epics, Themes)                                      │
│  ├── Program Board (Features, PI Objectives)                               │
│  ├── PI Planning (Capacity, Dependencies)                                  │
│  └── Delivery Plans (Cross-team visualization)                             │
│                                                                             │
│                    ↕ AB# Linking (Native Integration) ↕                    │
│                                                                             │
│  GITHUB (Development Layer)                                                │
│  ├── Code, PRs, Branches                                                   │
│  ├── GitHub Actions (CI/CD)                                                │
│  ├── Copilot (AI-assisted development)                                     │
│  └── Advanced Security (GHAS)                                              │
│                                                                             │
└─────────────────────────────────────────────────────────────────────────────┘
```

**How AB# Linking Works:**

```bash
# In commit message or PR description:
git commit -m "Add Apple Pay integration

Closes #42
AB#456"

# Azure DevOps automatically:
# - Links the commit/PR to ADO work item AB#456
# - Shows PR status in ADO Feature
# - Updates Feature progress when PR merges
```

**Role Mapping:**

| Role | Primary Tool | Secondary Tool |
|------|--------------|----------------|
| Portfolio Manager | Azure DevOps | — |
| Release Train Engineer | Azure DevOps | GitHub (visibility) |
| Product Manager | Both | — |
| Scrum Master | GitHub Projects | ADO (rollup) |
| Developer | GitHub | — (never leaves GitHub) |
| QA Engineer | GitHub | ADO (test plans) |
| Security Engineer | GitHub | — |

### SAFe Feasibility Summary

| Capability | GitHub Native | With Automation | Gap |
|------------|---------------|-----------------|-----|
| Epic/Feature/Story hierarchy | ✅ Sub-issues | — | — |
| Custom fields (PI, Points) | ✅ Projects V2 | — | — |
| Multiple board views | ✅ Project views | — | — |
| PI Predictability metric | — | ✅ GraphQL + calc | — |
| Feature cycle time | — | ✅ GraphQL + calc | — |
| Team velocity | — | ✅ Custom field sum | — |
| Roll-up to parent | — | ✅ Script required | — |
| Dependency visualization | — | — | ❌ |
| PI Planning board (native) | — | — | ❌ |
| Capacity planning | — | — | ❌ |

### Demo Script: SAFe Support

```
EXEC: "We practice SAFe. Can GitHub handle our PI Planning and ARTs?"

ALEX: "Let me show you our options based on your scale..."

[Show GitHub Projects with SAFe custom fields]

ALEX: "For essential SAFe, GitHub Projects handles it natively:
       - Issue Types: Epic, Feature, Story
       - Custom fields: PI, ART, Story Points
       - Views filtered by team, PI, or status"

[Show Program Board view]

ALEX: "Here's our Program Board—Features grouped by PI.
       Each Feature has sub-issues that are the Stories."

EXEC: "What about PI Planning with 100+ people?"

ALEX: "For full SAFe, we recommend a hybrid:
       Azure DevOps for PI Planning ceremonies—it has native support.
       GitHub for all development—developers never leave.
       
       AB# links connect them automatically. When a PR merges,
       the ADO Feature shows progress. No manual updates."

[Show AB# link in a PR]

ALEX: "Best part: developers stay in GitHub with Copilot.
       Leadership gets SAFe views in ADO or Power BI.
       Jira Align costs $15K+ annually—this is included."
```

### Comparison: Jira Align vs GitHub Solutions

| Capability | Jira Align | GitHub Native | GitHub + ADO |
|------------|------------|---------------|--------------|
| PI Planning board | ✅ Native | ❌ | ✅ ADO native |
| ART visualization | ✅ Native | ⚠️ Views | ✅ ADO native |
| Story hierarchy | ✅ | ✅ Sub-issues | ✅ |
| Dependency mapping | ✅ Native | ❌ | ✅ ADO native |
| AI code assistance | ❌ | ✅ Copilot | ✅ Copilot |
| Security scanning | ❌ | ✅ GHAS | ✅ GHAS |
| CI/CD integrated | ❌ Separate | ✅ Actions | ✅ Actions |
| Developer experience | ⚠️ Context switch | ✅ Native | ✅ Native |
| Cost | $15K+/year | Included | Included (M365) |

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

### What This Replaces
| Confluence Today | GitHub + Copilot Spaces |
|------------------|-------------------------|
| Search across spaces (often misses things) | Curated context with semantic search |
| Manual linking between pages | Cross-references maintained automatically |
| Context lost when people leave | Shared Spaces persist beyond chat history |
| Repeated questions to teammates | Self-service knowledge via shared Spaces |

---

## 🎬 Act 1: The Idea (PRD Creation)

### Scene Setup
Alex has a new feature idea: **"Dark Mode for Mobile App"**

### What to Demo

| Confluence Feature | GitHub Equivalent | Demo Action |
|--------------------|-------------------|-------------|
| Create new page | Create markdown doc | File → New → From PRD template |
| Rich text editing | Markdown + preview | Write requirements with headers, lists |
| Embed images/diagrams | Drag-drop images, Mermaid | Add architecture diagram |
| @mention stakeholders | @username | Tag engineering lead for review |
| Real-time collaboration | VS Code Live Share* | Second person edits simultaneously |
| Comments | Inline comments | Add review comment, resolve it |
| Version history | Git history | Show previous versions |

*Requires VS Code Live Share extension; alternatively, use PR-based async collaboration.

### Demo Script
```
ALEX: "I start my day in VS Code—this is my single interface for everything.
       Let me create a new PRD from our template..."
       
[Create markdown doc from template]

ALEX: "I'll write up the requirements. Notice I can add diagrams right inline—
       this is Mermaid syntax, renders automatically."
       
[Add Mermaid diagram]

ALEX: "Now I'll tag Sarah to review. She can edit at the same time I do—
       no more 'page is locked' messages like Confluence."
       
[@mention, show real-time cursor]

ALEX: "And here's something Confluence can't do—watch this..."
```

### The Differentiator
```
ALEX: "Copilot, summarize the key technical risks in this PRD."

[Copilot analyzes and responds]

ALEX: "Atlassian's Rovo can't do this—it doesn't understand code context.
       Copilot knows our codebase, so it can flag that OAuth implementation 
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
| **GraphQL API + .NET Core** | Projects, custom fields, all data | Enterprise pipelines, OneLake integration |
| **OneLake (Fabric)** | Aggregated GitHub data via scheduled exports | Natural language queries, enterprise analytics |
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

### What This Replaces

| Atlassian Today | GitHub + Power BI + OneLake |
|-----------------|----------------------------|
| Jira dashboards (limited customization) | Power BI with full visualization library |
| Jira Roadmap (no dependency lines) | Gantt charts with dependencies in Power BI |
| Export to Excel, manual charts | Automated pipelines from repo to dashboard |
| Velocity/burndown only in Jira Premium | GitHub Insights + Power BI (any tier) |
| Analytics locked in Jira | Data in Git repo, visualized anywhere |
| SQL queries for data access | Natural language queries via Copilot |
| Static PDF exports | Version-controlled HTML dashboards in repo |

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

### Advanced: OneLake Integration & Natural Language Analytics

For enterprise-scale analytics, GitHub data can flow into Microsoft Fabric OneLake, enabling natural language queries and automated HTML report generation.

#### Architecture: GitHub → OneLake → Power BI → HTML Reports

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                          Data Pipeline Architecture                         │
├─────────────────────────────────────────────────────────────────────────────┤
│                                                                             │
│  ┌──────────────┐     ┌──────────────┐     ┌──────────────────────────────┐│
│  │   GitHub     │     │  .NET Core   │     │      OneLake / Local         ││
│  │   GraphQL    │────▶│  Exporter    │────▶│      Storage                 ││
│  │   API        │     │  (scheduled) │     │                              ││
│  └──────────────┘     └──────────────┘     └─────────────┬────────────────┘│
│                                                          │                  │
│                                                          ▼                  │
│                              ┌────────────────────────────────────────────┐ │
│                              │         Power BI / Copilot                 │ │
│                              │   ┌─────────────────────────────────────┐  │ │
│                              │   │  Natural Language Query Interface  │  │ │
│                              │   │  "What's our sprint velocity trend?"│  │ │
│                              │   └─────────────────────────────────────┘  │ │
│                              │                    │                       │ │
│                              │                    ▼                       │ │
│                              │   ┌─────────────────────────────────────┐  │ │
│                              │   │   Export as HTML → Git Repo         │  │ │
│                              │   │   (version-controlled dashboards)   │  │ │
│                              │   └─────────────────────────────────────┘  │ │
│                              └────────────────────────────────────────────┘ │
│                                                          │                  │
│                                                          ▼                  │
│                              ┌────────────────────────────────────────────┐ │
│                              │   prototypes/dashboards/                   │ │
│                              │   ├── velocity-report.html                 │ │
│                              │   ├── sprint-burndown.html                 │ │
│                              │   └── dora-metrics.html                    │ │
│                              └────────────────────────────────────────────┘ │
└─────────────────────────────────────────────────────────────────────────────┘
```

#### .NET Core GitHub Data Exporter

A scheduled .NET Core service extracts GitHub data and lands it in OneLake or local storage:

```csharp
// GitHubDataExporter.cs
public class GitHubProjectExporter
{
    private readonly GitHubClient _client;
    private readonly OneLakeClient _oneLake; // or local file output
    
    public async Task ExportProjectDataAsync(string org, int projectNumber)
    {
        // Query GitHub GraphQL for project data
        var projectItems = await _client.GraphQL.QueryAsync<ProjectV2Items>(
            @"query { organization(login: $org) { 
                projectV2(number: $number) { items { ... } } 
              }}"
        );
        
        // Transform to analytics-friendly format
        var records = projectItems.Select(item => new {
            IssueId = item.Content.Id,
            Title = item.Content.Title,
            Status = item.GetFieldValue("Status"),
            StoryPoints = item.GetFieldValue<int>("Story Points"),
            Iteration = item.GetFieldValue("Iteration"),
            CreatedAt = item.Content.CreatedAt,
            ClosedAt = item.Content.ClosedAt
        });
        
        // Export to OneLake (or local JSON)
        await _oneLake.WriteAsync("github-projects/items.parquet", records);
        // Or: await File.WriteAllTextAsync("exports/project-items.json", JsonConvert.SerializeObject(records));
    }
}
```

#### Scheduling Options

| Method | Frequency | Best For |
|--------|-----------|----------|
| **GitHub Actions** | On push, on schedule | Repo-native, commits exports to repo |
| **Azure Functions** | Timer trigger | Serverless, scales automatically |
| **Power Automate** | Scheduled flow | Low-code, integrates with Teams |
| **.NET Worker Service** | Continuous/interval | On-premises, enterprise control |

#### Natural Language Queries with Copilot

Once data lands in OneLake, Copilot in Power BI can answer questions directly:

```
PM: "What's our average cycle time for P1 issues in the last 3 sprints?"

COPILOT (via Power BI): "Based on your GitHub project data:
         Average P1 cycle time: 4.2 days
         Trend: ↓ 15% improvement from Sprint 21
         Outlier: Issue #342 took 12 days (blocked on external dependency)"

PM: "Create a chart showing that trend"

COPILOT: "I've created a line chart showing P1 cycle time by sprint.
         Shall I export this as HTML for the repo?"

PM: "Yes, save it to prototypes/dashboards/p1-cycle-time.html"
```

#### HTML Export Pattern

Export Power BI visuals as self-contained HTML for version control:

```
analysis/
├── exports/
│   └── ...
└── html-reports/                      # Git-versioned dashboard snapshots
    ├── sprint-23-velocity.html        # Embedded chart + data
    ├── q1-2026-dora-metrics.html      # Leadership quarterly view
    └── dark-mode-progress.html        # Feature-specific tracking
```

Benefits of HTML exports in repo:
- **Version history**: Track dashboard changes over time
- **Offline access**: View reports without Power BI license
- **Stakeholder sharing**: Send as email attachments or GitHub Pages
- **Audit trail**: Know exactly what leadership saw at each review

#### Demo Script (Advanced Analytics)
```
ALEX: "For our quarterly review, I need automated reports that update from GitHub..."

[Show scheduled exporter running]

ALEX: "Our .NET service runs nightly, pulling GitHub Project data into OneLake.
       Now I can ask Copilot questions in natural language."

[Open Power BI with OneLake connection]

PM: "Copilot, what's the risk level for the Dark Mode release?"

COPILOT: "Based on current project data:
         ⚠️ Risk: MEDIUM
         - 2 P1 issues still in progress (target: 0)
         - QA coverage at 68% (target: 80%)
         - 3 days until release date
         
         Recommend: Extend release by 2 days or descope settings-toggle story."

ALEX: "Export this risk assessment as HTML for the repo."

[Copilot generates HTML → commits to prototypes/dashboards/]

ALEX: "Now my entire team can see the same data, versioned in Git,
       without needing Power BI access. And it updates automatically."
```

---

## 🎬 Act 2: The Breakdown (PRD → Issues)

### Scene Setup
PRD is approved. Alex needs to create work items for the team.

### What to Demo

| Jira Feature | GitHub Equivalent | Demo Action |
|--------------|-------------------|-------------|
| Create epic | Create Issue with "Epic" label | New Issue → Epic template |
| Create stories | Create linked Issues | Child issues |
| Create sub-tasks | Tasklists | Add checklist to story |
| Estimate points | Custom field (Number) | Set Story Points = 5 |
| Set priority | Custom field (Single select) | Set Priority = P1 |
| Assign to sprint | Add to Iteration | Assign to "Sprint 23" |

### Demo Script (The Manual Way)
```
ALEX: "Traditionally, I'd manually create each issue from my PRD—
       that takes about an hour for a feature this size."
       
[Create one epic, one story manually to show it works]
```

### Demo Script (The AI Way — GitHub MCP)

> **Key Demo Point:** This is where we show GitHub MCP (Model Context Protocol) in action. Copilot connects directly to GitHub via MCP server to create real artifacts from your plan markdown.

```
ALEX: "But here's where GitHub changes the game. Watch this...
       I have my PRD in markdown—now I want to turn it into real work items."

[Open VS Code with GitHub MCP server connected]

ALEX: "Copilot is connected to GitHub through the MCP server.
       It can read my repo, create issues, set up projects—all from this chat."

[Select PRD requirements section]

ALEX: "Copilot, read this PRD and create a GitHub Project for Dark Mode.
       Then create issues for each requirement using epic/story structure."

[Copilot via MCP:]
- Creates GitHub Project: "Dark Mode Implementation"
- Creates Epic issue with sub-issues
- Links all issues to the PRD markdown
- Assigns to appropriate project columns

COPILOT: "I've created a GitHub Project 'Dark Mode Implementation' with 8 issues:
          → Epic: Dark Mode Implementation (#142)
            → Story: Update color tokens (#143) — Priority: P1
            → Story: Add system preference detection (#144) — Priority: P1  
            → Story: Create settings toggle (#145) — Priority: P2
            → Story: Update onboarding screens (#146) — Priority: P3
          All issues are linked to your PRD and added to the project board.
          
          View project: github.com/contoso/mobile-app/projects/12"

ALEX: "From a single markdown file to a fully structured project in seconds.
       No copy-paste, no manual data entry, no Jira import headaches."
```

> **Demo Note:** Copilot uses GitHub MCP tools (`mcp_io_github_git_*`) to create real artifacts. The PM reviews before confirming, ensuring quality while eliminating manual work.

#### GitHub MCP Tools Used in This Flow

| Action | MCP Tool | What It Does |
|--------|----------|-------------|
| Create project | `mcp_io_github_git_*` | Creates GitHub Project from plan |
| Create issues | `mcp_io_github_git_issue_write` | Generates issues from requirements |
| Push files | `mcp_io_github_git_push_files` | Updates spec with issue links |
| Search existing | `mcp_io_github_git_search_issues` | Checks for duplicates first |

### The Differentiator
```
ALEX: "Now here's what Atlassian absolutely cannot do..."

ALEX: "Copilot, based on our team's Git history, who should own each story?"

[Copilot suggests assignments based on code ownership]

ALEX: "It knows Sarah owns the design system, so she gets the color tokens.
       It knows Marcus built the settings page, so he gets the toggle.
       Rovo can't do this—it doesn't have code context."
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

### What This Replaces
| Today | Product Brain on GitHub |
|-------|-------------------------|
| Write spec, hope people understand it | Show working prototype |
| Wait for engineering bandwidth | PM builds proof-of-concept |
| Stakeholders imagine the feature | Stakeholders interact with demo |
| 2-4 week feedback cycle | Same-day validation |

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

### What This Replaces
| Today | Product Brain on GitHub |
|-------|-------------------------|
| Hope reviewers catch issues | Proactively surface blind spots |
| Defensiveness in reviews | Objections already addressed |
| Groupthink in planning | AI provides external perspective |
| Risks discovered in production | Risks discovered before coding |

---

## 🎬 Act 3: Sprint Planning

### Scene Setup
Sprint planning meeting. Alex and the Scrum Master need to commit to scope.

### What to Demo

| Jira Feature | GitHub Equivalent | Demo Action |
|--------------|-------------------|-------------|
| Backlog view | Projects Table view | Open table, sort by priority |
| Sprint board | Projects Board view | Switch to board |
| Roadmap/timeline | Projects Roadmap view | Show timeline with iterations |
| Velocity chart | Projects Insights | Show historical velocity |
| Capacity planning | Iteration view | See points assigned vs. target |
| Drag to sprint | Drag to iteration | Move items into Sprint 23 |

### Demo Script
```
ALEX: "Here's our backlog. Let me switch to Table view—
       same as Jira's list view."

[Show Table view sorted by Priority]

ALEX: "We need 40 points for this sprint. Let me check our velocity..."

[Open Insights → Historical chart filtered by Story Points]

ALEX: "Looking at completed story points over the last 6 sprints,
       the team averages 42 points. We're planning 38—good buffer."

[Switch to Roadmap view]

ALEX: "Here's our timeline. Dark Mode epic spans Sprints 23-24.
       I can see the date ranges for each item."

[Show items on timeline with start/end dates]

ALEX: "Dependencies are tracked via issue links—let me show you.
       This story 'tracks' the token work, and I can click through."

[Show tracked-by/tracks relationship on issue]

ALEX: "Now I'll drag the committed items into Sprint 23..."

[Drag 5 stories into iteration]

ALEX: "And switch to Board view for our daily standups."

[Show Board: To Do | In Progress | Review | Done]
```

### Custom Field Demonstration
```
ALEX: "You're probably wondering about custom fields. Let me show you..."

[Open issue, show custom fields sidebar]

| Their Jira Field | Our GitHub Field |
|------------------|------------------|
| Story Points: 5  | Story Points: 5  |
| Priority: High   | Priority: P1     |
| Sprint: 23       | Iteration: Sprint 23 |
| Epic Link: DM-1  | Parent: Dark Mode Epic |
| Component: iOS   | Labels: ios, mobile |
```
> **GitHub Projects: Included with any tier** — Full roadmaps, insights at $4/user (Team)

---

## 🎬 Act 4: Daily Standup

### Scene Setup
It's Wednesday. Alex checks progress before standup.

### What to Demo

| Jira Feature | GitHub Equivalent | Demo Action |
|--------------|-------------------|-------------|
| Board view | Projects Board view | Show current sprint board |
| Swimlanes | Group by assignee | Group cards by owner |
| Quick filters | Filter controls | Filter to "In Progress" only |
| Issue detail | Issue panel | Click card, show detail |
| Activity log | Timeline | Show work happened yesterday |

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

ALEX: "I can see the actual code without leaving GitHub.
       In Jira, I'd have to context-switch to Bitbucket."
```

---

## 🎬 Act 5: Blockers & Dependencies

### Scene Setup
Sarah reports she's blocked—the API team hasn't delivered the endpoint she needs.

### What to Demo

| Jira Feature | GitHub Equivalent | Demo Action |
|--------------|-------------------|-------------|
| Issue links | Tracked-by / Tracks | Show dependency |
| Blocked status | Blocked-by label + link | Mark as blocked |
| Dependency report | Filter blocked items | Query all blocked issues |
| Cross-project links | Cross-repo references | Link to API team's issue |

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
       Or keep it lightweight as a checklist.
       
       In Jira, sub-tasks are always full objects—more overhead."
```

---

## 🎬 Act 6: Leadership Reporting

### Scene Setup
Friday afternoon. Alex needs to update leadership on Q2 progress.

### What to Demo

| Jira Feature | GitHub Equivalent | Demo Action |
|--------------|-------------------|-------------|
| Burndown chart | Projects Insights (Historical) | Show items completed over time |
| Velocity report | Projects Insights (Aggregation) | Show story points by iteration |
| Dashboard | Insights + filters | Status distribution |
| Export | Share link / screenshot | Generate shareable view |
| Portfolio view | Multi-project view | Aggregate across projects |

### Demo Script
```
ALEX: "Leadership asks me every week: 'Are we on track?'"

[Open Projects → Insights]

ALEX: "Here's my answer: The historical chart shows items completed
       over time—we're on track to finish 36 of 40 points."

[Show Historical chart showing items completed over time]

ALEX: "Looking at our historical trend, we complete about 40 points/sprint—
       team is predictable."

[Show Historical chart with story points aggregation]

ALEX: "Status breakdown: 60% done, 25% in progress, 15% to do."

[Show Status pie chart]

ALEX: "And I can share this view with leadership directly..."

[Copy share link]

ALEX: "No Jira login required. They see exactly what I see."
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

| Their Tool | GitHub Equivalent | Demo Action |
|------------|-------------------|-------------|
| Jenkins/CircleCI | GitHub Actions | Show workflow runs |
| Manual deploys | Automated pipelines | PR merge triggers deploy |
| Separate deploy tool | Actions + Environments | Show staging → prod flow |
| Release notes | Releases | Auto-generated from PRs |

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

| Confluence Feature | GitHub Equivalent | Demo Action |
|--------------------|-------------------|-------------|
| Release notes page | GitHub Releases | Create release with notes |
| User documentation | GitHub Wiki / Pages | Write user-facing docs |
| Link to issues | Auto-linked PRs | Show what's included in release |
| AI summarization | Copilot | Generate changelog |

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

## 🎯 Feature Parity Scorecard

Use this during/after the demo to validate coverage:

> **⚠️ Accuracy Notes:**
> - **GitHub Projects Insights** provides bar/column charts and historical (burn-up) charts, not traditional burndown or velocity charts. Calculate velocity from story point aggregations.
> - **Dependencies** are tracked via issue links (tracks/tracked-by) but are NOT visualized as arrows or lines in the Roadmap view. Jira Premium provides visual dependency graphs.
> - **Copilot Spaces** may require Copilot Enterprise or be in preview. Verify availability before demoing.

### Project Management (Jira Replacement)

| Feature | Jira | GitHub | Demo'd |
|---------|------|--------|--------|
| Scrum boards | ✅ | ✅ Projects Board | ⬜ |
| Kanban boards | ✅ | ✅ Projects Board | ⬜ |
| Sprint planning | ✅ | ✅ Iterations | ⬜ |
| Backlog management | ✅ | ✅ Table view | ⬜ |
| Roadmap/timeline | Premium | ✅ Roadmap view | ⬜ |
| Custom fields | ✅ | ✅ Any type | ⬜ |
| Automations | ✅ | ✅ Project automations + Actions | ⬜ |
| Burndown charts | ✅ | ⚠️ Insights (burn-up style, not traditional burndown) | ⬜ |
| Velocity reports | ✅ | ⚠️ Insights (historical charts, calculate manually) | ⬜ |
| Dependencies | Premium | ✅ Issue links (tracks/tracked-by), no visual graph | ⬜ |
| Sub-tasks | ✅ | ✅ Tasklists / Sub-issues | ⬜ |
| Issue templates | ✅ | ✅ Issue forms + templates | ⬜ |
| Mobile app | ✅ | ✅ GitHub Mobile | ⬜ |
| API access | ✅ | ✅ REST + GraphQL | ⬜ |
| **JQL (Query Language)** | ✅ | ✅ Search syntax + GraphQL | ⬜ |
| **Release management** | ✅ | ✅ Releases + Milestones | ⬜ |
| **Time tracking** | Add-on | ⚠️ Third-party (Clockify, etc.) | ⬜ |
| **Epics/Story mapping** | ✅ | ✅ Parent issues + Labels | ⬜ |
| **SLA management** | Premium | ⚠️ Actions + custom logic | ⬜ |
| **Marketplace/Apps** | ✅ ~3000 apps | ✅ GitHub Marketplace + MCP | ⬜ |
| **Portfolio views** | Jira Align | ⚠️ Org-level Projects (beta) | ⬜ |

### Documentation (Confluence Replacement)

| Feature | Confluence | GitHub | Demo'd |
|---------|------------|--------|--------|
| Rich text editing | ✅ | ✅ Markdown + Preview | ⬜ |
| Real-time collab | ✅ | ⚠️ VS Code Live Share | ⬜ |
| Page hierarchy | ✅ | ✅ Folder structure | ⬜ |
| Templates | ✅ | ✅ Doc templates | ⬜ |
| @mentions | ✅ | ✅ @username | ⬜ |
| Comments | ✅ | ✅ Inline comments / PR reviews | ⬜ |
| Version history | ✅ | ✅ Git history (superior) | ⬜ |
| Search | ✅ | ✅ Global search + Copilot Spaces | ⬜ |
| Diagrams | ✅ | ✅ Mermaid + Markmap | ⬜ |
| Permissions | ✅ | ✅ Repo/branch permissions | ⬜ |
| AI summaries | Add-on | ✅ Copilot (native) | ⬜ |
| Knowledge sharing | ✅ | ✅ Copilot Spaces | ⬜ |
| Curated context | ❌ | ✅ Copilot Spaces | ⬜ |
| **Whiteboards** | ✅ | ⚠️ Excalidraw / miro.com | ⬜ |
| **Databases/Views** | ✅ | ⚠️ Markdown tables + Projects | ⬜ |
| **Macros** | ✅ | ⚠️ GitHub Actions + embeds | ⬜ |
| **Page analytics** | ✅ | ⚠️ Git insights for file views | ⬜ |
| **Guest access** | ✅ | ✅ Outside collaborators | ⬜ |
| **Export to PDF** | ✅ | ✅ pandoc / browser print | ⬜ |

### Differentiators (GitHub Exceeds Atlassian)

| Capability | Atlassian | GitHub |
|------------|-----------|--------|
| Code-aware AI | ❌ | ✅ Copilot understands codebase |
| Issue generation from docs | ❌ | ✅ PRD → Issues via Copilot |
| Curated AI context (Copilot Spaces) | ❌ | ✅ Persistent, shareable |
| Single platform | ❌ (4 products) | ✅ One platform, one login |
| Built-in CI/CD | ❌ | ✅ Actions (50K mins included) |
| Copilot coding assistant | ❌ | ✅ Code completion + chat |
| Copilot code review | ❌ | ✅ AI-powered PR review |
| Copilot Autofix | ❌ | ✅ Security vulnerability fixes |
| Agentic automation | ❌ | ✅ Copilot Coding Agent |
| MCP extensibility | ❌ | ✅ Model Context Protocol |
| Secret scanning | ❌ | ✅ Native + push protection |
| Dependency scanning | ❌ | ✅ Dependabot native |

---

## �️ End-to-End SDLC Feature Mapping

### Complete Feature Comparison: Atlassian vs GitHub

| SDLC Phase | Activity | Atlassian Product | Atlassian Feature | GitHub Product | GitHub Feature | AI Enhancement | ROI Metric |
|------------|----------|-------------------|-------------------|----------------|----------------|----------------|------------|
| **PLAN** | Write requirements | Confluence | Pages | GitHub | Markdown in repo | Copilot drafts | Time to first draft |
| **PLAN** | Manage backlog | Jira | Backlog view | GitHub Projects | Table view | Copilot prioritizes | Grooming time |
| **PLAN** | Roadmap planning | Jira Premium | Roadmap | GitHub Projects | Roadmap view | Date-based timeline | Planning accuracy |
| **PLAN** | Stakeholder sharing | Confluence | Public links | GitHub Projects | Shareable views | — | Alignment time |
| **PLAN** | Knowledge search | Confluence | Search | GitHub | Copilot Spaces | Semantic search | Info retrieval time |
| **DESIGN** | Technical design | Confluence | Pages + draw.io | GitHub | Markdown ADR + Mermaid | Copilot generates | Design doc time |
| **DESIGN** | Architecture diagrams | Confluence | draw.io plugin | GitHub | Mermaid (native) | Copilot generates | Diagram creation |
| **DESIGN** | Prototyping | N/A (wait for eng) | N/A | GitHub | Copilot + HTML | Scaffold agent | Validation speed |
| **DESIGN** | Design review | Confluence | Comments | GitHub | PR review | Copilot suggests | Review quality |
| **DEVELOP** | Issue tracking | Jira | Issues | GitHub | Issues | Coding Agent resolves | Resolution time |
| **DEVELOP** | Code hosting | Bitbucket | Repositories | GitHub | Repositories | — | — |
| **DEVELOP** | Branching | Bitbucket | Branching | GitHub | Branching | — | — |
| **DEVELOP** | Pull requests | Bitbucket | PRs | GitHub | PRs | Copilot reviews | Review time |
| **DEVELOP** | Code review | Bitbucket | Inline comments | GitHub | PR review | Copilot Code Review | Defects caught |
| **DEVELOP** | Code completion | N/A | N/A | GitHub | Copilot | AI completions | Lines/hour |
| **DEVELOP** | Status updates | Jira | Manual transition | GitHub Projects | Auto from PR | Automations | Admin overhead |
| **TEST** | Test planning | Confluence + Zephyr | Test cases | GitHub | Markdown + Issues | Copilot generates | Test coverage |
| **TEST** | CI execution | Jenkins (external) | Pipelines | GitHub Actions | Workflows | — | Build time |
| **TEST** | Test automation | Zephyr + Jenkins | Test execution | GitHub Actions | Test workflows | Copilot writes tests | Automation % |
| **TEST** | Bug tracking | Jira | Bug issues | GitHub | Issues | Auto-create from CI | MTTR |
| **TEST** | Security scanning | Snyk (external) | Dependency scan | GitHub | Dependabot | Auto-fix PRs | Vuln age |
| **TEST** | Secret detection | External tools | Custom | GitHub | Secret Scanning | Push protection | Secrets leaked |
| **TEST** | Code analysis | SonarQube (external) | Static analysis | GitHub | CodeQL | Copilot Autofix | Security debt |
| **DEPLOY** | Release planning | Jira | Releases | GitHub | Releases + Milestones | Copilot notes | Release prep time |
| **DEPLOY** | Change log | Confluence | Manual page | GitHub | Auto-generated | Copilot summarizes | Doc time |
| **DEPLOY** | CI/CD pipelines | Jenkins / Bamboo | Pipelines | GitHub Actions | Workflows | Copilot YAML | Pipeline maint |
| **DEPLOY** | Environment mgmt | External | Varies | GitHub | Environments | Secrets native | Config drift |
| **DEPLOY** | Deployment gates | Manual / Jenkins | Approvals | GitHub | Protection rules | Required reviewers | Change failure rate |
| **DEPLOY** | Rollback | Confluence runbook | Manual | GitHub Actions | Workflow | Copilot generates | MTTR |
| **OPERATE** | Incident tracking | Jira + Opsgenie | Incidents | GitHub | Issues + Discussions | Copilot postmortem | MTTR |
| **OPERATE** | Runbooks | Confluence | Wiki pages | GitHub | Markdown | Copilot drafts | Incident response |
| **OPERATE** | Postmortems | Confluence | Templates | GitHub | Markdown | Copilot generates | Learning velocity |
| **OPERATE** | Feedback triage | Jira + Confluence | Manual synthesis | GitHub | Issues + Copilot Spaces | Copilot themes | Insight speed |

### Feature Parity Summary

> **Note:** Feature counts are estimates based on common Atlassian usage patterns. Actual feature parity depends on specific workflows.

| Category | Atlassian Features | GitHub Equivalent | GitHub Advantage |
|----------|-------------------|-------------------|------------------|
| **Project Management** | ~20 core features | 17 fully matched, 3 partial (burndown, velocity, dependency viz) | +AI throughout |
| **Documentation** | ~15 core features | 12 fully matched, 3 partial (whiteboards, real-time collab, macros) | +Version control |
| **Code Management** | ~12 core features | 12 fully matched | +Native AI |
| **CI/CD** | External (Jenkins) or Bitbucket Pipelines | Native Actions | +50K minutes included |
| **Security** | External tools (Snyk, etc.) | Native scanning (Dependabot, CodeQL, Secret Scanning) | +Autofix |
| **AI Assistance** | Rovo (~$10/user) | Copilot ($19-39/user) | +Code awareness |

---

## 📊 ROI Tracking with GitHub + Power BI

### Most-Requested ROI Metrics

Based on customer conversations, these are the top 10 ROI metrics leadership asks for:

| Rank | Metric | Business Question | Calculation | Target |
|------|--------|-------------------|-------------|--------|
| 1 | **Developer Productivity** | "Are developers more productive?" | Lines delivered / FTE / month | +20% |
| 2 | **Time to Market** | "Are we shipping faster?" | Idea → Production (lead time) | -30% |
| 3 | **Tool Cost Savings** | "Are we spending less?" | Old stack cost - GitHub cost | 18-72% |
| 4 | **Quality** | "Are we shipping better code?" | Defects per release | -25% |
| 5 | **Security Posture** | "Are we more secure?" | Mean time to remediate CVEs | <7 days |
| 6 | **Developer Satisfaction** | "Are developers happier?" | Survey + retention | +15 NPS |
| 7 | **Onboarding Speed** | "How fast are new hires productive?" | Days to first PR merged | -40% |
| 8 | **Context Switching** | "Less tool hopping?" | # of tools per workflow | <2 |
| 9 | **Meeting Reduction** | "Fewer status meetings?" | Hours in status meetings/week | -50% |
| 10 | **Documentation Quality** | "Is knowledge captured?" | Docs linked to code % | >80% |

### Power BI Implementation

#### Data Sources Configuration

```python
# analysis/scripts/github-metrics-export.py
"""
Export GitHub metrics for Power BI dashboard.
Run daily via GitHub Actions to refresh data.
"""

import requests
import os
from datetime import datetime, timedelta

GITHUB_TOKEN = os.environ['GITHUB_TOKEN']
ORG = 'contoso'
REPOS = ['main-app', 'mobile-app', 'api-server']

def get_pr_metrics(repo, days=90):
    """Calculate PR cycle time and review metrics."""
    query = """
    query($owner: String!, $repo: String!, $cursor: String) {
      repository(owner: $owner, name: $repo) {
        pullRequests(first: 100, after: $cursor, states: [MERGED]) {
          nodes {
            createdAt
            mergedAt
            additions
            deletions
            reviews { totalCount }
            timelineItems(itemTypes: [REVIEW_REQUESTED_EVENT]) {
              nodes { ... on ReviewRequestedEvent { createdAt } }
            }
          }
          pageInfo { hasNextPage endCursor }
        }
      }
    }
    """
    # ... implementation
    return {
        'avg_cycle_time_hours': 0,  # calculate_avg(cycle_times),
        'avg_review_time_hours': 0,  # calculate_avg(review_times),
        'first_time_approval_rate': 0,  # approvals / total,
        'prs_per_week': 0  # len(prs) / (days / 7)
    }

def get_deployment_metrics(repo, days=90):
    """Calculate DORA deployment frequency and lead time."""
    # Query Actions workflow runs for deploy workflows
    return {
        'deploy_frequency_per_week': 0,  # deploys / weeks,
        'lead_time_hours': 0,  # avg_commit_to_deploy,
        'change_failure_rate': 0,  # rollbacks / deploys,
        'mttr_hours': 0  # avg_incident_duration
    }

def get_security_metrics(repo):
    """Get security posture metrics."""
    # Query Dependabot alerts, code scanning, secret scanning
    return {
        'critical_vulns': 0,  # count_by_severity['critical'],
        'high_vulns': 0,  # count_by_severity['high'],
        'avg_remediation_days': 0,  # avg_fix_time,
        'secrets_blocked': 0  # push_protection_blocks
    }
```

#### DAX Measures for Power BI

```dax
// analysis/powerbi/measures/productivity.dax

// PR Cycle Time (hours)
PR Cycle Time = 
AVERAGEX(
    'PullRequests',
    DATEDIFF([CreatedAt], [MergedAt], HOUR)
)

// Developer Productivity Index
Productivity Index = 
DIVIDE(
    SUM('Commits'[LinesChanged]),
    DISTINCTCOUNT('Commits'[Author]),
    0
) / 
CALCULATE(
    [Productivity Index],
    DATEADD('Calendar'[Date], -90, DAY)
)

// Deployment Frequency (per week)
Deploy Frequency = 
DIVIDE(
    COUNTROWS(FILTER('Deployments', [Environment] = "production")),
    DATEDIFF(MIN('Calendar'[Date]), MAX('Calendar'[Date]), WEEK),
    0
)

// Change Failure Rate
Change Failure Rate = 
DIVIDE(
    COUNTROWS(FILTER('Deployments', [Status] = "rollback")),
    COUNTROWS('Deployments'),
    0
)

// Mean Time to Recovery (hours)
MTTR = 
AVERAGEX(
    FILTER('Incidents', NOT(ISBLANK([ResolvedAt]))),
    DATEDIFF([CreatedAt], [ResolvedAt], HOUR)
)

// Security Debt Trend
Security Debt = 
CALCULATE(
    COUNTROWS('SecurityAlerts'),
    'SecurityAlerts'[State] = "open"
)

// Tool Consolidation Savings
Monthly Savings = 
[Atlassian Monthly Cost] - [GitHub Monthly Cost]

// Context Switches Avoided
Context Switches Saved = 
(DISTINCTCOUNT('OldWorkflow'[Tool]) - 2) * 
COUNTROWS('Tasks') * 
5 // minutes per switch
```

#### Power BI Report Pages

| Page | Audience | Key Visuals | Refresh Rate |
|------|----------|-------------|--------------|
| Executive Summary | C-Suite | DORA gauges, cost savings, security heat map | Daily |
| Team Performance | Eng Managers | Velocity trend, PR metrics, contributor load | Daily |
| Security Posture | CISO | Vuln aging, remediation trend, blocked secrets | Real-time |
| Release Health | Release Mgr | Deployment calendar, success rate, rollbacks | Hourly |
| Developer Productivity | Eng Directors | Copilot adoption, code review time, commit velocity | Daily |

### ROI Dashboard Demo Script

```
CFO: "Show me the cost savings."

[Open Power BI → Executive Summary page]

ALEX: "Here's our ROI dashboard, 3 months post-migration:

       💰 COST SAVINGS
       - Tool consolidation: $12,240/month (4 tools → 1)
       - Jenkins hosting eliminated: $2,500/month
       - Admin overhead reduced: 0.5 FTE saved
       
       📈 PRODUCTIVITY GAINS  
       - PR cycle time: 4.2 hours → 2.1 hours (50% faster)
       - Deployments: 8/week → 14/week (75% increase)
       - Copilot acceptance rate: 42% (saving ~1hr/dev/day)
       
       🔒 SECURITY IMPROVEMENT
       - Mean time to remediate: 12 days → 3 days
       - Critical vulns open: 8 → 2
       - Secrets exposed: 3 incidents → 0 (push protection)
       
       📊 BOTTOM LINE
       - Annualized savings: $178,320
       - Productivity value: ~$400K (conservative estimate)
       - Total ROI: 340% in first year"

CFO: "How confident are you in these numbers?"

ALEX: "This is live data from GitHub's API, not self-reported.
       PR timestamps are immutable. Deploy logs are auditable.
       I can drill into any metric."

[Drill into PR cycle time]

ALEX: "See? Every PR with timestamps. This isn't a survey—it's telemetry."
```

---

## 🛠️ Demo Setup Checklist

### Setting Up Your Demo Environment

Create a custom demo repository for your customer's domain using the recommended structure:

```
your-demo-project/
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

## 📚 References

### Related Documentation
- [Feature Parity Details](featureparity.md)
- [Original Demo Plan](demoplan.md)
- [Full Proposal Spec](demo-spec.md)

### Key Concepts
The **Product Brain** approach demonstrates how all team members—PMs, developers, QA, security, and release managers—can collaborate using GitHub + Copilot in a unified, structured repository.

> ⚠️ **Before demoing:** Ensure your demo environment is properly configured and test all demo scenarios before presenting to customers.
