#include<iostream>
#include<string>
using namespace std;

bool check_const(string input)
{
	//char

	if(input[0]=='\'')
		{
			if(input[input.length()-1]=='\'')
			return true;
			else
			return false;
		}
		
	//string
	if(input[0]=='"')
		{
			if(input[input.length()-1]=='"')
			return true;
			else
			return false;
		}

	string type="float";
	//octal or hex
	if(input[0]=='0')
	{
		if(input[1]=='x')
		type="hex";
		else
		type="oct";
	}
	//counter for decimal point
	int deci=0;
	if(type=="float")
	for(int i=0;i<input.length();i++)
	{   
		
		if(input[0]=='-')
		continue;

		
		if(input[i]=='.')
		{
			if(deci==0)
			deci++;
			else
			{
			return false;	
			}
			continue;
			
		}
		if(input[i]>='0' && (input[i]<='9'))
		continue;
		else
		return false;		
	}
	// for oct
	if(type=="oct")
	for(int i=1;i<input.length();i++)
	{   
		if(input[i]>='0' && input[i]<='7')
		continue;
		else
		return false;		
	}
	
	//for hex
	if(type=="hex")
	for(int i=2;i<input.length();i++)
	{   
		if((input[i]>='0' && input[i]<='9') || (input[i]>='A' && input[i]<='F'))
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
		if(check_const(input))
		{
			cout<<"It is constant!"<<endl;
		}
		else
		{
			cout<<"It is not constant"<<endl;
		}
 	}
}
