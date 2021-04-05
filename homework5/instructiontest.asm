CODES  SEGMENT
     ASSUME    CS:CODES
START:;相当于main函数
    MOV  BX,  40ABH
    ADD  BL,  09CH 
    MOV  AL,  0E5H 
    CBW 
    ADD  BH,  AL 
    ADC  AX,  20H 
    CBW;多加一行以便调试
CODES  ENDS
    END   START