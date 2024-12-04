from importlib import reload as reload  # ruff: ignore[PLC0414]

try:
    from rich import get_console, pretty
    from rich import inspect as _inspect
except ModuleNotFoundError:
    pass
else:
    from functools import partial, wraps

    pretty.install()
    del pretty

    print = get_console().out  # ruff: ignore[A001]
    del get_console

    inspect = wraps(_inspect)(partial(_inspect, methods=True))
    del _inspect, partial, wraps
