# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

ISE (Infinite Scale Expansion) is a theoretical physics thesis written as a collection of Markdown chapters. The repository contains the full thesis content, build scripts to merge and render chapters, and supporting assets (images, prompts, chat logs).

## Build Commands

Building is done soley manually on demand.

## Repository Architecture

### Chapter Structure
Chapters are numbered directories (`00_intro/` through `12_glossary/`). Each contains:
- Markdown files (`.md`) numbered by section order (e.g., `01_style.md`, `02_narratives.md`)
- An `images/` subdirectory for chapter-specific figures
- Optional numbered subdirectories for subchapters, which get merged up

### Key Directories
- `scripts/` — build scripts, pandoc config (`pandoc.yml`), LaTeX header (`header.tex`), terminology list (`terms.txt`)
- `output/` — generated merge files and final PDF
- `appendix/` — supplementary material (quantization, gravity, brain architecture, etc.)
- `temp/` — drafts, archives, prompts (not part of the build)

### Symbol Replacement
`build.sh` converts Unicode math/physics symbols to LaTeX before PDF generation. When adding content with special symbols, use the Unicode versions in Markdown — they will be converted automatically. Supported symbols include: `ℏ`, `→`, `↔`, `⇒`, `⇔`, `∝`, `∩`, `∼`, `≙`, `≪`, `⊥`, `☉`, `𝜅`/`ϰ`, `𝜌`/`ϱ`.

### Page Breaks
Use a line containing only `***` to insert a page break in the PDF output.

### Formating
* Page Breaks for mayor number chapters on begin of the file
* `\n---\n` for second order chapters on beginn of the file
* all files musst end with an addition newline to prevent MD foramating errors on merge
* Use third order heading and below only when necessary for navigation purpose, use simple bold paragrph headings instead
* Chapter heading are numbered H1-H3 only, lower order headings don't contain numbering
* avoid mentioning the term 'ISE' and 'this framework' to often
* Use LaTex($$) an inline LaTex($) for Mathematical symbols, expressiona and formulas

## Content Conventions
- The thesis is written in English
- File ordering within chapters is determined by numeric prefix
- License: CC BY-NC-SA 4.0
- The material may be structured. The amount of prose should be minimal. A middle ground between structure and a pleasant text flow for specialist readers.
