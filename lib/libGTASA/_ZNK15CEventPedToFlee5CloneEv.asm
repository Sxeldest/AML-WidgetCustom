; =========================================================
; Game Engine Function: _ZNK15CEventPedToFlee5CloneEv
; Address            : 0x37A2D8 - 0x37A35A
; =========================================================

37A2D8:  PUSH            {R4,R6,R7,LR}
37A2DA:  ADD             R7, SP, #8
37A2DC:  LDR             R1, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x37A2E6)
37A2DE:  MOV.W           LR, #0
37A2E2:  ADD             R1, PC; _ZN6CPools13ms_pEventPoolE_ptr
37A2E4:  LDR             R1, [R1]; CPools::ms_pEventPool ...
37A2E6:  LDR             R1, [R1]; CPools::ms_pEventPool
37A2E8:  LDRD.W          R12, R4, [R1,#8]
37A2EC:  ADDS            R4, #1
37A2EE:  STR             R4, [R1,#0xC]
37A2F0:  CMP             R4, R12
37A2F2:  BNE             loc_37A302
37A2F4:  MOVS            R4, #0
37A2F6:  MOVS.W          R2, LR,LSL#31
37A2FA:  STR             R4, [R1,#0xC]
37A2FC:  BNE             loc_37A334
37A2FE:  MOV.W           LR, #1
37A302:  LDR             R2, [R1,#4]
37A304:  LDRSB           R3, [R2,R4]
37A306:  CMP.W           R3, #0xFFFFFFFF
37A30A:  BGT             loc_37A2EC
37A30C:  AND.W           R3, R3, #0x7F
37A310:  STRB            R3, [R2,R4]
37A312:  LDR             R2, [R1,#4]
37A314:  LDR             R3, [R1,#0xC]
37A316:  LDRB            R4, [R2,R3]
37A318:  AND.W           R12, R4, #0x80
37A31C:  ADDS            R4, #1
37A31E:  AND.W           R4, R4, #0x7F
37A322:  ORR.W           R4, R4, R12
37A326:  STRB            R4, [R2,R3]
37A328:  LDR             R2, [R1]
37A32A:  LDR             R1, [R1,#0xC]
37A32C:  ADD.W           R1, R1, R1,LSL#4
37A330:  ADD.W           R4, R2, R1,LSL#2
37A334:  LDR             R1, =(_ZTV15CEventPedToFlee_ptr - 0x37A33E)
37A336:  MOVS            R2, #0
37A338:  LDR             R0, [R0,#0xC]; this
37A33A:  ADD             R1, PC; _ZTV15CEventPedToFlee_ptr
37A33C:  STRB            R2, [R4,#8]
37A33E:  CMP             R0, #0
37A340:  LDR             R1, [R1]; `vtable for'CEventPedToFlee ...
37A342:  ADD.W           R1, R1, #8
37A346:  STRD.W          R1, R2, [R4]
37A34A:  MOV             R1, R4
37A34C:  STR.W           R0, [R1,#0xC]!; CEntity **
37A350:  IT NE
37A352:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
37A356:  MOV             R0, R4
37A358:  POP             {R4,R6,R7,PC}
