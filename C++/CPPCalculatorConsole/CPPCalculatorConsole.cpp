// CPPCalculatorConsole.cpp : Questo file contiene la funzione 'main', in cui inizia e termina l'esecuzione del programma.
//

#include <iostream>
using namespace std;


class Operazione /* CLASS OPERAZIONE DECLARATION*/
{
    public:                                // PUBLIC VARIABLES DECLARATION
        float n1;
        float n2;
    
        float Somma(float n1, float n2);
        float Sottrazione(float n1, float n2);
        float Moltiplicazione(float n1, float n2);
        float Divisione(float n1, float n2);
};

float Operazione::Somma(float n1, float n2) /* SUM */
{
    return n1 + n2;
};

float Operazione::Sottrazione(float n1, float n2) /* SUBTRACT */
{
    return n1 - n2;
};

float Operazione::Moltiplicazione(float n1, float n2) /* MULTIPLY */
{
    return n1 * n2;
};

float Operazione::Divisione(float n1, float n2) /* DIVIDE */
{
  
    if (n2 == 0)
    {
        cout << "Impossibile dividere per zero! Provare con un divisore diverso";
        
    }
    else

    {
        int res = n1 / n2;
        return res;
    }
};






int main()
{
    int chioceIndex; // Chioce Index Declaration

    Operazione Operation;
    cout << "Inserire Primo Numero: " << endl << "> ";
    cin >> Operation.n1;
    cout << "Inserire Secondo Numero : " << endl << "> ";
    cin >> Operation.n2;
    cout << "Selezionare il tipo di operazione da effettuare :" << endl;
    cout << "1 > Somma" << endl;
    cout << "2 > Sottrazione" << endl;
    cout << "3 > Moltiplicazione" << endl;
    cout << "4 > Divisione" << endl;
    cout << "> ";
    cin >> chioceIndex;

    switch (chioceIndex)
    {

    case (1): 
              cout << "La somma dei numeri " << Operation.n1 << " e " << Operation.n2 << " e' : " << Operation.Somma(Operation.n1, Operation.n2) << endl;         
        break;
    

    case (2): cout << "La differenza tra i numeri " << Operation.n1 << " e " << Operation.n2 << " e' : " << Operation.Sottrazione(Operation.n1, Operation.n2) << endl;
        break;
    

    case (3): cout << "Il prodotto dei numeri " << Operation.n1 << " e " << Operation.n2 << " e' uguale a  : " <<  Operation.Moltiplicazione(Operation.n1, Operation.n2) << endl;
        break;
    

    case (4): cout << "La divisone tra i  numeri " << Operation.n1 << " e " << Operation.n2 << " e' : " <<  Operation.Divisione(Operation.n1, Operation.n2) << endl;
        break;

    };

    return 0;
    
}





