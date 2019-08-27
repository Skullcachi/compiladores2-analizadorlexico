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

/**
 *
 * @author cachi
 */
public class AnalizadorLexico {

    static String PATH = "C:/Users/cachi/OneDrive/Documents/NetBeansProjects/AnalizadorLexico/src/analizadorlexico/Yylex.flex";
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        GenerarLexer(PATH);
    }
    
    public static void GenerarLexer(String path){
        File output = new File(path);
        jflex.Main.generate(output);
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

