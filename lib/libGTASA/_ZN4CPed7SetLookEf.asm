; =========================================================
; Game Engine Function: _ZN4CPed7SetLookEf
; Address            : 0x4A6F40 - 0x4A6FFC
; =========================================================

4A6F40:  PUSH            {R4-R7,LR}
4A6F42:  ADD             R7, SP, #0xC
4A6F44:  PUSH.W          {R11}
4A6F48:  MOV             R4, R0
4A6F4A:  LDR.W           R0, [R4,#0x484]
4A6F4E:  TST.W           R0, #0x600
4A6F52:  BNE             loc_4A6F76
4A6F54:  LDR.W           R6, [R4,#0x44C]
4A6F58:  LDR.W           R12, [R4,#0x488]
4A6F5C:  LDR.W           R3, [R4,#0x48C]
4A6F60:  SUBS            R6, #0x36 ; '6'
4A6F62:  LDR.W           R5, [R4,#0x490]
4A6F66:  CMP             R6, #9
4A6F68:  BHI             loc_4A6F7C
4A6F6A:  MOVS            R2, #1
4A6F6C:  LSLS            R2, R6
4A6F6E:  MOVW            R6, #0x203
4A6F72:  TST             R2, R6
4A6F74:  BEQ             loc_4A6F7C
4A6F76:  POP.W           {R11}
4A6F7A:  POP             {R4-R7,PC}
4A6F7C:  LDR             R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4A6F86)
4A6F7E:  LDR.W           R6, [R4,#0x750]
4A6F82:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4A6F84:  LDR.W           LR, [R2]; CTimer::m_snTimeInMilliseconds ...
4A6F88:  MOVS            R2, #3
4A6F8A:  STR.W           R2, [R4,#0x44C]
4A6F8E:  LDR.W           R2, [LR]; CTimer::m_snTimeInMilliseconds
4A6F92:  CMP             R6, R2
4A6F94:  BCS             loc_4A6F76
4A6F96:  VMOV            S0, R1
4A6F9A:  MOVS            R1, #1
4A6F9C:  ADDW            R6, R4, #0x484
4A6FA0:  BFI.W           R0, R1, #2, #2
4A6FA4:  STRD.W          R0, R12, [R6]
4A6FA8:  ADDW            R0, R4, #0x744
4A6FAC:  STRD.W          R3, R5, [R6,#8]
4A6FB0:  VSTR            S0, [R0]
4A6FB4:  LDR.W           R0, [R4,#0x740]; this
4A6FB8:  CBZ             R0, loc_4A6FDA
4A6FBA:  ADD.W           R1, R4, #0x740; CEntity **
4A6FBE:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4A6FC2:  LDR.W           R0, [R4,#0x44C]
4A6FC6:  MOVS            R1, #0
4A6FC8:  STR.W           R1, [R4,#0x740]
4A6FCC:  ORR.W           R0, R0, #8
4A6FD0:  STR.W           R1, [R4,#0x750]
4A6FD4:  CMP             R0, #0x3A ; ':'
4A6FD6:  BEQ             loc_4A6F76
4A6FD8:  B               loc_4A6FE4
4A6FDA:  MOVS            R0, #0
4A6FDC:  STR.W           R0, [R4,#0x750]
4A6FE0:  STR.W           R0, [R4,#0x740]
4A6FE4:  LDRB            R0, [R6,#3]
4A6FE6:  LSLS            R0, R0, #0x1D
4A6FE8:  ITTT PL
4A6FEA:  LDRPL.W         R0, [R4,#0x534]
4A6FEE:  BICPL.W         R0, R0, #2
4A6FF2:  STRPL.W         R0, [R4,#0x534]
4A6FF6:  POP.W           {R11}
4A6FFA:  POP             {R4-R7,PC}
