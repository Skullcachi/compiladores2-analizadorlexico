package analizadorlexico;
import java.io.*;
import java_cup.runtime.*;
%%

%public

%class Yylex

%unicode

%line

%column

%cup

%type Symbol

MULTILINE_COMMENT = "/*" ~"*/" | "/*" "*"+ "/"

UNFINISHED_COMMENT = "/*" [^*\n]+

//SINGLELINE_COMMENT = "//" [^\r\n]* [\r|\n|\r\n]?
SINGLELINE_COMMENT = "--" [^\r\n]* [\r|\n|\r\n]?


//RESERVED_WORDS = "ABSOLUTE"|"ACTION"|"ADA"|"ADD"|"ALL"|"ALLOCATE"|"ALTER"|"AND"|"ANY"|"ARE"|"AS"|"ASC"|"ASSERTION"|"AT"|"AUTHORIZATION"|"AVG"|"BACKUP"|"BEGIN"|"BETWEEN"|"BIT"|"BIT_LENGTH"|"BOTH"|"BREAK"|"BROWSE"|"BULK"|"BY"|"CASCADE"|"CASCADED"|"CASE"|"CAST"|"CATALOG"|"CHAR"|"CHAR_LENGTH"|"CHARACTER"|"CHARACTER_LENGTH"|"CHECK"|"CHECKPOINT"|"CLOSE"|"CLUSTERED"|"COALESCE"|"COLLATE"|"COLLATION"|"COLUMN"|"COMMIT"|"COMPUTE"|"CONNECT"|"CONNECTION"|"CONSTRAINT"|"CONSTRAINTS"|"CONTAINS"|"CONTAINSTABLE"|"CONTINUE"|"CONVERT"|"CORRESPONDING"|"COUNT"|"CREATE"|"CROSS"|"CURRENT"|"CURRENT_DATE"|"CURRENT_TIME"|"CURRENT_TIMESTAMP"|"CURRENT_USER"|"CURSOR"|"DATABASE"|"DATE"|"DAY"|"DBCC"|"DEALLOCATE"|"DEC"|"DECIMAL"|"DECLARE"|"DEFAULT"|"DEFERRABLE"|"DEFERRED"|"DELETE"|"DENY"|"DESC"|"DESCRIBE"|"DESCRIPTOR"|"DIAGNOSTICS"|"DISCONNECT"|"DISK"|"DISTINCT"|"DISTRIBUTED"|"DOMAIN"|"DOUBLE"|"DROP"|"DUMP"|"ELSE"|"END"|"END-EXEC"|"ERRLVL"|"ESCAPE"|"EXCEPT"|"EXCEPTION"|"EXEC"|"EXECUTE"|"EXISTS"|"EXIT"|"EXTERNAL"|"EXTRACT"|"FALSE"|"FETCH"|"FILE"|"FILLFACTOR"|"FIRST"|"FLOAT"|"FOR"|"FOREIGN"|"FORTRAN"|"FOUND"|"FREETEXT"|"FREETEXTTABLE"|"FROM"|"FULL"|"FUNCTION"|"GET"|"GLOBAL"|"GO"|"GOTO"|"GRANT"|"GROUP"|"HAVING"|"HOLDLOCK"|"HOUR"|"IDENTITY"|"IDENTITY_INSERT"|"IDENTITYCOL"|"IF"|"IMMEDIATE"|"IN"|"INCLUDE"|"INDEX"|"INDICATOR"|"INITIALLY"|"INNER"|"INPUT"|"INSENSITIVE"|"INSERT"|"INT"|"INTEGER"|"INTERSECT"|"INTERVAL"|"INTO"|"IS"|"ISOLATION"|"JOIN"|"KEY"|"KILL"|"LANGUAGE"|"LAST"|"LEADING"|"LEFT"|"LEVEL"|"LIKE"|"LINENO"|"LOAD"|"LOCAL"|"LOWER"|"MATCH"|"MAX"|"MERGE"|"MIN"|"MINUTE"|"MODULE"|"MONTH"|"NAMES"|"NATIONAL"|"NATURAL"|"NCHAR"|"NEXT"|"NO"|"NOCHECK"|"NONCLUSTERED"|"NONE"|"NOT"|"NULL"|"NULLIF"|"NUMERIC"|"OCTET_LENGTH"|"OF"|"OFF"|"OFFSETS"|"ON"|"ONLY"|"OPEN"|"OPENDATASOURCE"|"OPENQUERY"|"OPENROWSET"|"OPENXML"|"OPTION"|"OR"|"ORDER"|"OUTER"|"OUTPUT"|"OVER"|"OVERLAPS"|"PAD"|"PARTIAL"|"PASCAL"|"PERCENT"|"PIVOT"|"PLAN"|"POSITION"|"PRECISION"|"PREPARE"|"PRESERVE"|"PRIMARY"|"PRINT"|"PRIOR"|"PRIVILEGES"|"PROC"|"PROCEDURE"|"PUBLIC"|"RAISERROR"|"READ"|"READTEXT"|"REAL"|"RECONFIGURE"|"REFERENCES"|"RELATIVE"|"REPLICATION"|"RESTORE"|"RESTRICT"|"RETURN"|"REVERT"|"REVOKE"|"RIGHT"|"ROLLBACK"|"ROWCOUNT"|"ROWGUIDCOL"|"ROWS"|"RULE"|"SAVE"|"SCHEMA"|"SCROLL"|"SECOND"|"SECTION"|"SECURITYAUDIT"|"SELECT"|"SEMANTICKEYPHRASETABLE"|"SEMANTICSIMILARITYDETAILSTABLE"|"SEMANTICSIMILARITYTABLE"|"SESSION"|"SESSION_USER"|"SET"|"SETUSER"|"SHUTDOWN"|"SIZE"|"SMALLINT"|"SOME"|"SPACE"|"SQL"|"SQLCA"|"SQLCODE"|"SQLERROR"|"SQLSTATE"|"SQLWARNING"|"STATISTICS"|"SUBSTRING"|"SUM"|"SYSTEM_USER"|"TABLE"|"TABLESAMPLE"|"TEMPORARY"|"TEXTSIZE"|"THEN"|"TIME"|"TIMESTAMP"|"TIMEZONE_HOUR"|"TIMEZONE_MINUTE"|"TO"|"TOP"|"TRAILING"|"TRAN"|"TRANSACTION"|"TRANSLATE"|"TRANSLATION"|"TRIGGER"|"TRIM"|"TRUE"|"TRUNCATE"|"TRY_CONVERT"|"TSEQUAL"|"UNION"|"UNIQUE"|"UNKNOWN"|"UNPIVOT"|"UPDATE"|"UPDATETEXT"|"UPPER"|"USAGE"|"USE"|"USER"|"USING"|"VALUE"|"VALUES"|"VARCHAR"|"VARYING"|"VIEW"|"WAITFOR"|"WHEN"|"WHENEVER"|"WHERE"|"WHILE"|"WITH"|"WITHIN GROUP"|"WORK"|"WRITE"|"WRITETEXT"|"YEAR"|"ZONE"
ABSOLUTE = "ABSOLUTE"
ACTION = "ACTION"
ADA = "ADA"
ADD = "ADD"
ALL = "ALL"
ALLOCATE = "ALLOCATE"
ALTER = "ALTER"
AND = "AND"
ANY = "ANY"
ARE = "ARE"
AS = "AS"
ASC = "ASC"
ASSERTION = "ASSERTION"
AT = "AT"
AUTHORIZATION = "AUTHORIZATION"
AVG = "AVG"
BACKUP = "BACKUP"
BEGIN = "BEGIN"
BETWEEN = "BETWEEN"
BIT = "BIT"
BIT_LENGTH = "BIT_LENGTH"
BOTH = "BOTH"
BREAK = "BREAK"
BROWSE = "BROWSE"
BULK = "BULK"
BY = "BY"
CASCADE = "CASCADE"
CASCADED = "CASCADED"
CASE = "CASE"
CAST = "CAST"
CATALOG = "CATALOG"
CHAR = "CHAR"
CHAR_LENGTH = "CHAR_LENGTH"
CHARACTER = "CHARACTER"
CHARACTER_LENGTH = "CHARACTER_LENGTH"
CHECK = "CHECK"
CHECKPOINT = "CHECKPOINT"
CLOSE = "CLOSE"
CLUSTERED = "CLUSTERED"
COALESCE = "COALESCE"
COLLATE = "COLLATE"
COLLATION = "COLLATION"
COLUMN = "COLUMN"
COMMIT = "COMMIT"
COMPUTE = "COMPUTE"
CONNECT = "CONNECT"
CONNECTION = "CONNECTION"
CONSTRAINT = "CONSTRAINT"
CONSTRAINTS = "CONSTRAINTS"
CONTAINS = "CONTAINS"
CONTAINSTABLE = "CONTAINSTABLE"
CONTINUE = "CONTINUE"
CONVERT = "CONVERT"
CORRESPONDING = "CORRESPONDING"
COUNT = "COUNT"
CREATE = "CREATE"
CROSS = "CROSS"
CURRENT = "CURRENT"
CURRENT_DATE = "CURRENT_DATE"
CURRENT_TIME = "CURRENT_TIME"
CURRENT_TIMESTAMP = "CURRENT_TIMESTAMP"
CURRENT_USER = "CURRENT_USER"
CURSOR = "CURSOR"
DATABASE = "DATABASE"
DATE = "DATE"
DAY = "DAY"
DBCC = "DBCC"
DEALLOCATE = "DEALLOCATE"
DEC = "DEC"
DECIMAL = "DECIMAL"
DECLARE = "DECLARE"
DEFAULT = "DEFAULT"
DEFERRABLE = "DEFERRABLE"
DEFERRED = "DEFERRED"
DELETE = "DELETE"
DENY = "DENY"
DESC = "DESC"
DESCRIBE = "DESCRIBE"
DESCRIPTOR = "DESCRIPTOR"
DIAGNOSTICS = "DIAGNOSTICS"
DISCONNECT = "DISCONNECT"
DISK = "DISK"
DISTINCT = "DISTINCT"
DISTRIBUTED = "DISTRIBUTED"
DOMAIN = "DOMAIN"
DOUBLE = "DOUBLE"
DROP = "DROP"
DUMP = "DUMP"
ELSE = "ELSE"
END = "END"
END_EXEC = "END-EXEC"
ERRLVL = "ERRLVL"
ESCAPE = "ESCAPE"
EXCEPT = "EXCEPT"
EXCEPTION = "EXCEPTION"
EXEC = "EXEC"
EXECUTE = "EXECUTE"
EXISTS = "EXISTS"
EXIT = "EXIT"
EXTERNAL = "EXTERNAL"
EXTRACT = "EXTRACT"
FALSE = "FALSE"
FETCH = "FETCH"
FILE = "FILE"
FILLFACTOR = "FILLFACTOR"
FIRST = "FIRST"
FLOAT = "FLOAT"
FOR = "FOR"
FOREIGN = "FOREIGN"
FORTRAN = "FORTRAN"
FOUND = "FOUND"
FREETEXT = "FREETEXT"
FREETEXTTABLE = "FREETEXTTABLE"
FROM = "FROM"
FULL = "FULL"
FUNCTION = "FUNCTION"
GET = "GET"
GLOBAL = "GLOBAL"
GO = "GO"
GOTO = "GOTO"
GRANT = "GRANT"
GROUP = "GROUP"
HAVING = "HAVING"
HOLDLOCK = "HOLDLOCK"
HOUR = "HOUR"
IDENTITY = "IDENTITY"
IDENTITY_INSERT = "IDENTITY_INSERT"
IDENTITYCOL = "IDENTITYCOL"
IF = "IF"
IMMEDIATE = "IMMEDIATE"
IN = "IN"
INCLUDE = "INCLUDE"
INDEX = "INDEX"
INDICATOR = "INDICATOR"
INITIALLY = "INITIALLY"
INNER = "INNER"
INPUT = "INPUT"
INSENSITIVE = "INSENSITIVE"
INSERT = "INSERT"
INT = "INT"
INTEGER = "INTEGER"
INTERSECT = "INTERSECT"
INTERVAL = "INTERVAL"
INTO = "INTO"
IS = "IS"
ISOLATION = "ISOLATION"
JOIN = "JOIN"
KEY = "KEY"
KILL = "KILL"
LANGUAGE = "LANGUAGE"
LAST = "LAST"
LEADING = "LEADING"
LEFT = "LEFT"
LEVEL = "LEVEL"
LIKE = "LIKE"
LINENO = "LINENO"
LOAD = "LOAD"
LOCAL = "LOCAL"
LOWER = "LOWER"
MATCH = "MATCH"
MAX = "MAX"
MERGE = "MERGE"
MIN = "MIN"
MINUTE = "MINUTE"
MODULE = "MODULE"
MONTH = "MONTH"
NAMES = "NAMES"
NATIONAL = "NATIONAL"
NATURAL = "NATURAL"
NCHAR = "NCHAR"
NEXT = "NEXT"
NO = "NO"
NOCHECK = "NOCHECK"
NONCLUSTERED = "NONCLUSTERED"
NONE = "NONE"
NOT = "NOT"
NULL = "NULL"
NULLIF = "NULLIF"
NUMERIC = "NUMERIC"
OCTET_LENGTH = "OCTET_LENGTH"
OF = "OF"
OFF = "OFF"
OFFSETS = "OFFSETS"
ON = "ON"
ONLY = "ONLY"
OPEN = "OPEN"
OPENDATASOURCE = "OPENDATASOURCE"
OPENQUERY = "OPENQUERY"
OPENROWSET = "OPENROWSET"
OPENXML = "OPENXML"
OPTION = "OPTION"
OR = "OR"
ORDER = "ORDER"
OUTER = "OUTER"
OUTPUT = "OUTPUT"
OVER = "OVER"
OVERLAPS = "OVERLAPS"
PAD = "PAD"
PARTIAL = "PARTIAL"
PASCAL = "PASCAL"
PERCENT = "PERCENT"
PIVOT = "PIVOT"
PLAN = "PLAN"
POSITION = "POSITION"
PRECISION = "PRECISION"
PREPARE = "PREPARE"
PRESERVE = "PRESERVE"
PRIMARY = "PRIMARY"
PRINT = "PRINT"
PRIOR = "PRIOR"
PRIVILEGES = "PRIVILEGES"
PROC = "PROC"
PROCEDURE = "PROCEDURE"
PUBLIC = "PUBLIC"
RAISERROR = "RAISERROR"
READ = "READ"
READTEXT = "READTEXT"
REAL = "REAL"
RECONFIGURE = "RECONFIGURE"
REFERENCES = "REFERENCES"
RELATIVE = "RELATIVE"
REPLICATION = "REPLICATION"
RESTORE = "RESTORE"
RESTRICT = "RESTRICT"
RETURN = "RETURN"
RETURNS = "RETURNS"
REVERT = "REVERT"
REVOKE = "REVOKE"
RIGHT = "RIGHT"
ROLLBACK = "ROLLBACK"
ROWCOUNT = "ROWCOUNT"
ROWGUIDCOL = "ROWGUIDCOL"
ROWS = "ROWS"
RULE = "RULE"
SAVE = "SAVE"
SCHEMA = "SCHEMA"
SCROLL = "SCROLL"
SECOND = "SECOND"
SECTION = "SECTION"
SECURITYAUDIT = "SECURITYAUDIT"
SELECT = "SELECT"
SEMANTICKEYPHRASETABLE = "SEMANTICKEYPHRASETABLE"
SEMANTICSIMILARITYDETAILSTABLE = "SEMANTICSIMILARITYDETAILSTABLE"
SEMANTICSIMILARITYTABLE = "SEMANTICSIMILARITYTABLE"
SESSION = "SESSION"
SESSION_USER = "SESSION_USER"
SET = "SET"
SETUSER = "SETUSER"
SHUTDOWN = "SHUTDOWN"
SIZE = "SIZE"
SMALLINT = "SMALLINT"
SOME = "SOME"
SPACE = "SPACE"
SQL = "SQL"
SQLCA = "SQLCA"
SQLCODE = "SQLCODE"
SQLERROR = "SQLERROR"
SQLSTATE = "SQLSTATE"
SQLWARNING = "SQLWARNING"
STATISTICS = "STATISTICS"
SUBSTRING = "SUBSTRING"
SUM = "SUM"
SYSTEM_USER = "SYSTEM_USER"
TABLE = "TABLE"
TABLESAMPLE = "TABLESAMPLE"
TEMPORARY = "TEMPORARY"
TEXTSIZE = "TEXTSIZE"
THEN = "THEN"
TIME = "TIME"
TIMESTAMP = "TIMESTAMP"
TIMEZONE_HOUR = "TIMEZONE_HOUR"
TIMEZONE_MINUTE = "TIMEZONE_MINUTE"
TO = "TO"
TOP = "TOP"
TRAILING = "TRAILING"
TRAN = "TRAN"
TRANSACTION = "TRANSACTION"
TRANSLATE = "TRANSLATE"
TRANSLATION = "TRANSLATION"
TRIGGER = "TRIGGER"
TRIM = "TRIM"
TRUE = "TRUE"
TRUNCATE = "TRUNCATE"
TRY_CONVERT = "TRY_CONVERT"
TSEQUAL = "TSEQUAL"
UNION = "UNION"
UNIQUE = "UNIQUE"
UNKNOWN = "UNKNOWN"
UNPIVOT = "UNPIVOT"
UPDATE = "UPDATE"
UPDATETEXT = "UPDATETEXT"
UPPER = "UPPER"
USAGE = "USAGE"
USE = "USE"
USER = "USER"
USING = "USING"
VALUE = "VALUE"
VALUES = "VALUES"
VARCHAR = "VARCHAR"
VARYING = "VARYING"
VIEW = "VIEW"
WAITFOR = "WAITFOR"
WHEN = "WHEN"
WHENEVER = "WHENEVER"
WHERE = "WHERE"
WHILE = "WHILE"
WITH = "WITH"
WITHIN_GROUP = "WITHIN GROUP"
WORK = "WORK"
WRITE = "WRITE"
WRITETEXT = "WRITETEXT"
YEAR = "YEAR"
ZONE = "ZONE"
ENCRYPTION = "ENCRYPTION"
RECOMPILE = "RECOMPILE"
OUT = "OUT"
RETURNS = "RETURNS"

//OPERATORS_OR_PUNTUATION_MARKS = "+" | "-" | "*" | "/" | "%" | "<" | "<=" | ">" | ">=" | "=" | "==" | "!=" | "&&" | "||" | "!" | ";" | "," | "." | "[" | "]" | "(" | ")" | "{" | "}" | "[]" | "()" | "{}" | "@" | "#" | "##"
OP_SUMA =  "+" 
OP_RESTA =  "-" 
OP_MULTIPLICACION =  "*" 
OP_DIVISION =  "/" 
OP_PORCENTAJE =  "%" 
OP_MENOR =  "<" 
OP_MENORIGUAL =  "<=" 
OP_MAYOR =  ">" 
OP_MAYORIGUAL =  ">=" 
OP_ASIGNAR =  "=" 
OP_IGUAL =  "==" 
OP_DIFERENTE =  "!=" 
OP_AND =  "&&" 
OP_OR =  "||"
OP_NEGACION =  "!" 
OP_PUNTOYCOMA =  ";" 
OP_COMA =  "," 
OP_PUNTO =  "." 
OP_CORCHETE_IZQ =  "[" 
OP_CORCHETE_DER =  "]" 
OP_PARENTESIS_IZQ =  "(" 
OP_PARENTESIS_DER =  ")" 
OP_LLAVE_IZQ =  "{" 
OP_LLAVE_DER =  "}" 
OP_CORCHETES =  "[]" 
OP_PARENTESIS =  "()" 
OP_LLAVES =  "{}" 
OP_ARROBA =  "@" 
OP_NUMERAL =  "#" 
OP_DOBLE_NUMERAL =  "##"


D = [0-9]

L = [a-zA-Z_]

%{
    public String lexeme;
    public int line;
    public int column;
    public int length;

    private Symbol symbol(int type){
        return new Symbol(type, yyline, yycolumn);
    }

    private Symbol symbol(int type, Object value){
        return new Symbol(type, yyline, yycolumn, value);
    }
%}
%%
// OPERATOR_OR_PUNTUATION_MARKs
//{OPERATORS_OR_PUNTUATION_MARKS}                                  { return "OPERATOR OR PUNTATION MARK: " + yytext() + " in line: " + (yyline + 1) + " columns: " + (yycolumn + 1) + " - " + ((yycolumn + 1) + yylength() - 1); }

{OP_SUMA} { return symbol(sym.OP_SUMA, yytext()); } 
{OP_RESTA} { return symbol(sym.OP_RESTA, yytext()); } 
{OP_MULTIPLICACION} { return symbol(sym.OP_MULTIPLICACION, yytext()); } 
{OP_DIVISION} { return symbol(sym.OP_DIVISION, yytext()); } 
{OP_PORCENTAJE} { return symbol(sym.OP_PORCENTAJE, yytext()); } 
{OP_MENOR} { return symbol(sym.OP_MENOR, yytext()); } 
{OP_MENORIGUAL} { return symbol(sym.OP_MENORIGUAL, yytext()); } 
{OP_MAYOR} { return symbol(sym.OP_MAYOR, yytext()); } 
{OP_MAYORIGUAL} { return symbol(sym.OP_MAYORIGUAL, yytext()); } 
{OP_ASIGNAR} { return symbol(sym.OP_ASIGNAR, yytext()); } 
{OP_IGUAL} { return symbol(sym.OP_IGUAL, yytext()); } 
{OP_DIFERENTE} { return symbol(sym.OP_DIFERENTE, yytext()); } 
{OP_AND} { return symbol(sym.OP_AND, yytext()); } 
{OP_OR} { return symbol(sym.OP_OR, yytext()); } 
{OP_NEGACION} { return symbol(sym.OP_NEGACION, yytext()); } 
{OP_PUNTOYCOMA} { return symbol(sym.OP_PUNTOYCOMA, yytext()); } 
{OP_COMA} { return symbol(sym.OP_COMA, yytext()); } 
{OP_PUNTO} { return symbol(sym.OP_PUNTO, yytext()); } 
{OP_CORCHETE_IZQ} { return symbol(sym.OP_CORCHETE_IZQ, yytext()); } 
{OP_CORCHETE_DER} { return symbol(sym.OP_CORCHETE_DER, yytext()); } 
{OP_PARENTESIS_IZQ} { return symbol(sym.OP_PARENTESIS_IZQ, yytext()); } 
{OP_PARENTESIS_DER} { return symbol(sym.OP_PARENTESIS_DER, yytext()); } 
{OP_LLAVE_IZQ} { return symbol(sym.OP_LLAVE_IZQ, yytext()); } 
{OP_LLAVE_DER} { return symbol(sym.OP_LLAVE_DER, yytext()); } 
{OP_CORCHETES} { return symbol(sym.OP_CORCHETES, yytext()); } 
{OP_PARENTESIS} { return symbol(sym.OP_PARENTESIS, yytext()); } 
{OP_LLAVES} { return symbol(sym.OP_LLAVES, yytext()); } 
{OP_ARROBA} { return symbol(sym.OP_ARROBA, yytext()); } 
{OP_NUMERAL} { return symbol(sym.OP_NUMERAL, yytext()); } 
{OP_DOBLE_NUMERAL} { return symbol(sym.OP_DOBLE_NUMERAL, yytext()); }

// UNFINISHED_STRING
//['][^'\n]*|[´][^´\n]*                                             { 
//                                                                        //return "ERROR, malformed STRING: " + yytext() + " in line: " + (yyline + 1) + " columns: " + (yycolumn + 1) + " - " + ((yycolumn + 1) + yylength() - 1);
//                                                                        lexeme = yytext();
//                                                                        System.out.print("ERROR, malformed STRING " + lexeme + " found in line: " + (yyline + 1) + " columns: " + (yycolumn + 1) + " - " + ((yycolumn + 1) + yylength() - 1));
//                                                                    }

// STRINGs
[´][^´\n]*[´]|['][^'\n]*[']                                      { return symbol(sym.STRING, yytext()); }

// RESERVED_WORDs
//{RESERVED_WORDS}                                                 { return "RESERVED: " + yytext() + " in line: " + (yyline + 1) + " columns: " + (yycolumn + 1) + " - " + ((yycolumn + 1) + yylength() - 1); }
{ABSOLUTE} {return symbol(sym.ABSOLUTE, new String("RESERVED WORD: " + yytext()));}
{ACTION} {return symbol(sym.ACTION, new String("RESERVED WORD: " + yytext()));}
{ADA} {return symbol(sym.ADA, new String("RESERVED WORD: " + yytext()));}
{ADD} {return symbol(sym.ADD, new String("RESERVED WORD: " + yytext()));}
{ALL} {return symbol(sym.ALL, new String("RESERVED WORD: " + yytext()));}
{ALLOCATE} {return symbol(sym.ALLOCATE, new String("RESERVED WORD: " + yytext()));}
{ALTER} {return symbol(sym.ALTER, new String("RESERVED WORD: " + yytext()));}
{AND} {return symbol(sym.AND, new String("RESERVED WORD: " + yytext()));}
{ANY} {return symbol(sym.ANY, new String("RESERVED WORD: " + yytext()));}
{ARE} {return symbol(sym.ARE, new String("RESERVED WORD: " + yytext()));}
{AS} {return symbol(sym.AS, new String("RESERVED WORD: " + yytext()));}
{ASC} {return symbol(sym.ASC, new String("RESERVED WORD: " + yytext()));}
{ASSERTION} {return symbol(sym.ASSERTION, new String("RESERVED WORD: " + yytext()));}
{AT} {return symbol(sym.AT, new String("RESERVED WORD: " + yytext()));}
{AUTHORIZATION} {return symbol(sym.AUTHORIZATION, new String("RESERVED WORD: " + yytext()));}
{AVG} {return symbol(sym.AVG, new String("RESERVED WORD: " + yytext()));}
{BACKUP} {return symbol(sym.BACKUP, new String("RESERVED WORD: " + yytext()));}
{BEGIN} {return symbol(sym.BEGIN, new String("RESERVED WORD: " + yytext()));}
{BETWEEN} {return symbol(sym.BETWEEN, new String("RESERVED WORD: " + yytext()));}
{BIT} {return symbol(sym.BIT, new String("RESERVED WORD: " + yytext()));}
{BIT_LENGTH} {return symbol(sym.BIT_LENGTH, new String("RESERVED WORD: " + yytext()));}
{BOTH} {return symbol(sym.BOTH, new String("RESERVED WORD: " + yytext()));}
{BREAK} {return symbol(sym.BREAK, new String("RESERVED WORD: " + yytext()));}
{BROWSE} {return symbol(sym.BROWSE, new String("RESERVED WORD: " + yytext()));}
{BULK} {return symbol(sym.BULK, new String("RESERVED WORD: " + yytext()));}
{BY} {return symbol(sym.BY, new String("RESERVED WORD: " + yytext()));}
{CASCADE} {return symbol(sym.CASCADE, new String("RESERVED WORD: " + yytext()));}
{CASCADED} {return symbol(sym.CASCADED, new String("RESERVED WORD: " + yytext()));}
{CASE} {return symbol(sym.CASE, new String("RESERVED WORD: " + yytext()));}
{CAST} {return symbol(sym.CAST, new String("RESERVED WORD: " + yytext()));}
{CATALOG} {return symbol(sym.CATALOG, new String("RESERVED WORD: " + yytext()));}
{CHAR} {return symbol(sym.CHAR, new String("RESERVED WORD: " + yytext()));}
{CHAR_LENGTH} {return symbol(sym.CHAR_LENGTH, new String("RESERVED WORD: " + yytext()));}
{CHARACTER} {return symbol(sym.CHARACTER, new String("RESERVED WORD: " + yytext()));}
{CHARACTER_LENGTH} {return symbol(sym.CHARACTER_LENGTH, new String("RESERVED WORD: " + yytext()));}
{CHECK} {return symbol(sym.CHECK, new String("RESERVED WORD: " + yytext()));}
{CHECKPOINT} {return symbol(sym.CHECKPOINT, new String("RESERVED WORD: " + yytext()));}
{CLOSE} {return symbol(sym.CLOSE, new String("RESERVED WORD: " + yytext()));}
{CLUSTERED} {return symbol(sym.CLUSTERED, new String("RESERVED WORD: " + yytext()));}
{COALESCE} {return symbol(sym.COALESCE, new String("RESERVED WORD: " + yytext()));}
{COLLATE} {return symbol(sym.COLLATE, new String("RESERVED WORD: " + yytext()));}
{COLLATION} {return symbol(sym.COLLATION, new String("RESERVED WORD: " + yytext()));}
{COLUMN} {return symbol(sym.COLUMN, new String("RESERVED WORD: " + yytext()));}
{COMMIT} {return symbol(sym.COMMIT, new String("RESERVED WORD: " + yytext()));}
{COMPUTE} {return symbol(sym.COMPUTE, new String("RESERVED WORD: " + yytext()));}
{CONNECT} {return symbol(sym.CONNECT, new String("RESERVED WORD: " + yytext()));}
{CONNECTION} {return symbol(sym.CONNECTION, new String("RESERVED WORD: " + yytext()));}
{CONSTRAINT} {return symbol(sym.CONSTRAINT, new String("RESERVED WORD: " + yytext()));}
{CONSTRAINTS} {return symbol(sym.CONSTRAINTS, new String("RESERVED WORD: " + yytext()));}
{CONTAINS} {return symbol(sym.CONTAINS, new String("RESERVED WORD: " + yytext()));}
{CONTAINSTABLE} {return symbol(sym.CONTAINSTABLE, new String("RESERVED WORD: " + yytext()));}
{CONTINUE} {return symbol(sym.CONTINUE, new String("RESERVED WORD: " + yytext()));}
{CONVERT} {return symbol(sym.CONVERT, new String("RESERVED WORD: " + yytext()));}
{CORRESPONDING} {return symbol(sym.CORRESPONDING, new String("RESERVED WORD: " + yytext()));}
{COUNT} {return symbol(sym.COUNT, new String("RESERVED WORD: " + yytext()));}
{CREATE} {return symbol(sym.CREATE, new String("RESERVED WORD: " + yytext()));}
{CROSS} {return symbol(sym.CROSS, new String("RESERVED WORD: " + yytext()));}
{CURRENT} {return symbol(sym.CURRENT, new String("RESERVED WORD: " + yytext()));}
{CURRENT_DATE} {return symbol(sym.CURRENT_DATE, new String("RESERVED WORD: " + yytext()));}
{CURRENT_TIME} {return symbol(sym.CURRENT_TIME, new String("RESERVED WORD: " + yytext()));}
{CURRENT_TIMESTAMP} {return symbol(sym.CURRENT_TIMESTAMP, new String("RESERVED WORD: " + yytext()));}
{CURRENT_USER} {return symbol(sym.CURRENT_USER, new String("RESERVED WORD: " + yytext()));}
{CURSOR} {return symbol(sym.CURSOR, new String("RESERVED WORD: " + yytext()));}
{DATABASE} {return symbol(sym.DATABASE, new String("RESERVED WORD: " + yytext()));}
{DATE} {return symbol(sym.DATE, new String("RESERVED WORD: " + yytext()));}
{DAY} {return symbol(sym.DAY, new String("RESERVED WORD: " + yytext()));}
{DBCC} {return symbol(sym.DBCC, new String("RESERVED WORD: " + yytext()));}
{DEALLOCATE} {return symbol(sym.DEALLOCATE, new String("RESERVED WORD: " + yytext()));}
{DEC} {return symbol(sym.DEC, new String("RESERVED WORD: " + yytext()));}
{DECIMAL} {return symbol(sym.DECIMAL, new String("RESERVED WORD: " + yytext()));}
{DECLARE} {return symbol(sym.DECLARE, new String("RESERVED WORD: " + yytext()));}
{DEFAULT} {return symbol(sym.DEFAULT, new String("RESERVED WORD: " + yytext()));}
{DEFERRABLE} {return symbol(sym.DEFERRABLE, new String("RESERVED WORD: " + yytext()));}
{DEFERRED} {return symbol(sym.DEFERRED, new String("RESERVED WORD: " + yytext()));}
{DELETE} {return symbol(sym.DELETE, new String("RESERVED WORD: " + yytext()));}
{DENY} {return symbol(sym.DENY, new String("RESERVED WORD: " + yytext()));}
{DESC} {return symbol(sym.DESC, new String("RESERVED WORD: " + yytext()));}
{DESCRIBE} {return symbol(sym.DESCRIBE, new String("RESERVED WORD: " + yytext()));}
{DESCRIPTOR} {return symbol(sym.DESCRIPTOR, new String("RESERVED WORD: " + yytext()));}
{DIAGNOSTICS} {return symbol(sym.DIAGNOSTICS, new String("RESERVED WORD: " + yytext()));}
{DISCONNECT} {return symbol(sym.DISCONNECT, new String("RESERVED WORD: " + yytext()));}
{DISK} {return symbol(sym.DISK, new String("RESERVED WORD: " + yytext()));}
{DISTINCT} {return symbol(sym.DISTINCT, new String("RESERVED WORD: " + yytext()));}
{DISTRIBUTED} {return symbol(sym.DISTRIBUTED, new String("RESERVED WORD: " + yytext()));}
{DOMAIN} {return symbol(sym.DOMAIN, new String("RESERVED WORD: " + yytext()));}
{DOUBLE} {return symbol(sym.DOUBLE, new String("RESERVED WORD: " + yytext()));}
{DROP} {return symbol(sym.DROP, new String("RESERVED WORD: " + yytext()));}
{DUMP} {return symbol(sym.DUMP, new String("RESERVED WORD: " + yytext()));}
{ELSE} {return symbol(sym.ELSE, new String("RESERVED WORD: " + yytext()));}
{END} {return symbol(sym.END, new String("RESERVED WORD: " + yytext()));}
{END_EXEC} {return symbol(sym.END_EXEC, new String("RESERVED WORD: " + yytext()));}
{ERRLVL} {return symbol(sym.ERRLVL, new String("RESERVED WORD: " + yytext()));}
{ESCAPE} {return symbol(sym.ESCAPE, new String("RESERVED WORD: " + yytext()));}
{EXCEPT} {return symbol(sym.EXCEPT, new String("RESERVED WORD: " + yytext()));}
{EXCEPTION} {return symbol(sym.EXCEPTION, new String("RESERVED WORD: " + yytext()));}
{EXEC} {return symbol(sym.EXEC, new String("RESERVED WORD: " + yytext()));}
{EXECUTE} {return symbol(sym.EXECUTE, new String("RESERVED WORD: " + yytext()));}
{EXISTS} {return symbol(sym.EXISTS, new String("RESERVED WORD: " + yytext()));}
{EXIT} {return symbol(sym.EXIT, new String("RESERVED WORD: " + yytext()));}
{EXTERNAL} {return symbol(sym.EXTERNAL, new String("RESERVED WORD: " + yytext()));}
{EXTRACT} {return symbol(sym.EXTRACT, new String("RESERVED WORD: " + yytext()));}
{FALSE} {return symbol(sym.FALSE, new String("RESERVED WORD: " + yytext()));}
{FETCH} {return symbol(sym.FETCH, new String("RESERVED WORD: " + yytext()));}
{FILE} {return symbol(sym.FILE, new String("RESERVED WORD: " + yytext()));}
{FILLFACTOR} {return symbol(sym.FILLFACTOR, new String("RESERVED WORD: " + yytext()));}
{FIRST} {return symbol(sym.FIRST, new String("RESERVED WORD: " + yytext()));}
{FLOAT} {return symbol(sym.FLOAT, new String("RESERVED WORD: " + yytext()));}
{FOR} {return symbol(sym.FOR, new String("RESERVED WORD: " + yytext()));}
{FOREIGN} {return symbol(sym.FOREIGN, new String("RESERVED WORD: " + yytext()));}
{FORTRAN} {return symbol(sym.FORTRAN, new String("RESERVED WORD: " + yytext()));}
{FOUND} {return symbol(sym.FOUND, new String("RESERVED WORD: " + yytext()));}
{FREETEXT} {return symbol(sym.FREETEXT, new String("RESERVED WORD: " + yytext()));}
{FREETEXTTABLE} {return symbol(sym.FREETEXTTABLE, new String("RESERVED WORD: " + yytext()));}
{FROM} {return symbol(sym.FROM, new String("RESERVED WORD: " + yytext()));}
{FULL} {return symbol(sym.FULL, new String("RESERVED WORD: " + yytext()));}
{FUNCTION} {return symbol(sym.FUNCTION, new String("RESERVED WORD: " + yytext()));}
{GET} {return symbol(sym.GET, new String("RESERVED WORD: " + yytext()));}
{GLOBAL} {return symbol(sym.GLOBAL, new String("RESERVED WORD: " + yytext()));}
{GO} {return symbol(sym.GO, new String("RESERVED WORD: " + yytext()));}
{GOTO} {return symbol(sym.GOTO, new String("RESERVED WORD: " + yytext()));}
{GRANT} {return symbol(sym.GRANT, new String("RESERVED WORD: " + yytext()));}
{GROUP} {return symbol(sym.GROUP, new String("RESERVED WORD: " + yytext()));}
{HAVING} {return symbol(sym.HAVING, new String("RESERVED WORD: " + yytext()));}
{HOLDLOCK} {return symbol(sym.HOLDLOCK, new String("RESERVED WORD: " + yytext()));}
{HOUR} {return symbol(sym.HOUR, new String("RESERVED WORD: " + yytext()));}
{IDENTITY} {return symbol(sym.IDENTITY, new String("RESERVED WORD: " + yytext()));}
{IDENTITY_INSERT} {return symbol(sym.IDENTITY_INSERT, new String("RESERVED WORD: " + yytext()));}
{IDENTITYCOL} {return symbol(sym.IDENTITYCOL, new String("RESERVED WORD: " + yytext()));}
{IF} {return symbol(sym.IF, new String("RESERVED WORD: " + yytext()));}
{IMMEDIATE} {return symbol(sym.IMMEDIATE, new String("RESERVED WORD: " + yytext()));}
{IN} {return symbol(sym.IN, new String("RESERVED WORD: " + yytext()));}
{INCLUDE} {return symbol(sym.INCLUDE, new String("RESERVED WORD: " + yytext()));}
{INDEX} {return symbol(sym.INDEX, new String("RESERVED WORD: " + yytext()));}
{INDICATOR} {return symbol(sym.INDICATOR, new String("RESERVED WORD: " + yytext()));}
{INITIALLY} {return symbol(sym.INITIALLY, new String("RESERVED WORD: " + yytext()));}
{INNER} {return symbol(sym.INNER, new String("RESERVED WORD: " + yytext()));}
{INPUT} {return symbol(sym.INPUT, new String("RESERVED WORD: " + yytext()));}
{INSENSITIVE} {return symbol(sym.INSENSITIVE, new String("RESERVED WORD: " + yytext()));}
{INSERT} {return symbol(sym.INSERT, new String("RESERVED WORD: " + yytext()));}
{INT} {return symbol(sym.INT, new String("RESERVED WORD: " + yytext()));}
{INTEGER} {return symbol(sym.INTEGER, new String("RESERVED WORD: " + yytext()));}
{INTERSECT} {return symbol(sym.INTERSECT, new String("RESERVED WORD: " + yytext()));}
{INTERVAL} {return symbol(sym.INTERVAL, new String("RESERVED WORD: " + yytext()));}
{INTO} {return symbol(sym.INTO, new String("RESERVED WORD: " + yytext()));}
{IS} {return symbol(sym.IS, new String("RESERVED WORD: " + yytext()));}
{ISOLATION} {return symbol(sym.ISOLATION, new String("RESERVED WORD: " + yytext()));}
{JOIN} {return symbol(sym.JOIN, new String("RESERVED WORD: " + yytext()));}
{KEY} {return symbol(sym.KEY, new String("RESERVED WORD: " + yytext()));}
{KILL} {return symbol(sym.KILL, new String("RESERVED WORD: " + yytext()));}
{LANGUAGE} {return symbol(sym.LANGUAGE, new String("RESERVED WORD: " + yytext()));}
{LAST} {return symbol(sym.LAST, new String("RESERVED WORD: " + yytext()));}
{LEADING} {return symbol(sym.LEADING, new String("RESERVED WORD: " + yytext()));}
{LEFT} {return symbol(sym.LEFT, new String("RESERVED WORD: " + yytext()));}
{LEVEL} {return symbol(sym.LEVEL, new String("RESERVED WORD: " + yytext()));}
{LIKE} {return symbol(sym.LIKE, new String("RESERVED WORD: " + yytext()));}
{LINENO} {return symbol(sym.LINENO, new String("RESERVED WORD: " + yytext()));}
{LOAD} {return symbol(sym.LOAD, new String("RESERVED WORD: " + yytext()));}
{LOCAL} {return symbol(sym.LOCAL, new String("RESERVED WORD: " + yytext()));}
{LOWER} {return symbol(sym.LOWER, new String("RESERVED WORD: " + yytext()));}
{MATCH} {return symbol(sym.MATCH, new String("RESERVED WORD: " + yytext()));}
{MAX} {return symbol(sym.MAX, new String("RESERVED WORD: " + yytext()));}
{MERGE} {return symbol(sym.MERGE, new String("RESERVED WORD: " + yytext()));}
{MIN} {return symbol(sym.MIN, new String("RESERVED WORD: " + yytext()));}
{MINUTE} {return symbol(sym.MINUTE, new String("RESERVED WORD: " + yytext()));}
{MODULE} {return symbol(sym.MODULE, new String("RESERVED WORD: " + yytext()));}
{MONTH} {return symbol(sym.MONTH, new String("RESERVED WORD: " + yytext()));}
{NAMES} {return symbol(sym.NAMES, new String("RESERVED WORD: " + yytext()));}
{NATIONAL} {return symbol(sym.NATIONAL, new String("RESERVED WORD: " + yytext()));}
{NATURAL} {return symbol(sym.NATURAL, new String("RESERVED WORD: " + yytext()));}
{NCHAR} {return symbol(sym.NCHAR, new String("RESERVED WORD: " + yytext()));}
{NEXT} {return symbol(sym.NEXT, new String("RESERVED WORD: " + yytext()));}
{NO} {return symbol(sym.NO, new String("RESERVED WORD: " + yytext()));}
{NOCHECK} {return symbol(sym.NOCHECK, new String("RESERVED WORD: " + yytext()));}
{NONCLUSTERED} {return symbol(sym.NONCLUSTERED, new String("RESERVED WORD: " + yytext()));}
{NONE} {return symbol(sym.NONE, new String("RESERVED WORD: " + yytext()));}
{NOT} {return symbol(sym.NOT, new String("RESERVED WORD: " + yytext()));}
{NULL} {return symbol(sym.NULL, new String("RESERVED WORD: " + yytext()));}
{NULLIF} {return symbol(sym.NULLIF, new String("RESERVED WORD: " + yytext()));}
{NUMERIC} {return symbol(sym.NUMERIC, new String("RESERVED WORD: " + yytext()));}
{OCTET_LENGTH} {return symbol(sym.OCTET_LENGTH, new String("RESERVED WORD: " + yytext()));}
{OF} {return symbol(sym.OF, new String("RESERVED WORD: " + yytext()));}
{OFF} {return symbol(sym.OFF, new String("RESERVED WORD: " + yytext()));}
{OFFSETS} {return symbol(sym.OFFSETS, new String("RESERVED WORD: " + yytext()));}
{ON} {return symbol(sym.ON, new String("RESERVED WORD: " + yytext()));}
{ONLY} {return symbol(sym.ONLY, new String("RESERVED WORD: " + yytext()));}
{OPEN} {return symbol(sym.OPEN, new String("RESERVED WORD: " + yytext()));}
{OPENDATASOURCE} {return symbol(sym.OPENDATASOURCE, new String("RESERVED WORD: " + yytext()));}
{OPENQUERY} {return symbol(sym.OPENQUERY, new String("RESERVED WORD: " + yytext()));}
{OPENROWSET} {return symbol(sym.OPENROWSET, new String("RESERVED WORD: " + yytext()));}
{OPENXML} {return symbol(sym.OPENXML, new String("RESERVED WORD: " + yytext()));}
{OPTION} {return symbol(sym.OPTION, new String("RESERVED WORD: " + yytext()));}
{OR} {return symbol(sym.OR, new String("RESERVED WORD: " + yytext()));}
{ORDER} {return symbol(sym.ORDER, new String("RESERVED WORD: " + yytext()));}
{OUTER} {return symbol(sym.OUTER, new String("RESERVED WORD: " + yytext()));}
{OUTPUT} {return symbol(sym.OUTPUT, new String("RESERVED WORD: " + yytext()));}
{OVER} {return symbol(sym.OVER, new String("RESERVED WORD: " + yytext()));}
{OVERLAPS} {return symbol(sym.OVERLAPS, new String("RESERVED WORD: " + yytext()));}
{PAD} {return symbol(sym.PAD, new String("RESERVED WORD: " + yytext()));}
{PARTIAL} {return symbol(sym.PARTIAL, new String("RESERVED WORD: " + yytext()));}
{PASCAL} {return symbol(sym.PASCAL, new String("RESERVED WORD: " + yytext()));}
{PERCENT} {return symbol(sym.PERCENT, new String("RESERVED WORD: " + yytext()));}
{PIVOT} {return symbol(sym.PIVOT, new String("RESERVED WORD: " + yytext()));}
{PLAN} {return symbol(sym.PLAN, new String("RESERVED WORD: " + yytext()));}
{POSITION} {return symbol(sym.POSITION, new String("RESERVED WORD: " + yytext()));}
{PRECISION} {return symbol(sym.PRECISION, new String("RESERVED WORD: " + yytext()));}
{PREPARE} {return symbol(sym.PREPARE, new String("RESERVED WORD: " + yytext()));}
{PRESERVE} {return symbol(sym.PRESERVE, new String("RESERVED WORD: " + yytext()));}
{PRIMARY} {return symbol(sym.PRIMARY, new String("RESERVED WORD: " + yytext()));}
{PRINT} {return symbol(sym.PRINT, new String("RESERVED WORD: " + yytext()));}
{PRIOR} {return symbol(sym.PRIOR, new String("RESERVED WORD: " + yytext()));}
{PRIVILEGES} {return symbol(sym.PRIVILEGES, new String("RESERVED WORD: " + yytext()));}
{PROC} {return symbol(sym.PROC, new String("RESERVED WORD: " + yytext()));}
{PROCEDURE} {return symbol(sym.PROCEDURE, new String("RESERVED WORD: " + yytext()));}
{PUBLIC} {return symbol(sym.PUBLIC, new String("RESERVED WORD: " + yytext()));}
{RAISERROR} {return symbol(sym.RAISERROR, new String("RESERVED WORD: " + yytext()));}
{READ} {return symbol(sym.READ, new String("RESERVED WORD: " + yytext()));}
{READTEXT} {return symbol(sym.READTEXT, new String("RESERVED WORD: " + yytext()));}
{REAL} {return symbol(sym.REAL, new String("RESERVED WORD: " + yytext()));}
{RECONFIGURE} {return symbol(sym.RECONFIGURE, new String("RESERVED WORD: " + yytext()));}
{REFERENCES} {return symbol(sym.REFERENCES, new String("RESERVED WORD: " + yytext()));}
{RELATIVE} {return symbol(sym.RELATIVE, new String("RESERVED WORD: " + yytext()));}
{REPLICATION} {return symbol(sym.REPLICATION, new String("RESERVED WORD: " + yytext()));}
{RESTORE} {return symbol(sym.RESTORE, new String("RESERVED WORD: " + yytext()));}
{RESTRICT} {return symbol(sym.RESTRICT, new String("RESERVED WORD: " + yytext()));}
{RETURN} {return symbol(sym.RETURN, new String("RESERVED WORD: " + yytext()));}
{RETURNS} {return symbol(sym.RETURNS, new String("RESERVED WORD: " + yytext()));}
{REVERT} {return symbol(sym.REVERT, new String("RESERVED WORD: " + yytext()));}
{REVOKE} {return symbol(sym.REVOKE, new String("RESERVED WORD: " + yytext()));}
{RIGHT} {return symbol(sym.RIGHT, new String("RESERVED WORD: " + yytext()));}
{ROLLBACK} {return symbol(sym.ROLLBACK, new String("RESERVED WORD: " + yytext()));}
{ROWCOUNT} {return symbol(sym.ROWCOUNT, new String("RESERVED WORD: " + yytext()));}
{ROWGUIDCOL} {return symbol(sym.ROWGUIDCOL, new String("RESERVED WORD: " + yytext()));}
{ROWS} {return symbol(sym.ROWS, new String("RESERVED WORD: " + yytext()));}
{RULE} {return symbol(sym.RULE, new String("RESERVED WORD: " + yytext()));}
{SAVE} {return symbol(sym.SAVE, new String("RESERVED WORD: " + yytext()));}
{SCHEMA} {return symbol(sym.SCHEMA, new String("RESERVED WORD: " + yytext()));}
{SCROLL} {return symbol(sym.SCROLL, new String("RESERVED WORD: " + yytext()));}
{SECOND} {return symbol(sym.SECOND, new String("RESERVED WORD: " + yytext()));}
{SECTION} {return symbol(sym.SECTION, new String("RESERVED WORD: " + yytext()));}
{SECURITYAUDIT} {return symbol(sym.SECURITYAUDIT, new String("RESERVED WORD: " + yytext()));}
{SELECT} {return symbol(sym.SELECT, new String("RESERVED WORD: " + yytext()));}
{SEMANTICKEYPHRASETABLE} {return symbol(sym.SEMANTICKEYPHRASETABLE, new String("RESERVED WORD: " + yytext()));}
{SEMANTICSIMILARITYDETAILSTABLE} {return symbol(sym.SEMANTICSIMILARITYDETAILSTABLE, new String("RESERVED WORD: " + yytext()));}
{SEMANTICSIMILARITYTABLE} {return symbol(sym.SEMANTICSIMILARITYTABLE, new String("RESERVED WORD: " + yytext()));}
{SESSION} {return symbol(sym.SESSION, new String("RESERVED WORD: " + yytext()));}
{SESSION_USER} {return symbol(sym.SESSION_USER, new String("RESERVED WORD: " + yytext()));}
{SET} {return symbol(sym.SET, new String("RESERVED WORD: " + yytext()));}
{SETUSER} {return symbol(sym.SETUSER, new String("RESERVED WORD: " + yytext()));}
{SHUTDOWN} {return symbol(sym.SHUTDOWN, new String("RESERVED WORD: " + yytext()));}
{SIZE} {return symbol(sym.SIZE, new String("RESERVED WORD: " + yytext()));}
{SMALLINT} {return symbol(sym.SMALLINT, new String("RESERVED WORD: " + yytext()));}
{SOME} {return symbol(sym.SOME, new String("RESERVED WORD: " + yytext()));}
{SPACE} {return symbol(sym.SPACE, new String("RESERVED WORD: " + yytext()));}
{SQL} {return symbol(sym.SQL, new String("RESERVED WORD: " + yytext()));}
{SQLCA} {return symbol(sym.SQLCA, new String("RESERVED WORD: " + yytext()));}
{SQLCODE} {return symbol(sym.SQLCODE, new String("RESERVED WORD: " + yytext()));}
{SQLERROR} {return symbol(sym.SQLERROR, new String("RESERVED WORD: " + yytext()));}
{SQLSTATE} {return symbol(sym.SQLSTATE, new String("RESERVED WORD: " + yytext()));}
{SQLWARNING} {return symbol(sym.SQLWARNING, new String("RESERVED WORD: " + yytext()));}
{STATISTICS} {return symbol(sym.STATISTICS, new String("RESERVED WORD: " + yytext()));}
{SUBSTRING} {return symbol(sym.SUBSTRING, new String("RESERVED WORD: " + yytext()));}
{SUM} {return symbol(sym.SUM, new String("RESERVED WORD: " + yytext()));}
{SYSTEM_USER} {return symbol(sym.SYSTEM_USER, new String("RESERVED WORD: " + yytext()));}
{TABLE} {return symbol(sym.TABLE, new String("RESERVED WORD: " + yytext()));}
{TABLESAMPLE} {return symbol(sym.TABLESAMPLE, new String("RESERVED WORD: " + yytext()));}
{TEMPORARY} {return symbol(sym.TEMPORARY, new String("RESERVED WORD: " + yytext()));}
{TEXTSIZE} {return symbol(sym.TEXTSIZE, new String("RESERVED WORD: " + yytext()));}
{THEN} {return symbol(sym.THEN, new String("RESERVED WORD: " + yytext()));}
{TIME} {return symbol(sym.TIME, new String("RESERVED WORD: " + yytext()));}
{TIMESTAMP} {return symbol(sym.TIMESTAMP, new String("RESERVED WORD: " + yytext()));}
{TIMEZONE_HOUR} {return symbol(sym.TIMEZONE_HOUR, new String("RESERVED WORD: " + yytext()));}
{TIMEZONE_MINUTE} {return symbol(sym.TIMEZONE_MINUTE, new String("RESERVED WORD: " + yytext()));}
{TO} {return symbol(sym.TO, new String("RESERVED WORD: " + yytext()));}
{TOP} {return symbol(sym.TOP, new String("RESERVED WORD: " + yytext()));}
{TRAILING} {return symbol(sym.TRAILING, new String("RESERVED WORD: " + yytext()));}
{TRAN} {return symbol(sym.TRAN, new String("RESERVED WORD: " + yytext()));}
{TRANSACTION} {return symbol(sym.TRANSACTION, new String("RESERVED WORD: " + yytext()));}
{TRANSLATE} {return symbol(sym.TRANSLATE, new String("RESERVED WORD: " + yytext()));}
{TRANSLATION} {return symbol(sym.TRANSLATION, new String("RESERVED WORD: " + yytext()));}
{TRIGGER} {return symbol(sym.TRIGGER, new String("RESERVED WORD: " + yytext()));}
{TRIM} {return symbol(sym.TRIM, new String("RESERVED WORD: " + yytext()));}
{TRUE} {return symbol(sym.TRUE, new String("RESERVED WORD: " + yytext()));}
{TRUNCATE} {return symbol(sym.TRUNCATE, new String("RESERVED WORD: " + yytext()));}
{TRY_CONVERT} {return symbol(sym.TRY_CONVERT, new String("RESERVED WORD: " + yytext()));}
{TSEQUAL} {return symbol(sym.TSEQUAL, new String("RESERVED WORD: " + yytext()));}
{UNION} {return symbol(sym.UNION, new String("RESERVED WORD: " + yytext()));}
{UNIQUE} {return symbol(sym.UNIQUE, new String("RESERVED WORD: " + yytext()));}
{UNKNOWN} {return symbol(sym.UNKNOWN, new String("RESERVED WORD: " + yytext()));}
{UNPIVOT} {return symbol(sym.UNPIVOT, new String("RESERVED WORD: " + yytext()));}
{UPDATE} {return symbol(sym.UPDATE, new String("RESERVED WORD: " + yytext()));}
{UPDATETEXT} {return symbol(sym.UPDATETEXT, new String("RESERVED WORD: " + yytext()));}
{UPPER} {return symbol(sym.UPPER, new String("RESERVED WORD: " + yytext()));}
{USAGE} {return symbol(sym.USAGE, new String("RESERVED WORD: " + yytext()));}
{USE} {return symbol(sym.USE, new String("RESERVED WORD: " + yytext()));}
{USER} {return symbol(sym.USER, new String("RESERVED WORD: " + yytext()));}
{USING} {return symbol(sym.USING, new String("RESERVED WORD: " + yytext()));}
{VALUE} {return symbol(sym.VALUE, new String("RESERVED WORD: " + yytext()));}
{VALUES} {return symbol(sym.VALUES, new String("RESERVED WORD: " + yytext()));}
{VARCHAR} {return symbol(sym.VARCHAR, new String("RESERVED WORD: " + yytext()));}
{VARYING} {return symbol(sym.VARYING, new String("RESERVED WORD: " + yytext()));}
{VIEW} {return symbol(sym.VIEW, new String("RESERVED WORD: " + yytext()));}
{WAITFOR} {return symbol(sym.WAITFOR, new String("RESERVED WORD: " + yytext()));}
{WHEN} {return symbol(sym.WHEN, new String("RESERVED WORD: " + yytext()));}
{WHENEVER} {return symbol(sym.WHENEVER, new String("RESERVED WORD: " + yytext()));}
{WHERE} {return symbol(sym.WHERE, new String("RESERVED WORD: " + yytext()));}
{WHILE} {return symbol(sym.WHILE, new String("RESERVED WORD: " + yytext()));}
{WITH} {return symbol(sym.WITH, new String("RESERVED WORD: " + yytext()));}
{WITHIN_GROUP} {return symbol(sym.WITHIN_GROUP, new String("RESERVED WORD: " + yytext()));}
{WORK} {return symbol(sym.WORK, new String("RESERVED WORD: " + yytext()));}
{WRITE} {return symbol(sym.WRITE, new String("RESERVED WORD: " + yytext()));}
{WRITETEXT} {return symbol(sym.WRITETEXT, new String("RESERVED WORD: " + yytext()));}
{YEAR} {return symbol(sym.YEAR, new String("RESERVED WORD: " + yytext()));}
{ZONE} {return symbol(sym.ZONE, new String("RESERVED WORD: " + yytext()));}
{ENCRYPTION} = {return symbol(sym.ENCRYPTION, new String("RESERVED WORD: " + yytext()));}
{RECOMPILE} = {return symbol(sym.RECOMPILE, new String("RESERVED WORD: " + yytext()));}
{OUT} = {return symbol(sym.OUT, new String("RESERVED WORD: " + yytext()));}

// IDENTIFIERs
{L}({L}|{D})*                                                    { 
                                                                    if(yylength() > 31)
                                                                    {
                                                                        String aux = yytext().substring(0,31);
                                                                        
                                                                        //return "IDENTIFIER: " + aux + " in line: " + (yyline + 1) + " columns: " + (yycolumn + 1) + " - " + ((yycolumn + 1) + yylength() - 1) + " exceeded the max limit length. Identifier truncated.";                                                                       
                                                                        return symbol(sym.IDENTIFICADOR, new String(aux));
                                                                    }
                                                                    else 
                                                                    {
                                                                        //return "IDENTIFIER: " + yytext() + " in line: " + (yyline + 1) + " columns: " + (yycolumn + 1) + " - " + ((yycolumn + 1) + yylength() - 1); 
                                                                        return symbol(sym.IDENTIFICADOR, new String("IDENTIFIER: " + yytext()));
                                                                    }
                                                                 }
// INTs
{D}+	                                                         { return symbol(sym.INTCONSTANT, new Integer(yytext())); }

// FLOATs
[-+]?[0-9]+"."|[-+]?[0-9]+"."([0-9]+|("E"|"e")[-+]?[0-9]+|[0-9]+("E"|"e")[-+]?[0-9]+) { return symbol(sym.FLOAT, yytext()); }

// LINE COUNTER
[ \n]                                                            { /*lleva la cuenta de lineas*/ }

// WHITESPACEs TABs BRAKELINEs NEWLINEs
[\s]+                                                            { /*se ignoran los espacios y tabuladores*/ }

//UNFINISHED COMMENTs
{UNFINISHED_COMMENT}                                            { System.out.print("Unfinished comment " + yytext() + " found in line: " + (yyline + 1) + " columns: " + (yycolumn + 1) + " - " + ((yycolumn + 1) + yylength() - 1)); }

//MULTILINE COMMENTs
{MULTILINE_COMMENT}                                              { /*se ignoran los comentarios de bloque*/ }

//SINGLELINE COMMENTs
{SINGLELINE_COMMENT}                                             { /*se ignoran los comentarios de linea*/ }

// ERRORs
.	                                                         { 
                                                                    lexeme = yytext(); line = (yyline + 1); column = (yycolumn + 1); length = yylength();
                                                                    if (lexeme == "")
                                                                    {
                                                                    }
                                                                    else
                                                                    {
                                                                        System.out.print("Lexical error: invalid token - " + yytext()) ;

                                                                    }
                                                                 }