from __future__ import annotations

from importlib import reload as reload  # noqa: PLC0414

try:
    from rich import inspect as _inspect
    from rich import pretty
    from rich import print as print  # noqa: PLC0414
except ModuleNotFoundError:
    pass
else:
    from functools import partial

    pretty.install()
    del pretty

    inspect = partial(_inspect, methods=True)
    del _inspect
    del partial
