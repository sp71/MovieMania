/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package business;

/**
 *
 * @author Satinder
 */
public class Login {
    private String time;
    
    public Login()
    {
        time = "00:00:00";
    }
    
    public Login(String t)
    {
        time = t;
    }
    
    public void setTimeStamp(String t)
    {
        time = t;
    }

    public String getTimeStamp()
    { 
        return time; 
    }
}
