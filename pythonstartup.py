from functools import partial as __partial
from importlib import reload as reload

try:
    from rich import inspect as __inspect
    from rich import pretty as __pretty
    from rich import print as print
    from rich import traceback as __traceback
except ModuleNotFoundError:
    pass
else:
    __pretty.install()
    __traceback.install(show_locals=True)

    inspect = __partial(__inspect, methods=True)
