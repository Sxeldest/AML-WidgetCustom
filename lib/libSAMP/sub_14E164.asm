; =========================================================
; Game Engine Function: sub_14E164
; Address            : 0x14E164 - 0x14E1AE
; =========================================================

14E164:  PUSH            {R4,R6,R7,LR}
14E166:  ADD             R7, SP, #8
14E168:  SUB             SP, SP, #0x118
14E16A:  LDRD.W          R1, R0, [R0]; src
14E16E:  MOVS            R3, #0
14E170:  ASRS            R2, R0, #0x1F
14E172:  MOVS            R4, #0
14E174:  ADD.W           R0, R0, R2,LSR#29
14E178:  MOVS            R2, #1
14E17A:  ADD.W           R2, R2, R0,ASR#3; size
14E17E:  ADD             R0, SP, #0x120+var_11C; int
14E180:  BL              sub_17D4F2
14E184:  STR             R4, [SP,#0x120+var_120]
14E186:  MOV             R1, SP; int
14E188:  MOVS            R2, #0x20 ; ' '
14E18A:  MOVS            R3, #1
14E18C:  BL              sub_17D786
14E190:  LDR             R0, =(off_234970 - 0x14E196)
14E192:  ADD             R0, PC; off_234970
14E194:  LDR             R0, [R0]; dword_23DEF0
14E196:  LDR             R0, [R0]
14E198:  BL              sub_E35A0
14E19C:  CBZ             R0, loc_14E1A4
14E19E:  MOV             R1, SP
14E1A0:  BL              sub_1060CC
14E1A4:  ADD             R0, SP, #0x120+var_11C
14E1A6:  BL              sub_17D542
14E1AA:  ADD             SP, SP, #0x118
14E1AC:  POP             {R4,R6,R7,PC}
