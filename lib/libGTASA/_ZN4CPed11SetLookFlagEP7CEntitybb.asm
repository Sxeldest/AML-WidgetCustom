; =========================================================
; Game Engine Function: _ZN4CPed11SetLookFlagEP7CEntitybb
; Address            : 0x4A1158 - 0x4A11E4
; =========================================================

4A1158:  PUSH            {R4-R7,LR}
4A115A:  ADD             R7, SP, #0xC
4A115C:  PUSH.W          {R11}
4A1160:  MOV             R4, R0
4A1162:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4A116E)
4A1164:  MOV             R5, R1
4A1166:  LDR.W           R1, [R4,#0x750]
4A116A:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4A116C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4A116E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4A1170:  CMP             R1, R0
4A1172:  BCC             loc_4A1178
4A1174:  CMP             R3, #1
4A1176:  BNE             loc_4A11C2
4A1178:  LDR.W           R0, [R4,#0x740]; this
4A117C:  ADD.W           R6, R4, #0x740
4A1180:  LDR.W           R1, [R4,#0x484]
4A1184:  MOVS            R2, #1
4A1186:  CMP             R0, #0
4A1188:  BFI.W           R1, R2, #2, #2
4A118C:  STR.W           R1, [R4,#0x484]
4A1190:  ITT NE
4A1192:  MOVNE           R1, R6; CEntity **
4A1194:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4A1198:  MOV             R0, R5; this
4A119A:  MOV             R1, R6; CEntity **
4A119C:  STR.W           R5, [R4,#0x740]
4A11A0:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4A11A4:  MOVS            R0, #0
4A11A6:  MOVW            R1, #0x23F0
4A11AA:  STR.W           R0, [R4,#0x750]
4A11AE:  MOVT            R1, #0x4974
4A11B2:  LDR.W           R0, [R4,#0x44C]
4A11B6:  STR.W           R1, [R4,#0x744]
4A11BA:  ORR.W           R0, R0, #8
4A11BE:  CMP             R0, #0x3A ; ':'
4A11C0:  BNE             loc_4A11C8
4A11C2:  POP.W           {R11}
4A11C6:  POP             {R4-R7,PC}
4A11C8:  ADDW            R0, R4, #0x484
4A11CC:  LDRB            R0, [R0,#3]
4A11CE:  LSLS            R0, R0, #0x1D
4A11D0:  ITTT PL
4A11D2:  LDRPL.W         R0, [R4,#0x534]
4A11D6:  BICPL.W         R0, R0, #2
4A11DA:  STRPL.W         R0, [R4,#0x534]
4A11DE:  POP.W           {R11}
4A11E2:  POP             {R4-R7,PC}
