; =========================================================
; Game Engine Function: opus_encode
; Address            : 0xC7C40 - 0xC7D16
; =========================================================

C7C40:  PUSH            {R4-R7,LR}
C7C42:  ADD             R7, SP, #0xC
C7C44:  PUSH.W          {R8,R9,R11}
C7C48:  SUB             SP, SP, #0x28
C7C4A:  LDR.W           R4, [R0,#0x90]
C7C4E:  MOV             R9, #0x51EB851F
C7C56:  LDR.W           LR, [R7,#arg_0]
C7C5A:  MOV             R12, R2
C7C5C:  SMMUL.W         R5, R4, R9
C7C60:  ASRS            R6, R5, #7
C7C62:  ADD.W           R5, R6, R5,LSR#31
C7C66:  CMP             R5, R12
C7C68:  BGT             loc_C7CFC
C7C6A:  LDR.W           R6, [R0,#0x9C]
C7C6E:  MOVW            R2, #0x1388
C7C72:  CMP             R6, R2
C7C74:  BNE             loc_C7C7A
C7C76:  MOV             R2, R12
C7C78:  B               loc_C7C98
C7C7A:  MOVW            R2, #0x1389
C7C7E:  SUB.W           R8, R6, R2
C7C82:  CMP.W           R8, #8
C7C86:  BHI             loc_C7CFC
C7C88:  MOVW            R2, #0x138D
C7C8C:  CMP             R6, R2
C7C8E:  BGT             loc_C7CE6
C7C90:  LSL.W           R2, R5, R8
C7C94:  CMP             R2, R12
C7C96:  BGT             loc_C7CFC
C7C98:  MOVS            R6, #0x64 ; 'd'
C7C9A:  MULS            R6, R2
C7C9C:  CMP             R6, R4
C7C9E:  ITTT NE
C7CA0:  MOVNE.W         R6, #0x190
C7CA4:  MULNE           R6, R2
C7CA6:  CMPNE           R6, R4
C7CA8:  BEQ             loc_C7D00
C7CAA:  MOVS            R6, #0xC8
C7CAC:  MULS            R6, R2
C7CAE:  CMP             R6, R4
C7CB0:  ITTTT NE
C7CB2:  MOVNE           R6, #0x32 ; '2'
C7CB4:  MULNE.W         R12, R2, R6
C7CB8:  ADDNE.W         R5, R4, R4,LSL#1
C7CBC:  CMPNE.W         R12, R5,LSL#1
C7CC0:  BEQ             loc_C7D00
C7CC2:  ADD.W           R6, R4, R4,LSL#2
C7CC6:  CMP             R12, R6
C7CC8:  ITT NE
C7CCA:  LSLNE           R6, R4, #2
C7CCC:  CMPNE           R12, R6
C7CCE:  BEQ             loc_C7D00
C7CD0:  CMP             R12, R5
C7CD2:  IT NE
C7CD4:  CMPNE           R12, R4
C7CD6:  BEQ             loc_C7D00
C7CD8:  MOVS            R6, #0x19
C7CDA:  MULS            R6, R2
C7CDC:  CMP             R6, R4
C7CDE:  IT NE
C7CE0:  MOVNE.W         R2, #0xFFFFFFFF
C7CE4:  B               loc_C7D00
C7CE6:  MOVW            R2, #0x138B
C7CEA:  SUBS            R2, R6, R2
C7CEC:  MULS            R2, R4
C7CEE:  SMMUL.W         R2, R2, R9
C7CF2:  ASRS            R5, R2, #4
C7CF4:  ADD.W           R2, R5, R2,LSR#31
C7CF8:  CMP             R2, R12
C7CFA:  BLE             loc_C7C98
C7CFC:  MOV.W           R2, #0xFFFFFFFF
C7D00:  MOVS            R6, #0
C7D02:  STR             R6, [SP,#0x40+var_20]
C7D04:  MOVS            R6, #0x10
C7D06:  STRD.W          LR, R6, [SP,#0x40+var_40]
C7D0A:  BLX             j_opus_encode_native
C7D0E:  ADD             SP, SP, #0x28 ; '('
C7D10:  POP.W           {R8,R9,R11}
C7D14:  POP             {R4-R7,PC}
