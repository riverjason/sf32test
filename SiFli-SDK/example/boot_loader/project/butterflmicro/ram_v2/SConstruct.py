import rtconfig
from building import *


def create_env(proj_path):
    SifliEnv(proj_path)
    rtconfig.LFLAGS.append('-Wl,--allow-multiple-definition')
    proj_env = Environment(
        tools=['mingw'],
        AS=rtconfig.AS,
        ASFLAGS=rtconfig.AFLAGS,
        CC=rtconfig.CC,
        CCFLAGS=rtconfig.CFLAGS,
        AR=rtconfig.AR,
        ARFLAGS='-rc',
        LIBPATH=['.'],
        LINK=rtconfig.LINK,
        LINKFLAGS=rtconfig.LFLAGS,
    )
    proj_env.PrependENVPath('PATH', rtconfig.EXEC_PATH)
    return proj_env
