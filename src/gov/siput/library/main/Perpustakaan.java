
package gov.siput.library.main;

//import gov.siput.library.database.siputDatabase;

import gov.siput.library.view.RegisterView;


//import gov.siput.library.error.DataBukuException;
//import gov.siput.library.view.RegisterView;
//import java.sql.SQLException;
//import java.util.logging.Level;
//import javax.swing.SwingUtilities;



//import java.sql.SQLException;

public class Perpustakaan {


    public static void main(String[] args) {
        
        RegisterView view = new RegisterView();
        view.setVisible(true);
        view.pack();
        view.setLocationRelativeTo(null);
         
//        SwingUtilities.invokeLater(new Runnable() {
//            @Override
//            public void run() {
//                try {
//                    RegisterView view = new RegisterView();
//                    view.setVisible(true);
//                } catch (Exception e) {
//                }    
//            }
//        });
    }
}
