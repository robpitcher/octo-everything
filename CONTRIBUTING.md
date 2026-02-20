# Contributing to Contoso Product Brain

Thank you for your interest in contributing to the Contoso Product Brain! This is a demo repository showcasing agentic PM workflows.

## How to Contribute

### For Product Managers

1. **Adding Specs**: Create new specs in `specs/` following the format in existing files
2. **Adding Insights**: Document research findings in `insights/` with proper citations
3. **Creating Prototypes**: Build HTML demos in `prototypes/` using our standard stack

### For Researchers

1. **Market Research**: Add analysis to `research/`
2. **Data Analysis**: Share Jupyter notebooks in `analysis/notebooks/`
3. **Customer Data**: Add CSV files to `research/data/`

### File Naming Conventions

- Use `kebab-case.md` for all markdown files
- Keep filenames descriptive and concise
- Link related content bidirectionally

### Commit Guidelines

- Use clear, descriptive commit messages
- Reference related specs or issues when applicable
- Keep commits focused on a single change

## Fork PRs and Specs TOC

When a PR modifies files in `specs/`, a CI workflow automatically regenerates `specs/toc.yml` and `specs/index.md` and commits the result. **This auto-commit only works for branches in this repository** — if your PR is from a fork, the workflow cannot push back to your branch.

If the **Sync specs TOC and index** check fails on your fork PR, click through to the Actions run summary for a ready-to-use script you can run locally to regenerate the files, then commit and push.

## Questions?

This is a demo workspace. For questions about the structure or conventions, refer to [AGENTS.md](AGENTS.md) or [README.md](README.md).
