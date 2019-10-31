/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package analizadorlexico;

import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.logging.Level;
import java.util.logging.Logger;
import java_cup.runtime.*;

/**
 *
 * @author cachi
 */
public class AnalizadorLexico {

    //static String PATH = "C:/Users/cachi/OneDrive/Documents/NetBeansProjects/AnalizadorLexico/src/analizadorlexico/Yylex.flex";
    static String PATH = "../AnalizadorLexico/src/analizadorlexico/Yylex.flex";
    static String PATHCUP = "../AnalizadorLexico/src/analizadorlexico/asintactico.cup";
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        GenerarLexer(PATH);
        GenerarCup(PATHCUP);
    }
    
    public static void GenerarLexer(String path){
        File output = new File(path);
        JFlex.Main.generate(output);
    }
    
    public static void GenerarCup(String path){
        File output = new File(path);
        System.out.println(output);
        String[] asintactico = {"-parser","asintactico", "-expect", "1026", path};
        try
        {
            java_cup.Main.main(asintactico);
        }
        catch (Exception ex)
        {
            Logger.getLogger(AnalizadorLexico.class.getName()).log(Level.SEVERE, null, ex);
        }
        /* Los archivos se generan en la carpeta raiz del proyecto, por lo que hay que moverlos para que funcionen correctamente*/
        moveFile("asintactico.java");
        moveFile("sym.java");
    }
    
    public static boolean moveFile(String fileName)
    {
        boolean fileMoved = false;
        File file =  new File(fileName);
        if (file.exists())
        {
            System.out.println("moving cup generated files to the correct path");
            Path currentRelativePath = Paths.get("");
            String newDir = currentRelativePath.toAbsolutePath().toString()
                    + File.separator + "src" + File.separator
                    + "analizadorlexico" + File.separator + file.getName();
            if (file.renameTo(new File(newDir)))
            {
                System.out.println("the cup generated file has been moved successfully.");
                fileMoved = true;
            }
            else
            {
                System.out.println("ERROR, the file could not be moved.");                
            }
        }
        else
        {
            System.out.println("File could not be found!");
        }
        return fileMoved;
    }
}

