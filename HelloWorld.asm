;datas segment相当于定义了一个数据段，用于存储代码中的数据
;datas ends表示数据段的结束
;------------------------------------------
DATAS  SEGMENT
     STRING  DB  'Hello World!',13,10,'$'
     ;'$'代表字符串结束
DATAS  ENDS
;codes segment相当于代码段开始
;codes ends相当于代码段结束
;start相当于main函数，作为函数入口
;----------------------------------
CODES  SEGMENT
     ASSUME    CS:CODES,DS:DATAS
START:;相当于main函数
     MOV  AX,DATAS
     MOV  DS,AX
     LEA  DX,STRING
     MOV  AH,9
     INT  21H
   
     MOV  AH,4CH
     INT  21H
CODES  ENDS
    END   START