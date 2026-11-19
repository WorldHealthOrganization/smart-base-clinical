# AGENTS.md — smart-base-clinical

This file is agent-generic. What binds everywhere is the harness's
[`AGENTS.md`](https://github.com/litlfred/cat-harness/blob/HEAD/AGENTS.md); what
this repository *is* is [`README.md`](README.md).

## What this instance is

The WHO SMART Guidelines base-clinical implementation guide: FHIR IG source
under `input/`, built by the IG Publisher. It takes the smart-hiv shape (owner,
2026-10-14). It has no harness of its own: `index.config.json` mounts
`smart-base` and the layers below it, and `smart-base-clinical.json` declares
what an index may mount from here (nothing yet).

## The platform is mounted, not absent

The layers `index.lock.json` pins are laid down at the repository root
(not committed):

```sh
ref=$(python3 -c "import json;print(next(m['ref'] for m in json.load(open('index.lock.json'))['mounts'] if m['harness']=='cat-harness-tools'))")
M=$(mktemp -d); git init -q "$M"
git -C "$M" fetch -q --depth 1 https://github.com/litlfred/cat-harness-tools.git "$ref"
git -C "$M" checkout -q FETCH_HEAD && bun run "$M/scripts/mount-from-lock.ts" --root .
```

Re-pin with `bun run cat-harness-tools/scripts/remote-mount.ts --seed
<name>=<owner/repo>@<full sha> --consent-by <who>` (the owner's words on stdin).

## The site

The site is built and published by an agent, never by a workflow (owner,
2026-10-10; bean folio-assistant-n3h9; `index.config.json` `site.agentRun`):

```sh
bun run cat-harness-tools/scripts/stage-local.ts --repo . [--plan | --dry-run]
```

It builds the folio site from the IG's cached AST on
`cat/fhir-harness/fhir-ast/smart.who.int.base-clinical`, never from a
Publisher run. On `main` it publishes the gh-pages root, keeping `STAGING/`,
`_render-log/` and `branches/`; on any other branch the preview at
`STAGING/<branch>/`. The AST cache is refreshed by `ig-ast-refresh.yml`
(fhir-harness's reusable workflow; on a push to main that changes the IG's
inputs, or by hand). `site-publish.yml` runs the same command on a runner,
by hand only.

## FHIR

Before committing anything under `input/` or `sushi-config.yaml`, SUSHI must
report 0 errors with the pinned package versions (fhir-harness
`fhir-validation`, "When a package host refuses you").
