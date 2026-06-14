; =========================================================
; Game Engine Function: sub_11DAB8
; Address            : 0x11DAB8 - 0x11DB76
; =========================================================

11DAB8:  PUSH            {R4-R7,LR}
11DABA:  ADD             R7, SP, #0xC
11DABC:  PUSH.W          {R8-R11}
11DAC0:  SUB             SP, SP, #0x4C
11DAC2:  MOV             R4, R0
11DAC4:  LDR             R0, =(off_23494C - 0x11DACE)
11DAC6:  LDR             R1, =(sub_11DBC0+1 - 0x11DAD2)
11DAC8:  MOVS            R2, #0
11DACA:  ADD             R0, PC; off_23494C
11DACC:  MOV             R9, SP
11DACE:  ADD             R1, PC; sub_11DBC0
11DAD0:  MOV             R3, R4
11DAD2:  LDR             R0, [R0]; dword_23DF24
11DAD4:  LDR.W           R10, [R0]
11DAD8:  MOV             R0, R9
11DADA:  STR             R2, [R4]
11DADC:  MOVS            R2, #0
11DADE:  BL              sub_11DBFC
11DAE2:  ADD.W           R11, SP, #0x68+var_50
11DAE6:  MOV             R1, R9
11DAE8:  MOV             R0, R11
11DAEA:  BL              sub_11DD98
11DAEE:  BL              sub_11DD40
11DAF2:  LDR             R0, =(unk_2637E0 - 0x11DAF8)
11DAF4:  ADD             R0, PC; unk_2637E0
11DAF6:  LDR             R6, [R0,#(dword_2637F0 - 0x2637E0)]
11DAF8:  CBNZ            R6, loc_11DB2C
11DAFA:  ADD.W           R8, SP, #0x68+var_50
11DAFE:  ADD             R0, SP, #0x68+var_38
11DB00:  MOV             R1, R8
11DB02:  BL              sub_11DD98
11DB06:  BL              sub_11DD40
11DB0A:  LDR             R0, =(unk_2637E0 - 0x11DB10)
11DB0C:  ADD             R0, PC; unk_2637E0
11DB0E:  ADD             R5, SP, #0x68+var_38
11DB10:  MOV             R1, R5
11DB12:  BL              sub_11DDC4
11DB16:  LDR             R0, [SP,#0x68+var_28]
11DB18:  CMP             R5, R0
11DB1A:  BEQ             loc_11DB22
11DB1C:  CBZ             R0, loc_11DB2C
11DB1E:  MOVS            R1, #5
11DB20:  B               loc_11DB24
11DB22:  MOVS            R1, #4
11DB24:  LDR             R2, [R0]
11DB26:  LDR.W           R1, [R2,R1,LSL#2]
11DB2A:  BLX             R1
11DB2C:  LDR             R0, [SP,#0x68+var_40]
11DB2E:  CMP             R11, R0
11DB30:  BEQ             loc_11DB38
11DB32:  CBZ             R0, loc_11DB42
11DB34:  MOVS            R1, #5
11DB36:  B               loc_11DB3A
11DB38:  MOVS            R1, #4
11DB3A:  LDR             R2, [R0]
11DB3C:  LDR.W           R1, [R2,R1,LSL#2]
11DB40:  BLX             R1
11DB42:  CBNZ            R6, loc_11DB56
11DB44:  LDR             R1, =(sub_11DD0C+1 - 0x11DB52)
11DB46:  ADD.W           R0, R10, #0x670000
11DB4A:  ADD.W           R0, R0, #0xA90
11DB4E:  ADD             R1, PC; sub_11DD0C
11DB50:  MOV             R2, R4
11DB52:  BL              sub_164196
11DB56:  LDR             R0, [SP,#0x68+var_58]
11DB58:  CMP             R9, R0
11DB5A:  BEQ             loc_11DB62
11DB5C:  CBZ             R0, loc_11DB6C
11DB5E:  MOVS            R1, #5
11DB60:  B               loc_11DB64
11DB62:  MOVS            R1, #4
11DB64:  LDR             R2, [R0]
11DB66:  LDR.W           R1, [R2,R1,LSL#2]
11DB6A:  BLX             R1
11DB6C:  MOV             R0, R4
11DB6E:  ADD             SP, SP, #0x4C ; 'L'
11DB70:  POP.W           {R8-R11}
11DB74:  POP             {R4-R7,PC}
