/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gov.siput.library.controller;

import gov.siput.library.model.AkunModel;
import gov.siput.library.view.RegisterView;
import javax.swing.JOptionPane;

/**
 *
 * @author Administrator
 */
public class AkunController {
    
    private AkunModel model;

    public void setModel(AkunModel model) {
        this.model = model;
    }
    
        public void resetAkun(RegisterView view){
        model.resetAkun();
        
    }
    
    public void insertAkun(RegisterView view){
        String nama = view.getjTextField_Nama().getText();
        String email = view.getjTextField_Email().getText();
        String password = view.getjPasswordField_Password().getText();
        
        if(nama.trim().equals("")){
            JOptionPane.showMessageDialog(view, "Nama Tidak Boleh Kosong");
        }else if(nama.length()>255){
            JOptionPane.showMessageDialog(view, "Nama Tidak Boleh lebih dari 255 karakter");
        }else if(!email.contains("@")||!email.contains(".")){
            JOptionPane.showMessageDialog(view, "Email tidak valid");
        }else{
            model.setNama(nama);
            model.setEmail(email);
            model.setPassword(password);
            
            try{
                
                model.InsertAkun();
                model.resetAkun();
                JOptionPane.showMessageDialog(view, "Registrasi Berhasil");
                
            }catch (Throwable throwable){
                
                JOptionPane.showMessageDialog(view, new Object[]{"Terjadi Eror di database dengan pesan", throwable.getMessage()});
                
            }
        }
        
    }
    
}
