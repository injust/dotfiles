from functools import partial as __partial
from importlib import reload as reload

try:
    from rich import inspect as __inspect
    from rich import pretty as __pretty
    from rich import print as print
except ModuleNotFoundError:
    pass
else:
    __pretty.install()

    inspect = __partial(__inspect, methods=True)
