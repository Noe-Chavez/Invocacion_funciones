#include <iostream>

extern "C" int Suma(int a, int b);

using namespace std;

int main()
{
    cout << "llamada a la funcion Suma " << Suma(5, 8) <<endl;
}
