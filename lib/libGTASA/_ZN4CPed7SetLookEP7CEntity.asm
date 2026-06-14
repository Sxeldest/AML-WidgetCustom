; =========================================================
; Game Engine Function: _ZN4CPed7SetLookEP7CEntity
; Address            : 0x4A7000 - 0x4A70BE
; =========================================================

4A7000:  PUSH            {R4-R7,LR}
4A7002:  ADD             R7, SP, #0xC
4A7004:  PUSH.W          {R8}
4A7008:  MOV             R4, R0
4A700A:  MOV             R5, R1
4A700C:  LDR.W           R0, [R4,#0x484]
4A7010:  TST.W           R0, #0x600
4A7014:  BNE             loc_4A7038
4A7016:  LDR.W           R6, [R4,#0x44C]
4A701A:  LDR.W           R12, [R4,#0x488]
4A701E:  LDR.W           R2, [R4,#0x48C]
4A7022:  SUBS            R6, #0x36 ; '6'
4A7024:  LDR.W           R3, [R4,#0x490]
4A7028:  CMP             R6, #9
4A702A:  BHI             loc_4A703E
4A702C:  MOVS            R1, #1
4A702E:  LSLS            R1, R6
4A7030:  MOVW            R6, #0x203
4A7034:  TST             R1, R6
4A7036:  BEQ             loc_4A703E
4A7038:  POP.W           {R8}
4A703C:  POP             {R4-R7,PC}
4A703E:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4A7048)
4A7040:  LDR.W           R6, [R4,#0x750]
4A7044:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4A7046:  LDR.W           LR, [R1]; CTimer::m_snTimeInMilliseconds ...
4A704A:  MOVS            R1, #2
4A704C:  STR.W           R1, [R4,#0x44C]
4A7050:  LDR.W           R1, [LR]; CTimer::m_snTimeInMilliseconds
4A7054:  CMP             R6, R1
4A7056:  BCS             loc_4A7038
4A7058:  ADDW            R6, R4, #0x484
4A705C:  MOVS            R1, #1
4A705E:  BFI.W           R0, R1, #2, #2
4A7062:  ADD.W           R8, R4, #0x740
4A7066:  STRD.W          R0, R12, [R6]
4A706A:  STRD.W          R2, R3, [R6,#8]
4A706E:  LDR.W           R0, [R4,#0x740]; this
4A7072:  CMP             R0, #0
4A7074:  ITT NE
4A7076:  MOVNE           R1, R8; CEntity **
4A7078:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4A707C:  MOV             R0, R5; this
4A707E:  MOV             R1, R8; CEntity **
4A7080:  STR.W           R5, [R4,#0x740]
4A7084:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4A7088:  MOVS            R0, #0
4A708A:  MOVW            R1, #0x23F0
4A708E:  STR.W           R0, [R4,#0x750]
4A7092:  MOVT            R1, #0x4974
4A7096:  LDR.W           R0, [R4,#0x44C]
4A709A:  STR.W           R1, [R4,#0x744]
4A709E:  ORR.W           R0, R0, #8
4A70A2:  CMP             R0, #0x3A ; ':'
4A70A4:  BEQ             loc_4A7038
4A70A6:  LDRB            R0, [R6,#3]
4A70A8:  LSLS            R0, R0, #0x1D
4A70AA:  ITTT PL
4A70AC:  LDRPL.W         R0, [R4,#0x534]
4A70B0:  BICPL.W         R0, R0, #2
4A70B4:  STRPL.W         R0, [R4,#0x534]
4A70B8:  POP.W           {R8}
4A70BC:  POP             {R4-R7,PC}
