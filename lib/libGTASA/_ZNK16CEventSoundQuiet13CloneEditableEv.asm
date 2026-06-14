; =========================================================
; Game Engine Function: _ZNK16CEventSoundQuiet13CloneEditableEv
; Address            : 0x3790B4 - 0x379190
; =========================================================

3790B4:  PUSH            {R4,R6,R7,LR}
3790B6:  ADD             R7, SP, #8
3790B8:  LDR             R1, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x3790C2)
3790BA:  MOV.W           LR, #0
3790BE:  ADD             R1, PC; _ZN6CPools13ms_pEventPoolE_ptr
3790C0:  LDR             R1, [R1]; CPools::ms_pEventPool ...
3790C2:  LDR             R1, [R1]; CPools::ms_pEventPool
3790C4:  LDRD.W          R12, R4, [R1,#8]
3790C8:  ADDS            R4, #1
3790CA:  STR             R4, [R1,#0xC]
3790CC:  CMP             R4, R12
3790CE:  BNE             loc_3790DE
3790D0:  MOVS            R4, #0
3790D2:  MOVS.W          R2, LR,LSL#31
3790D6:  STR             R4, [R1,#0xC]
3790D8:  BNE             loc_379110
3790DA:  MOV.W           LR, #1
3790DE:  LDR             R2, [R1,#4]
3790E0:  LDRSB           R3, [R2,R4]
3790E2:  CMP.W           R3, #0xFFFFFFFF
3790E6:  BGT             loc_3790C8
3790E8:  AND.W           R3, R3, #0x7F
3790EC:  STRB            R3, [R2,R4]
3790EE:  LDR             R2, [R1,#4]
3790F0:  LDR             R3, [R1,#0xC]
3790F2:  LDRB            R4, [R2,R3]
3790F4:  AND.W           R12, R4, #0x80
3790F8:  ADDS            R4, #1
3790FA:  AND.W           R4, R4, #0x7F
3790FE:  ORR.W           R4, R4, R12
379102:  STRB            R4, [R2,R3]
379104:  LDR             R2, [R1]
379106:  LDR             R1, [R1,#0xC]
379108:  ADD.W           R1, R1, R1,LSL#4
37910C:  ADD.W           R4, R2, R1,LSL#2
379110:  LDR.W           R12, =(_ZTV16CEventSoundQuiet_ptr - 0x37911E)
379114:  MOVS            R1, #0
379116:  LDRD.W          R2, LR, [R0,#0x10]
37911A:  ADD             R12, PC; _ZTV16CEventSoundQuiet_ptr
37911C:  LDR             R3, [R0,#0x18]
37911E:  STR             R1, [R4,#4]
379120:  MOV             R1, #0xC80100
379128:  LDR.W           R12, [R12]; `vtable for'CEventSoundQuiet ...
37912C:  STR             R1, [R4,#8]
37912E:  MOVW            R1, #0xFFFF
379132:  STRH            R1, [R4,#0xC]
379134:  ADD.W           R1, R12, #8
379138:  STRD.W          LR, R3, [R4,#0x14]
37913C:  CMP             R2, #0
37913E:  STR             R1, [R4]
379140:  MOV             R1, R4
379142:  STR.W           R2, [R1,#0x10]!; CEntity **
379146:  VLDR            D16, [R0,#0x1C]
37914A:  LDR             R0, [R0,#0x24]
37914C:  STR             R0, [R4,#0x24]
37914E:  VSTR            D16, [R4,#0x1C]
379152:  BEQ             loc_37915C
379154:  MOV             R0, R2; this
379156:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
37915A:  LDR             R3, [R4,#0x18]
37915C:  ADDS            R0, R3, #1
37915E:  BEQ             loc_379164
379160:  MOV             R0, R4
379162:  POP             {R4,R6,R7,PC}
379164:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x379170)
379166:  ADD.W           R0, R4, #0x1C
37916A:  LDR             R2, [R4,#0x10]
37916C:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
37916E:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
379170:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
379172:  STR             R1, [R4,#0x18]
379174:  LDR             R1, [R2,#0x14]
379176:  ADD.W           R3, R1, #0x30 ; '0'
37917A:  CMP             R1, #0
37917C:  IT EQ
37917E:  ADDEQ           R3, R2, #4
379180:  VLDR            D16, [R3]
379184:  LDR             R1, [R3,#8]
379186:  STR             R1, [R0,#8]
379188:  VSTR            D16, [R0]
37918C:  MOV             R0, R4
37918E:  POP             {R4,R6,R7,PC}
