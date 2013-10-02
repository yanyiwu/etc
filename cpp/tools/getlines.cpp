#include <iostream>
#include <fstream>
#include <string>
using namespace std;

int main(int argc, char** argv)
{
    if(argc < 2)
    {
        cout<<"usage: "<<argv[0]<<" <filename>"<<endl;
    }
    ifstream ifs(argv[1]);
    string line;
    while(getline(ifs, line, '\0'))
    {
        for(int i = 0; i< line.size(); i++)
        {
            if(line[i]=='\n')
              line[i] = '/';
        }
        cout<<__FILE__<<line<<endl;
    }
    
    return 0;
}
