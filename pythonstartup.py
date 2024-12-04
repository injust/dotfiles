from importlib import reload as reload  # noqa: PLC0414

try:
    from rich import inspect as _inspect
    from rich import pretty
    from rich.console import Console
except ModuleNotFoundError:
    pass
else:
    from functools import partial

    pretty.install()
    del pretty

    print = Console().out  # noqa: A001
    del Console

    inspect = partial(_inspect, methods=True)
    del _inspect
    del partial
