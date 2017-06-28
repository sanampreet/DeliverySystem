
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.swing.JOptionPane;


public class mymain{

    
    public static void main(String[] args) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (Exception e) {
            java.util.logging.Logger.getLogger(PizzaDelivery1.class.getName()).log(java.util.logging.Level.SEVERE, null, e);
        }
        try
        {
            Connection myconnection;
            String path="jdbc:mysql://localhost/";
            String place="deliverysystem";
            String username="root";
            String password="";
            myconnection=DriverManager.getConnection(path+place,username,password);
            try
            {
                String q="select * from admintable";
                PreparedStatement mystatement=myconnection.prepareStatement(q);
                ResultSet myresult=mystatement.executeQuery();
               
                if(myresult.next())                
                {
                    LoginFrame obj=new LoginFrame();
                    obj.setVisible(true);
                }
                else
                {
                     JOptionPane.showMessageDialog(null, "Admin dont exist,create admin first");
                     CreateAdmin ob=new CreateAdmin();
                     ob.setVisible(true);
                     
                
            }
            }
            catch(Exception e)
            {
                JOptionPane.showMessageDialog(null, "Error"+e.getMessage());
            }
            finally
            {
                myconnection.close();
            }
        }
        catch(Exception e)
        {
            JOptionPane.showMessageDialog(null, "Error"+e.getMessage());
            
        }
        
    
            
                 
    }                                        
 
        
        
        
}
