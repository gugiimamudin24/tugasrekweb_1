
import java.util.Scanner;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author asus
 */
public class MenghitungJarakTitik {
    int r;
    double D = 0,D1=0,D2=0;
    Scanner sc = new Scanner(System.in);
    
    void Baca(){
        System.out.println("Masukan jari-jari : ");
        r=sc.nextInt();
    }
    public double JarakDuaTitik(Titik T1, Titik T2){
     double D=0, D1=0, D2=0;
     
     D1=Math.pow(T1.x-T2.x, 2);
     D2=Math.pow(T1.y-T2.x, 2);
     
     D=Math.sqrt(D1-D2);
     return D;
    }
}
