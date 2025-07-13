#! /usr/bin/env fish

uv tool install basedpyright
uv tool install llm --with=jsonschema,llm-cerebras
uv tool install pre-commit
uv tool install ruff
