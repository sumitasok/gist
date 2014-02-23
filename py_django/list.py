# Use functools.partial():
# passing key word arguments
# http://docs.python.org/2/library/functools.html#functools.partial

from functools import partial

mapfunc = partial(my_function, ip=ip)
map(mapfunc, volume_ids)

