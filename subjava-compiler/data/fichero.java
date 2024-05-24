public class App {

    public static boolean change_bool(boolean x, int y) {
        y--;
        return x;
    }

    public static void sum(){
        int a = 10;
        int b = 20;
        b++;
        int c = a + b*5-(4/2);
        System.out.println(c);
    }

    public static void divide(){
        int a = 10;
        int b = 2*11;
        b += 4;
        while (true) {
            System.out.println(a);
            return;
        }
        System.out.println(b);
    }

    public static void main(){
        int x = 10;
        boolean p, q;
        p = true;
        q = false;
        for (int i = 0; i < 10; i++) {
           System.out.println(i);
        }
        do{
            p = change_bool(p, x++);
            System.out.println(p);
        } while (false);
        sum();
        divide();
    }
}


