; =========================================================
; Game Engine Function: _ZNK15CEventAreaCodes5CloneEv
; Address            : 0x37B040 - 0x37B0C2
; =========================================================

37B040:  PUSH            {R4,R6,R7,LR}
37B042:  ADD             R7, SP, #8
37B044:  LDR             R1, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x37B04E)
37B046:  MOV.W           LR, #0
37B04A:  ADD             R1, PC; _ZN6CPools13ms_pEventPoolE_ptr
37B04C:  LDR             R1, [R1]; CPools::ms_pEventPool ...
37B04E:  LDR             R1, [R1]; CPools::ms_pEventPool
37B050:  LDRD.W          R12, R4, [R1,#8]
37B054:  ADDS            R4, #1
37B056:  STR             R4, [R1,#0xC]
37B058:  CMP             R4, R12
37B05A:  BNE             loc_37B06A
37B05C:  MOVS            R4, #0
37B05E:  MOVS.W          R2, LR,LSL#31
37B062:  STR             R4, [R1,#0xC]
37B064:  BNE             loc_37B09C
37B066:  MOV.W           LR, #1
37B06A:  LDR             R2, [R1,#4]
37B06C:  LDRSB           R3, [R2,R4]
37B06E:  CMP.W           R3, #0xFFFFFFFF
37B072:  BGT             loc_37B054
37B074:  AND.W           R3, R3, #0x7F
37B078:  STRB            R3, [R2,R4]
37B07A:  LDR             R2, [R1,#4]
37B07C:  LDR             R3, [R1,#0xC]
37B07E:  LDRB            R4, [R2,R3]
37B080:  AND.W           R12, R4, #0x80
37B084:  ADDS            R4, #1
37B086:  AND.W           R4, R4, #0x7F
37B08A:  ORR.W           R4, R4, R12
37B08E:  STRB            R4, [R2,R3]
37B090:  LDR             R2, [R1]
37B092:  LDR             R1, [R1,#0xC]
37B094:  ADD.W           R1, R1, R1,LSL#4
37B098:  ADD.W           R4, R2, R1,LSL#2
37B09C:  LDR             R1, =(_ZTV15CEventAreaCodes_ptr - 0x37B0A6)
37B09E:  MOVS            R2, #0
37B0A0:  LDR             R0, [R0,#0xC]; this
37B0A2:  ADD             R1, PC; _ZTV15CEventAreaCodes_ptr
37B0A4:  STRB            R2, [R4,#8]
37B0A6:  CMP             R0, #0
37B0A8:  LDR             R1, [R1]; `vtable for'CEventAreaCodes ...
37B0AA:  ADD.W           R1, R1, #8
37B0AE:  STRD.W          R1, R2, [R4]
37B0B2:  MOV             R1, R4
37B0B4:  STR.W           R0, [R1,#0xC]!; CEntity **
37B0B8:  IT NE
37B0BA:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
37B0BE:  MOV             R0, R4
37B0C0:  POP             {R4,R6,R7,PC}
