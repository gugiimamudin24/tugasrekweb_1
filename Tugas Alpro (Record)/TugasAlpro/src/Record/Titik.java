/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Record;

import java.util.Scanner;

/**
 *
 * @author asus
 */
public class Titik {
    int x,y;
    
    void BacaTitik(){
    Scanner sc = new Scanner(System.in);
        System.out.print("x : ");x=sc.nextInt();
        System.out.print("y : ");y=sc.nextInt();
    }
    void TulisTitik(){
        System.out.println("Titik : ["+x);System.out.println(","+y);System.out.println("]");
    }
    void MirrorTox(){
        x = x;
        y = y*(-1);
    }
    void MirrorToy(){
        x = x*(-1);
        y = y;
    }
    
    
    public static void main(String[] args) {
        Titik T = new Titik();
        T.BacaTitik();
        T.TulisTitik();
        T.MirrorTox();
        T.TulisTitik();
        T.MirrorToy();
        T.TulisTitik();
    }
}
