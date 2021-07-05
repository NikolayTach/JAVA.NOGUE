#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <dirent.h>
#include <assert.h>
#include <errno.h>
#include <linux/capability.h>
#include <sys/capability.h>
#include <sys/prctl.h>
#include <limits.h>
#include <cap-ng.h>

// Make sure assertions are not compiled out, we use them to codify
// invariants about this program and we want it to fail fast and
// loudly if they are violated.
#undef NDEBUG

extern char **environ;

// The WRAPPER_DIR macro is supplied at compile time so that it cannot
// be changed at runtime
static char * wrapperDir = WRAPPER_DIR;

// Wrapper debug variable name
static char * wrapperDebug = "WRAPPER_DEBUG";

// Update the capabilities of the running process to include the given
// capability in the Ambient set.
static void set_ambient_cap(cap_value_t cap)
{
    capng_get_caps_process();

    if (capng_update(CAPNG_ADD, CAPNG_INHERITABLE, (unsigned long) cap))
    {
        perror("cannot raise the capability into the Inheritable set\n");
        exit(1);
    }

    capng_apply(CAPNG_SELECT_CAPS);
    
    if (prctl(PR_CAP_AMBIENT, PR_CAP_AMBIENT_RAISE, (unsigned long) cap, 0, 0))
    {
        perror("cannot raise the capability into the Ambient set\n");
        exit(1);
    }
}
