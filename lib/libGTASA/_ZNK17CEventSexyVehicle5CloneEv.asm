; =========================================================
; Game Engine Function: _ZNK17CEventSexyVehicle5CloneEv
; Address            : 0x37A1A8 - 0x37A22A
; =========================================================

37A1A8:  PUSH            {R4,R6,R7,LR}
37A1AA:  ADD             R7, SP, #8
37A1AC:  LDR             R1, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x37A1B6)
37A1AE:  MOV.W           LR, #0
37A1B2:  ADD             R1, PC; _ZN6CPools13ms_pEventPoolE_ptr
37A1B4:  LDR             R1, [R1]; CPools::ms_pEventPool ...
37A1B6:  LDR             R1, [R1]; CPools::ms_pEventPool
37A1B8:  LDRD.W          R12, R4, [R1,#8]
37A1BC:  ADDS            R4, #1
37A1BE:  STR             R4, [R1,#0xC]
37A1C0:  CMP             R4, R12
37A1C2:  BNE             loc_37A1D2
37A1C4:  MOVS            R4, #0
37A1C6:  MOVS.W          R2, LR,LSL#31
37A1CA:  STR             R4, [R1,#0xC]
37A1CC:  BNE             loc_37A204
37A1CE:  MOV.W           LR, #1
37A1D2:  LDR             R2, [R1,#4]
37A1D4:  LDRSB           R3, [R2,R4]
37A1D6:  CMP.W           R3, #0xFFFFFFFF
37A1DA:  BGT             loc_37A1BC
37A1DC:  AND.W           R3, R3, #0x7F
37A1E0:  STRB            R3, [R2,R4]
37A1E2:  LDR             R2, [R1,#4]
37A1E4:  LDR             R3, [R1,#0xC]
37A1E6:  LDRB            R4, [R2,R3]
37A1E8:  AND.W           R12, R4, #0x80
37A1EC:  ADDS            R4, #1
37A1EE:  AND.W           R4, R4, #0x7F
37A1F2:  ORR.W           R4, R4, R12
37A1F6:  STRB            R4, [R2,R3]
37A1F8:  LDR             R2, [R1]
37A1FA:  LDR             R1, [R1,#0xC]
37A1FC:  ADD.W           R1, R1, R1,LSL#4
37A200:  ADD.W           R4, R2, R1,LSL#2
37A204:  LDR             R1, =(_ZTV17CEventSexyVehicle_ptr - 0x37A20E)
37A206:  MOVS            R2, #0
37A208:  LDR             R0, [R0,#0xC]; this
37A20A:  ADD             R1, PC; _ZTV17CEventSexyVehicle_ptr
37A20C:  STRB            R2, [R4,#8]
37A20E:  CMP             R0, #0
37A210:  LDR             R1, [R1]; `vtable for'CEventSexyVehicle ...
37A212:  ADD.W           R1, R1, #8
37A216:  STRD.W          R1, R2, [R4]
37A21A:  MOV             R1, R4
37A21C:  STR.W           R0, [R1,#0xC]!; CEntity **
37A220:  IT NE
37A222:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
37A226:  MOV             R0, R4
37A228:  POP             {R4,R6,R7,PC}
