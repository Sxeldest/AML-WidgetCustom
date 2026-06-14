; =========================================================
; Game Engine Function: sub_121BA8
; Address            : 0x121BA8 - 0x121C64
; =========================================================

121BA8:  PUSH            {R4-R7,LR}
121BAA:  ADD             R7, SP, #0xC
121BAC:  PUSH.W          {R8-R11}
121BB0:  SUB             SP, SP, #0x4C
121BB2:  MOV             R5, R0
121BB4:  LDR             R0, =(off_23494C - 0x121BBE)
121BB6:  MOV             R9, SP
121BB8:  MOVS            R2, #0
121BBA:  ADD             R0, PC; off_23494C
121BBC:  MOV             R3, R5
121BBE:  LDR             R0, [R0]; dword_23DF24
121BC0:  LDR.W           R10, [R0]
121BC4:  MOV             R0, R9
121BC6:  LDR             R1, =(sub_121CB0+1 - 0x121BCC)
121BC8:  ADD             R1, PC; sub_121CB0
121BCA:  BL              sub_121CFC
121BCE:  ADD.W           R11, SP, #0x68+var_50
121BD2:  MOV             R1, R9
121BD4:  MOV             R0, R11
121BD6:  BL              sub_12347C
121BDA:  BL              sub_123424
121BDE:  LDR             R0, =(unk_263BB8 - 0x121BE4)
121BE0:  ADD             R0, PC; unk_263BB8
121BE2:  LDR             R6, [R0,#(dword_263BC8 - 0x263BB8)]
121BE4:  CBNZ            R6, loc_121C18
121BE6:  ADD.W           R8, SP, #0x68+var_50
121BEA:  ADD             R0, SP, #0x68+var_38
121BEC:  MOV             R1, R8
121BEE:  BL              sub_12347C
121BF2:  BL              sub_123424
121BF6:  LDR             R0, =(unk_263BB8 - 0x121BFC)
121BF8:  ADD             R0, PC; unk_263BB8
121BFA:  ADD             R4, SP, #0x68+var_38
121BFC:  MOV             R1, R4
121BFE:  BL              sub_1234A8
121C02:  LDR             R0, [SP,#0x68+var_28]
121C04:  CMP             R4, R0
121C06:  BEQ             loc_121C0E
121C08:  CBZ             R0, loc_121C18
121C0A:  MOVS            R1, #5
121C0C:  B               loc_121C10
121C0E:  MOVS            R1, #4
121C10:  LDR             R2, [R0]
121C12:  LDR.W           R1, [R2,R1,LSL#2]
121C16:  BLX             R1
121C18:  LDR             R0, [SP,#0x68+var_40]
121C1A:  CMP             R11, R0
121C1C:  BEQ             loc_121C24
121C1E:  CBZ             R0, loc_121C2E
121C20:  MOVS            R1, #5
121C22:  B               loc_121C26
121C24:  MOVS            R1, #4
121C26:  LDR             R2, [R0]
121C28:  LDR.W           R1, [R2,R1,LSL#2]
121C2C:  BLX             R1
121C2E:  CBNZ            R6, loc_121C44
121C30:  MOVW            R0, #0x20F8
121C34:  LDR             R1, =(sub_1233F8+1 - 0x121C40)
121C36:  MOVT            R0, #0x67 ; 'g'
121C3A:  ADD             R0, R10
121C3C:  ADD             R1, PC; sub_1233F8
121C3E:  MOV             R2, R5
121C40:  BL              sub_164196
121C44:  LDR             R0, [SP,#0x68+var_58]
121C46:  CMP             R9, R0
121C48:  BEQ             loc_121C50
121C4A:  CBZ             R0, loc_121C5A
121C4C:  MOVS            R1, #5
121C4E:  B               loc_121C52
121C50:  MOVS            R1, #4
121C52:  LDR             R2, [R0]
121C54:  LDR.W           R1, [R2,R1,LSL#2]
121C58:  BLX             R1
121C5A:  MOV             R0, R5
121C5C:  ADD             SP, SP, #0x4C ; 'L'
121C5E:  POP.W           {R8-R11}
121C62:  POP             {R4-R7,PC}
