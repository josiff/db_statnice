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
public class ComboItem {
    public String popis;
    public String hodnota;

    public ComboItem(String popis, String hodnota) {
        this.popis = popis;
        this.hodnota = hodnota;
    }

    @Override
    public String toString() {
        return popis;
    }
    
    
    
    
    
    
    
}
