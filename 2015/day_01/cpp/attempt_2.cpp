#include <bits/stdc++.h>
using namespace std;

int main() {
    ifstream in("../input.txt");
    string s; in >> s;
    int f=0,p=0;
    for(int i=0;i<s.size();i++){
        f += s[i]=='('?1:-1;
        if(!p && f==-1) p=i+1;
    }
    cout<<f<<" "<<p<<"\n";
}
