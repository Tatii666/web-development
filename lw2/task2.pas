PROGRAM PrintHello(INPUT, OUTPUT);
USES
  DOS;
  
VAR
N: STRING;
BEGIN {PrintHello}
  WRITELN('Content-Type: text/plain');
  WRITELN;
  WRITELN(GetEnv('REQUEST_METHOD'));
  N := GetEnv('QUERY_STRING');
  IF N = 'lanterns=1'
  THEN
    WRITELN('The british are coming by sea')
  ELSE  
    IF N = 'lanterns=2'
    THEN
      WRITELN('The British are coming by land')
    ELSE
     WRITELN('The British are day off');
  
    
  {WRITELN(GetEnv('QUERY_STRING'));
  WRITELN(GetEnv('CONTENT_LENGTH'));
  WRITELN(GetEnv('HTTP_USER_AGENT'));
  WRITELN(GetEnv('HTTP_HOST'))}
END. {PrintHello}
