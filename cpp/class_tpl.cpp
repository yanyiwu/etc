#include <class_tpl.h>

namespace NS
{
	Classtpl::Classtpl()
	{
	}
	
	Classtpl::~Classtpl()
	{
	}

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
