public class Ejem_TAC {
public static boolean comparar(int valor, int tope) {
int aux;
aux = calculaValor(valor);
return ((tope < 5*2) || (aux < 1)) && true;
}
public static int calculaValor(int valor1) {
int aux = 1;
for (int i = 0; i < valor1; i++) {
for (int j = i ; j < i; j--) {
aux = aux + 2;
}
aux = aux + 1;
}
 return aux;
}
public static void main() {
boolean esCierto = true;
int x = 0;
 while (esCierto){
x++;
 esCierto = comparar(x,5);
 }
}
}
