
package Record;

public class Akses {
    static double JarakDuaTitik(Titik A, Titik B){
        double D=0, D1=0, D2=0;
        
        D1=Math.pow(A.x-B.x, 2);
        D2=Math.pow(A.y-B.x, 2);
        
        D=Math.sqrt(D1+D2);
        return D;
    }
    public static void main(String[] args) {
        Titik T = new Titik(), T2 = new Titik();
        Akses A = new Akses();
        
        T.BacaTitik();
        T2.BacaTitik();
        T.TulisTitik();
        T2.TulisTitik();
        
        System.out.println("Jarak = " + A.JarakDuaTitik(T.T2));
        
    }
        
        
        
        
    
    
    }
}