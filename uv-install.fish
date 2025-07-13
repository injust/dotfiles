#! /usr/bin/env fish

uv python install --default

uv tool install basedpyright
uv tool install pre-commit
uv tool install ruff
