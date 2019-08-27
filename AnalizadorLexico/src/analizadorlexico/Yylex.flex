package analizadorlexico;
import java.io.*;

%%

%public

%class Yylex

%unicode

%line

%column

%type String

MULTILINE_COMMENT = "/*" [^*] ~"*/" | "/*" "*"+ "/"

UNFINISHED_COMMENT = "/*" [^*]+

//SINGLELINE_COMMENT = "//" [^\r\n]* [\r|\n|\r\n]?
SINGLELINE_COMMENT = "--" [^\r\n]* [\r|\n|\r\n]?


RESERVED_WORDS = "ABSOLUTE"|"ACTION"|"ADA"|"ADD"|"ALL"|"ALLOCATE"|"ALTER"|"AND"|"ANY"|"ARE"|"AS"|"ASC"|"ASSERTION"|"AT"|"AUTHORIZATION"|"AVG"|"BACKUP"|"BEGIN"|"BETWEEN"|"BIT"|"BIT_LENGTH"|"BOTH"|"BREAK"|"BROWSE"|"BULK"|"BY"|"CASCADE"|"CASCADED"|"CASE"|"CAST"|"CATALOG"|"CHAR"|"CHAR_LENGTH"|"CHARACTER"|"CHARACTER_LENGTH"|"CHECK"|"CHECKPOINT"|"CLOSE"|"CLUSTERED"|"COALESCE"|"COLLATE"|"COLLATION"|"COLUMN"|"COMMIT"|"COMPUTE"|"CONNECT"|"CONNECTION"|"CONSTRAINT"|"CONSTRAINTS"|"CONTAINS"|"CONTAINSTABLE"|"CONTINUE"|"CONVERT"|"CORRESPONDING"|"COUNT"|"CREATE"|"CROSS"|"CURRENT"|"CURRENT_DATE"|"CURRENT_TIME"|"CURRENT_TIMESTAMP"|"CURRENT_USER"|"CURSOR"|"DATABASE"|"DATE"|"DAY"|"DBCC"|"DEALLOCATE"|"DEC"|"DECIMAL"|"DECLARE"|"DEFAULT"|"DEFERRABLE"|"DEFERRED"|"DELETE"|"DENY"|"DESC"|"DESCRIBE"|"DESCRIPTOR"|"DIAGNOSTICS"|"DISCONNECT"|"DISK"|"DISTINCT"|"DISTRIBUTED"|"DOMAIN"|"DOUBLE"|"DROP"|"DUMP"|"ELSE"|"END"|"END-EXEC"|"ERRLVL"|"ESCAPE"|"EXCEPT"|"EXCEPTION"|"EXEC"|"EXECUTE"|"EXISTS"|"EXIT"|"EXTERNAL"|"EXTRACT"|"FALSE"|"FETCH"|"FILE"|"FILLFACTOR"|"FIRST"|"FLOAT"|"FOR"|"FOREIGN"|"FORTRAN"|"FOUND"|"FREETEXT"|"FREETEXTTABLE"|"FROM"|"FULL"|"FUNCTION"|"GET"|"GLOBAL"|"GO"|"GOTO"|"GRANT"|"GROUP"|"HAVING"|"HOLDLOCK"|"HOUR"|"IDENTITY"|"IDENTITY_INSERT"|"IDENTITYCOL"|"IF"|"IMMEDIATE"|"IN"|"INCLUDE"|"INDEX"|"INDICATOR"|"INITIALLY"|"INNER"|"INPUT"|"INSENSITIVE"|"INSERT"|"INT"|"INTEGER"|"INTERSECT"|"INTERVAL"|"INTO"|"IS"|"ISOLATION"|"JOIN"|"KEY"|"KILL"|"LANGUAGE"|"LAST"|"LEADING"|"LEFT"|"LEVEL"|"LIKE"|"LINENO"|"LOAD"|"LOCAL"|"LOWER"|"MATCH"|"MAX"|"MERGE"|"MIN"|"MINUTE"|"MODULE"|"MONTH"|"NAMES"|"NATIONAL"|"NATURAL"|"NCHAR"|"NEXT"|"NO"|"NOCHECK"|"NONCLUSTERED"|"NONE"|"NOT"|"NULL"|"NULLIF"|"NUMERIC"|"OCTET_LENGTH"|"OF"|"OFF"|"OFFSETS"|"ON"|"ONLY"|"OPEN"|"OPENDATASOURCE"|"OPENQUERY"|"OPENROWSET"|"OPENXML"|"OPTION"|"OR"|"ORDER"|"OUTER"|"OUTPUT"|"OVER"|"OVERLAPS"|"PAD"|"PARTIAL"|"PASCAL"|"PERCENT"|"PIVOT"|"PLAN"|"POSITION"|"PRECISION"|"PREPARE"|"PRESERVE"|"PRIMARY"|"PRINT"|"PRIOR"|"PRIVILEGES"|"PROC"|"PROCEDURE"|"PUBLIC"|"RAISERROR"|"READ"|"READTEXT"|"REAL"|"RECONFIGURE"|"REFERENCES"|"RELATIVE"|"REPLICATION"|"RESTORE"|"RESTRICT"|"RETURN"|"REVERT"|"REVOKE"|"RIGHT"|"ROLLBACK"|"ROWCOUNT"|"ROWGUIDCOL"|"ROWS"|"RULE"|"SAVE"|"SCHEMA"|"SCROLL"|"SECOND"|"SECTION"|"SECURITYAUDIT"|"SELECT"|"SEMANTICKEYPHRASETABLE"|"SEMANTICSIMILARITYDETAILSTABLE"|"SEMANTICSIMILARITYTABLE"|"SESSION"|"SESSION_USER"|"SET"|"SETUSER"|"SHUTDOWN"|"SIZE"|"SMALLINT"|"SOME"|"SPACE"|"SQL"|"SQLCA"|"SQLCODE"|"SQLERROR"|"SQLSTATE"|"SQLWARNING"|"STATISTICS"|"SUBSTRING"|"SUM"|"SYSTEM_USER"|"TABLE"|"TABLESAMPLE"|"TEMPORARY"|"TEXTSIZE"|"THEN"|"TIME"|"TIMESTAMP"|"TIMEZONE_HOUR"|"TIMEZONE_MINUTE"|"TO"|"TOP"|"TRAILING"|"TRAN"|"TRANSACTION"|"TRANSLATE"|"TRANSLATION"|"TRIGGER"|"TRIM"|"TRUE"|"TRUNCATE"|"TRY_CONVERT"|"TSEQUAL"|"UNION"|"UNIQUE"|"UNKNOWN"|"UNPIVOT"|"UPDATE"|"UPDATETEXT"|"UPPER"|"USAGE"|"USE"|"USER"|"USING"|"VALUE"|"VALUES"|"VARCHAR"|"VARYING"|"VIEW"|"WAITFOR"|"WHEN"|"WHENEVER"|"WHERE"|"WHILE"|"WITH"|"WITHIN GROUP"|"WORK"|"WRITE"|"WRITETEXT"|"YEAR"|"ZONE"

OPERATORS_OR_PUNTUATION_MARKS = "+" | "-" | "*" | "/" | "%" | "<" | "<=" | ">" | ">=" | "=" | "==" | "!=" | "&&" | "||" | "!" | ";" | "," | "." | "[" | "]" | "(" | ")" | "{" | "}" | "[]" | "()" | "{}" | "@" | "#" | "##"

D = [0-9]

L = [a-zA-Z_]

%{
    public String lexeme;
    public int line;
    public int column;
    public int length;
%}
%%
// OPERATOR_OR_PUNTUATION_MARKs
{OPERATORS_OR_PUNTUATION_MARKS}                                  { return "OPERATOR OR PUNTATION MARK: " + yytext() + " in line: " + (yyline + 1) + " columns: " + (yycolumn + 1) + " - " + ((yycolumn + 1) + yylength() - 1); }

// UNFINISHED_STRING
//['][^'\n]*|[´][^´\n]*                                            { return "ERROR, malformed STRING: " + yytext() + " in line: " + (yyline + 1) + " columns: " + (yycolumn + 1) + " - " + ((yycolumn + 1) + yylength() - 1); }

// STRINGs
[´][^´\n]*[´]|['][^'\n]*[']                                      { return "STRING: " + yytext() + " in line: " + (yyline + 1) + " columns: " + (yycolumn + 1) + " - " + ((yycolumn + 1) + yylength() - 1); }

// RESERVED_WORDs
{RESERVED_WORDS}                                                 { return "RESERVED WORD: " + yytext() + " in line: " + (yyline + 1) + " columns: " + (yycolumn + 1) + " - " + ((yycolumn + 1) + yylength() - 1); }

// IDENTIFIERs
{L}({L}|{D})*                                                    { 
                                                                    if(yylength() > 31)
                                                                    {
                                                                        String aux = yytext().substring(0,31);
                                                                        
                                                                        return "IDENTIFIER: " + aux + " in line: " + (yyline + 1) + " columns: " + (yycolumn + 1) + " - " + ((yycolumn + 1) + yylength() - 1) + " exceeded the max limit length. Identifier truncated.";                                                                       
                                                                    }
                                                                    else 
                                                                    {
                                                                        return "IDENTIFIER: " + yytext() + " in line: " + (yyline + 1) + " columns: " + (yycolumn + 1) + " - " + ((yycolumn + 1) + yylength() - 1); 
                                                                    }
                                                                 }
// INTs
{D}+	                                                         { return "INTEGER: " + yytext() + " in line: " + (yyline + 1) + " columns: " + (yycolumn + 1) + " - " + ((yycolumn + 1) + yylength() - 1); }

// FLOATs
[-+]?[0-9]+"."|[-+]?[0-9]+"."([0-9]+|("E"|"e")[-+]?[0-9]+|[0-9]+("E"|"e")[-+]?[0-9]+) { return "FLOAT: " + yytext() + " in line: " + (yyline + 1) + " columns: " + (yycolumn + 1) + " - " + ((yycolumn + 1) + yylength() - 1); }

// LINE COUNTER
[ \n]                                                            { /*lleva la cuenta de lineas*/ }

// WHITESPACEs TABs BRAKELINEs NEWLINEs
[\s]+                                                            { /*se ignoran los espacios y tabuladores*/ }

//UNFINISHED COMMENTs
{UNFINISHED_COMMENT}                                            { return "Unfinished comment " + yytext() + " found in line: " + (yyline + 1) + " columns: " + (yycolumn + 1) + " - " + ((yycolumn + 1) + yylength() - 1); }

//MULTILINE COMMENTs
{MULTILINE_COMMENT}                                              { /*se ignoran los comentarios de bloque*/ }

//SINGLELINE COMMENTs
{SINGLELINE_COMMENT}                                             { /*se ignoran los comentarios de linea*/ }

// ERRORs
.	                                                         { lexeme = yytext(); line = (yyline + 1); column = (yycolumn + 1); length = yylength(); return "Lexical error:"; }