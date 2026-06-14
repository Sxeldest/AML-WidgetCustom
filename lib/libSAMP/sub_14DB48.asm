; =========================================================
; Game Engine Function: sub_14DB48
; Address            : 0x14DB48 - 0x14DBF0
; =========================================================

14DB48:  PUSH            {R4-R7,LR}
14DB4A:  ADD             R7, SP, #0xC
14DB4C:  PUSH.W          {R11}
14DB50:  SUB             SP, SP, #0x118
14DB52:  LDRD.W          R1, R0, [R0]; src
14DB56:  MOVS            R3, #0
14DB58:  ASRS            R2, R0, #0x1F
14DB5A:  ADD.W           R0, R0, R2,LSR#29
14DB5E:  MOVS            R2, #1
14DB60:  ADD.W           R2, R2, R0,ASR#3; size
14DB64:  MOV             R0, SP; int
14DB66:  BL              sub_17D4F2
14DB6A:  SUB.W           R1, R7, #-var_12; int
14DB6E:  MOVS            R2, #0x10
14DB70:  MOVS            R3, #1
14DB72:  BL              sub_17D786
14DB76:  SUB.W           R1, R7, #-var_13; int
14DB7A:  MOV             R0, SP; int
14DB7C:  MOVS            R2, #8
14DB7E:  MOVS            R3, #1
14DB80:  BL              sub_17D786
14DB84:  LDR             R0, =(off_23496C - 0x14DB8A)
14DB86:  ADD             R0, PC; off_23496C
14DB88:  LDR             R0, [R0]; dword_23DEF4
14DB8A:  LDR             R0, [R0]
14DB8C:  LDR.W           R0, [R0,#0x3B0]
14DB90:  LDR             R5, [R0,#4]
14DB92:  CBZ             R5, loc_14DBE2
14DB94:  LDRH.W          R6, [R7,#var_12]
14DB98:  MOV.W           R1, #0x1F40
14DB9C:  ADD.W           R0, R5, R6,LSL#2
14DBA0:  LDR             R0, [R0,R1]
14DBA2:  CBZ             R0, loc_14DBB0
14DBA4:  BL              sub_10833C
14DBA8:  LDRH.W          R6, [R7,#var_12]
14DBAC:  MOV             R4, R0
14DBAE:  B               loc_14DBB4
14DBB0:  MOVW            R4, #0xFFFF
14DBB4:  LSRS            R0, R6, #4
14DBB6:  CMP             R0, #0x7C ; '|'
14DBB8:  BHI             loc_14DBE2
14DBBA:  MOV             R0, R5
14DBBC:  MOV             R1, R6
14DBBE:  BL              sub_F2396
14DBC2:  CBZ             R0, loc_14DBE2
14DBC4:  CBZ             R4, loc_14DBE2
14DBC6:  LDR.W           R0, [R5,R6,LSL#2]
14DBCA:  CBZ             R0, loc_14DBE2
14DBCC:  LDR             R0, =(off_234970 - 0x14DBD2)
14DBCE:  ADD             R0, PC; off_234970
14DBD0:  LDR             R0, [R0]; dword_23DEF0
14DBD2:  LDR             R0, [R0]
14DBD4:  BL              sub_E35A0
14DBD8:  LDRB.W          R2, [R7,#var_13]
14DBDC:  MOV             R1, R4
14DBDE:  BL              sub_105204
14DBE2:  MOV             R0, SP
14DBE4:  BL              sub_17D542
14DBE8:  ADD             SP, SP, #0x118
14DBEA:  POP.W           {R11}
14DBEE:  POP             {R4-R7,PC}
