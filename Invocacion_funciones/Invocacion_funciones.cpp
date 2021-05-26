#include <iostream>

extern "C" int Suma(int a, int b);
extern "C" int BuscarCaracter(char *cadena, char caracter);

using namespace std;

int main()
{
    char cad[] = "Hola Mundo";

    // cout << "*****\nllamada a la funcion Suma " << Suma(5, 8) << endl;
    cout << "llamada a la funcion BuscarCaracter - posision " << BuscarCaracter(cad, 'M') << endl;
}
