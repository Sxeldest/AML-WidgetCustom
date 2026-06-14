; =========================================================
; Game Engine Function: sub_10305C
; Address            : 0x10305C - 0x103090
; =========================================================

10305C:  PUSH            {R4,R6,R7,LR}
10305E:  ADD             R7, SP, #8
103060:  SUB             SP, SP, #8
103062:  LDR             R4, =(off_25C984 - 0x10306C)
103064:  LDR.W           R12, [R7,#arg_0]
103068:  ADD             R4, PC; off_25C984
10306A:  STR.W           R12, [SP,#0x10+var_10]
10306E:  LDR             R4, [R4]
103070:  BLX             R4
103072:  LDR             R1, =(off_234A74 - 0x103078)
103074:  ADD             R1, PC; off_234A74
103076:  LDR             R1, [R1]; dword_2402E4
103078:  LDR             R1, [R1]
10307A:  LDR             R1, [R1]
10307C:  CBNZ            R1, loc_10308C
10307E:  LDR             R1, =(word_25B210 - 0x10308C)
103080:  MOV             R2, R0
103082:  CMP             R0, #0
103084:  IT NE
103086:  MOVNE           R2, #1
103088:  ADD             R1, PC; word_25B210
10308A:  STRB            R2, [R1,#(byte_25B218 - 0x25B210)]
10308C:  ADD             SP, SP, #8
10308E:  POP             {R4,R6,R7,PC}
