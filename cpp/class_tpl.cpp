#include "Classtpl.h"

namespace NS
{
    bool Classtpl::init()
    {
        return true;
    }
    
    bool Classtpl::dispose()
    {
        return true;
    }
}


#ifdef UT
using namespace NS;

int main()
{
    return 0;
}

#endif
