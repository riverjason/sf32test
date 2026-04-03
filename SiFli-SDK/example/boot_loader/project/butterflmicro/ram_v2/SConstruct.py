import rtconfig
from building import *

def create_env(proj_path):
    SifliEnv(proj_path)
    rtconfig.LFLAGS.append('-Wl,--allow-multiple-definition')
