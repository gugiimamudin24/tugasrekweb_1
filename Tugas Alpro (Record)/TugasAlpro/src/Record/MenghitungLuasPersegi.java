/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Record;

/**
 *
 * @author asus
 */
public class MenghitungLuasPersegi {
    static double Luas (Titik T1, Titik T2){
    double P,L,Luas;
    L=(T1.y-T2.y);
    P=(T1.x-T2.x);
    Luas = P*L;
    
    return Luas;
    }
    public static void main(String[] args) {
        
        Titik T1 = new Titik(), T2 = new Titik();
        
        MenghitungLuasPersegi B = new MenghitungLuasPersegi();
        T1.BacaTitik();
        T2.BacaTitik();
        T1.TulisTitik();
        T2.TulisTitik();
        
        System.out.println("Luas Persegi = " + Luas(T1,T2));
        
    }
        
    }




