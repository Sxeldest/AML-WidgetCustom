; =========================================================
; Game Engine Function: sub_1461D0
; Address            : 0x1461D0 - 0x146238
; =========================================================

1461D0:  PUSH            {R4,R5,R7,LR}
1461D2:  ADD             R7, SP, #8
1461D4:  SUB             SP, SP, #0x118
1461D6:  LDRD.W          R1, R0, [R0]; src
1461DA:  MOVS            R3, #0
1461DC:  ASRS            R2, R0, #0x1F
1461DE:  MOVS            R5, #0
1461E0:  ADD.W           R0, R0, R2,LSR#29
1461E4:  MOVS            R2, #1
1461E6:  ADD.W           R2, R2, R0,ASR#3; size
1461EA:  ADD             R0, SP, #0x120+var_11C; int
1461EC:  BL              sub_17D4F2
1461F0:  LDR             R1, =(off_23496C - 0x1461FE)
1461F2:  MOVW            R2, #0x13BC
1461F6:  STRB.W          R5, [SP,#0x120+var_11D]
1461FA:  ADD             R1, PC; off_23496C
1461FC:  LDR             R1, [R1]; dword_23DEF4
1461FE:  LDR             R1, [R1]
146200:  LDR.W           R1, [R1,#0x3B0]
146204:  LDR             R1, [R1]
146206:  LDR             R4, [R1,R2]
146208:  ADD.W           R1, SP, #0x120+var_11D; int
14620C:  MOVS            R2, #8
14620E:  MOVS            R3, #1
146210:  BL              sub_17D786
146214:  LDRB.W          R0, [SP,#0x120+var_11D]
146218:  CBZ             R0, loc_14622A
14621A:  CMP             R0, #2
14621C:  BEQ             loc_146222
14621E:  LDRB            R0, [R4]
146220:  CBZ             R0, loc_14622A
146222:  MOV             R0, R4
146224:  BL              sub_140610
146228:  B               loc_14622E
14622A:  MOVS            R0, #0
14622C:  STRB            R0, [R4]
14622E:  ADD             R0, SP, #0x120+var_11C
146230:  BL              sub_17D542
146234:  ADD             SP, SP, #0x118
146236:  POP             {R4,R5,R7,PC}
