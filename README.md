# ADR Skill

Create and maintain Architecture Decision Records (ADRs) with clear status transitions, consistent naming, and traceable provenance.

## Install

> prereq: a machine with Codex installed

Run this in any terminal:

```bash
python3 "${CODEX_HOME:-$HOME/.codex}/skills/.system/skill-installer/scripts/install-skill-from-github.py" \
  --repo "eucalyptus-viminalis/adr-skill" \
  --path . \
  --name adr
```

Then restart Codex to load the new skill.

## Getting Started

__ask Codex__:

```
what does $adr-skill do?
```

```
what's an ADR?
```

```
when is $adr-skill useful?
```

```
how do i use $adr-skill?
```
