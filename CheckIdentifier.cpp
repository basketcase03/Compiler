#include<iostream>
#include<string>
using namespace std;

bool check_identifier(string input)
{
	int ascii_a=int('a');
	int ascii_z=int('z');
	int ascii_A=int('A');
	int ascii_Z=int('Z');
	int ascii__=int('_');
	int ascii_0=int('0');
	int ascii_9=int('9');
	for(int i=0;i<input.length();i++)
	{
		if(i==0)
		{
			if(((int(input[0])>=ascii_A) && (int(input[0])<=ascii_Z)) || ((int(input[0])>=ascii_a) && (int(input[0])<=ascii_z)) || (int(input[0]))==ascii__ )
			{
				continue;
			}
			else
			return false;
		}
		if(((int(input[0])>=ascii_A) && (int(input[0])<=ascii_Z)) || ((int(input[0])>=ascii_a) && (int(input[0])<=ascii_z)) || (int(input[0]))==ascii__ || ((int(input[0])>=ascii_0) && (int(input[0])<=ascii_9)) )
		continue;
		else
		return false;
	}
	return true;
	
}
int main()
{
	string input;
	while(true)
	{
		getline(cin,input);
		if(check_identifier(input))
		{
			cout<<"It is identifier!"<<endl;
		}
		else
		{
			cout<<"It is not identifier"<<endl;
		}
 	}
}
