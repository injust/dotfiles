from importlib import reload as reload

try:
    from rich import inspect as _inspect
    from rich import pretty
    from rich import print as print
except ModuleNotFoundError:
    pass
else:
    from functools import partial

    pretty.install()
    del pretty

    inspect = partial(_inspect, methods=True)
    del _inspect
    del partial
