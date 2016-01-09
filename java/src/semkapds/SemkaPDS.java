/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package semkapds;

/**
 *
 * @author Jožko
 */
public class SemkaPDS {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws Exception {
        Service sr = new Service();
        Service.getDB();
        sr.test();
    }
    
}
