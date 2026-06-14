; =========================================================
; Game Engine Function: alGetBufferiv
; Address            : 0x247B84 - 0x247DF2
; =========================================================

247B84:  PUSH            {R4-R7,LR}
247B86:  ADD             R7, SP, #0xC
247B88:  PUSH.W          {R8-R11}
247B8C:  SUB             SP, SP, #4
247B8E:  MOV             R4, R0
247B90:  MOVW            R0, #0x2001
247B94:  MOV             R6, R1
247B96:  SUBS            R0, R6, R0
247B98:  MOV             R10, R2
247B9A:  CMP             R0, #9
247B9C:  BHI             loc_247BC0
247B9E:  MOVS            R1, #1
247BA0:  LSL.W           R0, R1, R0
247BA4:  MOVW            R1, #0x38F
247BA8:  TST             R0, R1
247BAA:  ITTTT NE
247BAC:  MOVNE           R0, R4
247BAE:  MOVNE           R1, R6
247BB0:  MOVNE           R2, R10
247BB2:  ADDNE           SP, SP, #4
247BB4:  ITTT NE
247BB6:  POPNE.W         {R8-R11}
247BBA:  POPNE.W         {R4-R7,LR}
247BBE:  BNE             alGetBufferi
247BC0:  BLX             j_GetContextRef
247BC4:  MOV             R9, R0
247BC6:  CMP.W           R9, #0
247BCA:  BEQ.W           loc_247D36
247BCE:  LDR.W           R0, [R9,#0x88]
247BD2:  MOV             R1, R4
247BD4:  ADDS            R0, #0x40 ; '@'
247BD6:  BLX             j_LookupUIntMapKey
247BDA:  MOV             R5, R0
247BDC:  CMP             R5, #0
247BDE:  BEQ.W           loc_247D3E
247BE2:  CMP.W           R10, #0
247BE6:  BEQ.W           loc_247D74
247BEA:  MOVW            R0, #0x2015
247BEE:  CMP             R6, R0
247BF0:  BNE.W           loc_247DA8
247BF4:  ADD.W           R6, R5, #0x3C ; '<'
247BF8:  ADD.W           R11, R5, #0x30 ; '0'
247BFC:  MOVS            R1, #1
247BFE:  DMB.W           ISH
247C02:  LDREX.W         R0, [R6]
247C06:  STREX.W         R2, R1, [R6]
247C0A:  CMP             R2, #0
247C0C:  BNE             loc_247C02
247C0E:  CMP             R0, #1
247C10:  DMB.W           ISH
247C14:  BNE             loc_247C34
247C16:  MOVS            R4, #1
247C18:  BLX             sched_yield
247C1C:  DMB.W           ISH
247C20:  LDREX.W         R0, [R6]
247C24:  STREX.W         R1, R4, [R6]
247C28:  CMP             R1, #0
247C2A:  BNE             loc_247C20
247C2C:  CMP             R0, #1
247C2E:  DMB.W           ISH
247C32:  BEQ             loc_247C18
247C34:  DMB.W           ISH
247C38:  STR             R5, [SP,#0x20+var_20]
247C3A:  ADDS            R5, #0x38 ; '8'
247C3C:  MOVS            R1, #1
247C3E:  LDREX.W         R0, [R5]
247C42:  STREX.W         R2, R1, [R5]
247C46:  CMP             R2, #0
247C48:  BNE             loc_247C3E
247C4A:  CMP             R0, #1
247C4C:  DMB.W           ISH
247C50:  BNE             loc_247C70
247C52:  MOVS            R4, #1
247C54:  BLX             sched_yield
247C58:  DMB.W           ISH
247C5C:  LDREX.W         R0, [R5]
247C60:  STREX.W         R1, R4, [R5]
247C64:  CMP             R1, #0
247C66:  BNE             loc_247C5C
247C68:  CMP             R0, #1
247C6A:  DMB.W           ISH
247C6E:  BEQ             loc_247C54
247C70:  DMB.W           ISH
247C74:  LDREX.W         R0, [R11]
247C78:  ADDS            R1, R0, #1
247C7A:  STREX.W         R2, R1, [R11]
247C7E:  CMP             R2, #0
247C80:  BNE             loc_247C74
247C82:  CMP             R0, #0
247C84:  DMB.W           ISH
247C88:  BNE             loc_247CCA
247C8A:  DMB.W           ISH
247C8E:  MOVS            R1, #1
247C90:  LDR             R0, [SP,#0x20+var_20]
247C92:  ADD.W           R4, R0, #0x40 ; '@'
247C96:  LDREX.W         R0, [R4]
247C9A:  STREX.W         R2, R1, [R4]
247C9E:  CMP             R2, #0
247CA0:  BNE             loc_247C96
247CA2:  CMP             R0, #1
247CA4:  DMB.W           ISH
247CA8:  BNE             loc_247CCA
247CAA:  MOV.W           R8, #1
247CAE:  BLX             sched_yield
247CB2:  DMB.W           ISH
247CB6:  LDREX.W         R0, [R4]
247CBA:  STREX.W         R1, R8, [R4]
247CBE:  CMP             R1, #0
247CC0:  BNE             loc_247CB6
247CC2:  CMP             R0, #1
247CC4:  DMB.W           ISH
247CC8:  BEQ             loc_247CAE
247CCA:  MOVS            R0, #0
247CCC:  DMB.W           ISH
247CD0:  LDREX.W         R1, [R5]
247CD4:  STREX.W         R1, R0, [R5]
247CD8:  CMP             R1, #0
247CDA:  BNE             loc_247CD0
247CDC:  DMB.W           ISH
247CE0:  MOVS            R0, #0
247CE2:  DMB.W           ISH
247CE6:  LDREX.W         R1, [R6]
247CEA:  STREX.W         R1, R0, [R6]
247CEE:  CMP             R1, #0
247CF0:  BNE             loc_247CE6
247CF2:  DMB.W           ISH
247CF6:  LDR             R3, [SP,#0x20+var_20]
247CF8:  LDR             R0, [R3,#0x24]
247CFA:  STR.W           R0, [R10]
247CFE:  LDR             R0, [R3,#0x28]
247D00:  STR.W           R0, [R10,#4]
247D04:  DMB.W           ISH
247D08:  LDREX.W         R0, [R11]
247D0C:  SUBS            R1, R0, #1
247D0E:  STREX.W         R2, R1, [R11]
247D12:  CMP             R2, #0
247D14:  BNE             loc_247D08
247D16:  CMP             R0, #1
247D18:  DMB.W           ISH
247D1C:  BNE             loc_247DE2
247D1E:  ADD.W           R0, R3, #0x40 ; '@'
247D22:  MOVS            R1, #0
247D24:  DMB.W           ISH
247D28:  LDREX.W         R2, [R0]
247D2C:  STREX.W         R2, R1, [R0]
247D30:  CMP             R2, #0
247D32:  BNE             loc_247D28
247D34:  B               loc_247DDE
247D36:  ADD             SP, SP, #4
247D38:  POP.W           {R8-R11}
247D3C:  POP             {R4-R7,PC}
247D3E:  LDR             R0, =(TrapALError_ptr - 0x247D44)
247D40:  ADD             R0, PC; TrapALError_ptr
247D42:  LDR             R0, [R0]; TrapALError
247D44:  LDRB            R0, [R0]
247D46:  CMP             R0, #0
247D48:  ITT NE
247D4A:  MOVNE           R0, #5; sig
247D4C:  BLXNE           raise
247D50:  LDREX.W         R0, [R9,#0x50]
247D54:  CMP             R0, #0
247D56:  BNE             loc_247DDA
247D58:  ADD.W           R0, R9, #0x50 ; 'P'
247D5C:  MOVW            R1, #0xA001
247D60:  DMB.W           ISH
247D64:  STREX.W         R2, R1, [R0]
247D68:  CBZ             R2, loc_247DDE
247D6A:  LDREX.W         R2, [R0]
247D6E:  CMP             R2, #0
247D70:  BEQ             loc_247D64
247D72:  B               loc_247DDA
247D74:  LDR             R0, =(TrapALError_ptr - 0x247D7A)
247D76:  ADD             R0, PC; TrapALError_ptr
247D78:  LDR             R0, [R0]; TrapALError
247D7A:  LDRB            R0, [R0]
247D7C:  CMP             R0, #0
247D7E:  ITT NE
247D80:  MOVNE           R0, #5; sig
247D82:  BLXNE           raise
247D86:  LDREX.W         R0, [R9,#0x50]
247D8A:  CBNZ            R0, loc_247DDA
247D8C:  ADD.W           R0, R9, #0x50 ; 'P'
247D90:  MOVW            R1, #0xA003
247D94:  DMB.W           ISH
247D98:  STREX.W         R2, R1, [R0]
247D9C:  CBZ             R2, loc_247DDE
247D9E:  LDREX.W         R2, [R0]
247DA2:  CMP             R2, #0
247DA4:  BEQ             loc_247D98
247DA6:  B               loc_247DDA
247DA8:  LDR             R0, =(TrapALError_ptr - 0x247DAE)
247DAA:  ADD             R0, PC; TrapALError_ptr
247DAC:  LDR             R0, [R0]; TrapALError
247DAE:  LDRB            R0, [R0]
247DB0:  CMP             R0, #0
247DB2:  ITT NE
247DB4:  MOVNE           R0, #5; sig
247DB6:  BLXNE           raise
247DBA:  LDREX.W         R0, [R9,#0x50]
247DBE:  CBNZ            R0, loc_247DDA
247DC0:  ADD.W           R0, R9, #0x50 ; 'P'
247DC4:  MOVW            R1, #0xA002
247DC8:  DMB.W           ISH
247DCC:  STREX.W         R2, R1, [R0]
247DD0:  CBZ             R2, loc_247DDE
247DD2:  LDREX.W         R2, [R0]
247DD6:  CMP             R2, #0
247DD8:  BEQ             loc_247DCC
247DDA:  CLREX.W
247DDE:  DMB.W           ISH
247DE2:  MOV             R0, R9
247DE4:  ADD             SP, SP, #4
247DE6:  POP.W           {R8-R11}
247DEA:  POP.W           {R4-R7,LR}
247DEE:  B.W             ALCcontext_DecRef
