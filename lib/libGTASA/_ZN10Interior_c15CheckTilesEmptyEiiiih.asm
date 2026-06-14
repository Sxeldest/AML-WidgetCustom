; =========================================================
; Game Engine Function: _ZN10Interior_c15CheckTilesEmptyEiiiih
; Address            : 0x446F5C - 0x446FF0
; =========================================================

446F5C:  PUSH            {R4-R7,LR}
446F5E:  ADD             R7, SP, #0xC
446F60:  PUSH.W          {R8}
446F64:  ORR.W           R6, R2, R1
446F68:  CMP             R6, #0
446F6A:  BLT             loc_446F84
446F6C:  LDR             R5, [R0,#0x14]
446F6E:  ADDS            R6, R3, R1
446F70:  LDRB            R4, [R5,#2]
446F72:  CMP             R6, R4
446F74:  BGT             loc_446F84
446F76:  LDR.W           R12, [R7,#arg_0]
446F7A:  LDRB            R5, [R5,#3]
446F7C:  ADD.W           R6, R12, R2
446F80:  CMP             R6, R5
446F82:  BLE             loc_446F8C
446F84:  MOVS            R0, #0
446F86:  POP.W           {R8}
446F8A:  POP             {R4-R7,PC}
446F8C:  CMP             R3, #1
446F8E:  BLT             loc_446FE8
446F90:  RSB.W           R1, R1, R1,LSL#4
446F94:  LDR.W           LR, [R7,#arg_4]
446F98:  MOV.W           R8, #0
446F9C:  ADD.W           R1, R2, R1,LSL#1
446FA0:  ADD             R0, R1
446FA2:  ADD.W           R1, R0, #0x68 ; 'h'
446FA6:  CMP.W           R12, #1
446FAA:  BLT             loc_446FD6
446FAC:  MOVS            R0, #0
446FAE:  MOVS            R4, #0
446FB0:  LDRB            R2, [R1,R4]
446FB2:  MOVS            R5, #0
446FB4:  MOV             R6, LR
446FB6:  CMP             R2, #9
446FB8:  IT EQ
446FBA:  MOVEQ           R5, #1
446FBC:  CMP.W           LR, #0
446FC0:  IT NE
446FC2:  MOVNE           R6, #1
446FC4:  CMP             R2, #0
446FC6:  ITT NE
446FC8:  ANDNE.W         R2, R6, R5
446FCC:  CMPNE           R2, #1
446FCE:  BNE             loc_446FE2
446FD0:  ADDS            R4, #1
446FD2:  CMP             R4, R12
446FD4:  BLT             loc_446FB0
446FD6:  ADD.W           R8, R8, #1
446FDA:  ADDS            R1, #0x1E
446FDC:  MOVS            R0, #1
446FDE:  CMP             R8, R3
446FE0:  BLT             loc_446FA6
446FE2:  POP.W           {R8}
446FE6:  POP             {R4-R7,PC}
446FE8:  MOVS            R0, #1
446FEA:  POP.W           {R8}
446FEE:  POP             {R4-R7,PC}
