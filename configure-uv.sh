#! /usr/bin/env bash

uv python install --default

uv tool install pre-commit
uv tool install ruff
uv tool install zuban
