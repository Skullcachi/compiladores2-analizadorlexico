/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package analizadorlexico;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.util.ArrayList;
import javax.swing.filechooser.FileFilter;
import javax.swing.filechooser.FileNameExtensionFilter;

/**
 *
 * @author cachi
 */
public class MiniSQLUI extends javax.swing.JFrame {

    /**
     * Creates new form MiniSQLUI
     */
    public MiniSQLUI() {
        initComponents();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jFileChooser1 = new javax.swing.JFileChooser();
        jScrollPane1 = new javax.swing.JScrollPane();
        jTextArea1 = new javax.swing.JTextArea();
        jTextField1 = new javax.swing.JTextField();
        jButton1 = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jTextArea1.setBackground(new java.awt.Color(0, 0, 0));
        jTextArea1.setColumns(20);
        jTextArea1.setForeground(new java.awt.Color(0, 255, 0));
        jTextArea1.setRows(5);
        jScrollPane1.setViewportView(jTextArea1);

        jTextField1.setText("No File Selected");

        jButton1.setText("Upload File");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jScrollPane1)
                .addContainerGap())
            .addGroup(layout.createSequentialGroup()
                .addGap(238, 238, 238)
                .addComponent(jTextField1, javax.swing.GroupLayout.PREFERRED_SIZE, 172, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(jButton1)
                .addContainerGap(459, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addGap(37, 37, 37)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jTextField1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jButton1))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 39, Short.MAX_VALUE)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 397, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        // TODO add your handling code here:
        BufferedReader reader;
        String currentLine;
        BufferedWriter writer;
        BufferedWriter writerErrores;
        FileFilter filter = new FileNameExtensionFilter("All files", "txt");
        resultados = "";
        jFileChooser1.setFileFilter(filter);
        try {
            jFileChooser1.setCurrentDirectory(new File(PATH));
            int returnVal = jFileChooser1.showOpenDialog(jFileChooser1);
            if (returnVal == jFileChooser1.APPROVE_OPTION)
            {
                File file = jFileChooser1.getSelectedFile();
                //This is where a real application would open the file.
                jTextField1.setText("Selected file: " + file.getAbsolutePath());
                ProbarLexerFile(file);
                if (hayError)
                {

                        writerErrores = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(PATH + "errors.txt"), "utf-8"));
                        for (int i = 0; i < listaErrores.size(); i++) {
                            writerErrores.write(listaErrores.get(i));
                        }
                        writerErrores.close();
                    
                    
                }
                else
                {
                    String extensionArchivoSalida = file.getName().substring(file.getName().lastIndexOf('.'), file.getName().length());
                    writer = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(PATH + file.getName().replaceAll("entrada" + extensionArchivoSalida, "salida.out")), "utf-8"));
                    reader = new BufferedReader(new FileReader(file.getAbsolutePath()));
                    /*while ((currentLine = reader.readLine()) != null)
                    {                        
                        writer.write(currentLine);
                    }*/
                    writer.write(resultados);
                    writer.close();
                    reader.close();
                    
                    writerErrores = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(PATH + "errors.txt"), "utf-8"));
                    for (int i = 0; i < listaErrores.size(); i++) {
                        writerErrores.write(listaErrores.get(i));
                    }
                    writerErrores.close();
                }
                
            }
            else
            {
                jTextField1.setText("No file has been selected.\n");
            }
            
        }
        catch(IOException ex){
            System.out.println(ex.getMessage());
        }
    }//GEN-LAST:event_jButton1ActionPerformed

    public boolean hayError = false;
    
    public ArrayList<String> listaErrores = new ArrayList<String>();
    
    
    public void ProbarLexerFile(File filetoread) throws IOException{
        Reader reader;
        reader = new BufferedReader(new FileReader(filetoread.getAbsolutePath()));
        Yylex lexer = new Yylex(reader);
        
        while (true){
            String token = lexer.yylex();
            if (token == null){
                resultados = resultados + "EOF";
                jTextArea1.setText(resultados);
                hayError = false;
                return;
            }
            else
            {
                if (token.contains("Lexical error:"))
                {                    
                    resultados = resultados + "\n*** ERROR: line: " + lexer.line + ". \n*** Unrecognized char: '" + lexer.lexeme + "'.\n\n";
                    hayError = true;
                    listaErrores.add("\n*** ERROR: line: " + lexer.line + ". \n*** Unrecognized char: '" + lexer.lexeme + "'.\n\n");
                }
                else 
                {                    
                    resultados +=  "\n" + token + ".\n";
                }
            }
        }        
    }
    
    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
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
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(MiniSQLUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(MiniSQLUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(MiniSQLUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(MiniSQLUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new MiniSQLUI().setVisible(true);
            }
        });
    }
    
    public String PATH = "C:/Users/cachi/OneDrive/Documents/NetBeansProjects/AnalizadorLexico";
    String resultados = "";

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JFileChooser jFileChooser1;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTextArea jTextArea1;
    private javax.swing.JTextField jTextField1;
    // End of variables declaration//GEN-END:variables
}