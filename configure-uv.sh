#! /usr/bin/env bash

uv python install --default

uv tool install basedpyright
uv tool install pre-commit
uv tool install ruff
