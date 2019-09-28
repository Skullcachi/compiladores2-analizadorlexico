package analizadorlexico;
import java.io.*;

%%

%public

%class Yylex

%unicode

%line

%column

%type String

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
END-EXEC = "END-EXEC"
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
WITHIN GROUP = "WITHIN GROUP"
WORK = "WORK"
WRITE = "WRITE"
WRITETEXT = "WRITETEXT"
YEAR = "YEAR"
ZONE = "ZONE"


//OPERATORS_OR_PUNTUATION_MARKS = "+" | "-" | "*" | "/" | "%" | "<" | "<=" | ">" | ">=" | "=" | "==" | "!=" | "&&" | "||" | "!" | ";" | "," | "." | "[" | "]" | "(" | ")" | "{" | "}" | "[]" | "()" | "{}" | "@" | "#" | "##"
OP_+ =  "+" 
OP_- =  "-" 
OP_* =  "*" 
OP_/ =  "/" 
OP_% =  "%" 
OP_< =  "<" 
OP_<= =  "<=" 
OP_> =  ">" 
OP_>= =  ">=" 
OP_= =  "=" 
OP_== =  "==" 
OP_!= =  "!=" 
OP_&& =  "&&" 
OP_|| =  "||"
OP_! =  "!" 
OP_; =  ";" 
OP_, =  "," 
OP_. =  "." 
OP_[ =  "[" 
OP_] =  "]" 
OP_( =  "(" 
OP_) =  ")" 
OP_{ =  "{" 
OP_} =  "}" 
OP_[] =  "[]" 
OP_() =  "()" 
OP_{} =  "{}" 
OP_@ =  "@" 
OP_# =  "#" 
OP_## =  "##"


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