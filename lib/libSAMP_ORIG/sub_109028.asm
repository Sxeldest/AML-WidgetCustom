; =========================================================
; Game Engine Function: sub_109028
; Address            : 0x109028 - 0x1090A8
; =========================================================

109028:  PUSH            {R4-R6,LR}
10902C:  MOV             R4, R0
109030:  LDR             R0, [R0]
109034:  CMP             R0, #0
109038:  BEQ             loc_10905C
10903C:  LDR             R1, =(byte_1AF8A8 - 0x109050)
109040:  SUB             R0, R0, #1
109044:  STR             R0, [R4]
109048:  ADD             R1, PC, R1; byte_1AF8A8
10904C:  LDR             R0, [R1,#(dword_1AF8AC - 0x1AF8A8)]; key
109050:  MOV             R1, R4; pointer
109054:  POP             {R4-R6,LR}
109058:  B               pthread_setspecific
10905C:  LDR             R0, [R4,#4]
109060:  CMP             R0, #0
109064:  BEQ             loc_10909C
109068:  ADD             R5, R4, #8
10906C:  MOV             R6, #0
109070:  B               loc_109080
109074:  ADD             R6, R6, #1
109078:  CMP             R6, R0
10907C:  BCS             loc_10909C
109080:  LDR             R1, [R5,R6,LSL#2]
109084:  CMP             R1, #0
109088:  BEQ             loc_109074
10908C:  LDR             R0, [R1,#-4]; ptr
109090:  BL              free
109094:  LDR             R0, [R4,#4]
109098:  B               loc_109074
10909C:  MOV             R0, R4; ptr
1090A0:  POP             {R4-R6,LR}
1090A4:  B               free
