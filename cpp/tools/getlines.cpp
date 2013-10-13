#include <iostream>
#include <fstream>
#include <string>
#include <string.h>
#include <cstdlib>
using namespace std;

int main(int argc, char** argv)
{
    if(argc < 2)
    {
        cout<<"usage: "<<argv[0]<<" <filename> <line_offset> <line_cnt>"<<endl;
    }
    ifstream ifs(argv[1]);
    string line;
    int lineno =atoi(argv[2]);
	int linecnt = atoi(argv[3]);
	string tmp;
	for(int i =0;i < lineno;i++)
	{
		getline(ifs,tmp,'\0');
	}
    while(linecnt > 0 && getline(ifs, line, '\0'))
    {
        for(int i = 0; i< line.size(); i++)
        {
            if(line[i]=='\n' || line[i]=='\t' || line[i] == '\r')
              line[i] = ' ';
        }
        cout<<line<<endl;
		linecnt--;
    }
    
    return 0;
}
