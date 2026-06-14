; =========================================================
; Game Engine Function: _ZNK16CEventPedToChase5CloneEv
; Address            : 0x37A240 - 0x37A2C2
; =========================================================

37A240:  PUSH            {R4,R6,R7,LR}
37A242:  ADD             R7, SP, #8
37A244:  LDR             R1, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x37A24E)
37A246:  MOV.W           LR, #0
37A24A:  ADD             R1, PC; _ZN6CPools13ms_pEventPoolE_ptr
37A24C:  LDR             R1, [R1]; CPools::ms_pEventPool ...
37A24E:  LDR             R1, [R1]; CPools::ms_pEventPool
37A250:  LDRD.W          R12, R4, [R1,#8]
37A254:  ADDS            R4, #1
37A256:  STR             R4, [R1,#0xC]
37A258:  CMP             R4, R12
37A25A:  BNE             loc_37A26A
37A25C:  MOVS            R4, #0
37A25E:  MOVS.W          R2, LR,LSL#31
37A262:  STR             R4, [R1,#0xC]
37A264:  BNE             loc_37A29C
37A266:  MOV.W           LR, #1
37A26A:  LDR             R2, [R1,#4]
37A26C:  LDRSB           R3, [R2,R4]
37A26E:  CMP.W           R3, #0xFFFFFFFF
37A272:  BGT             loc_37A254
37A274:  AND.W           R3, R3, #0x7F
37A278:  STRB            R3, [R2,R4]
37A27A:  LDR             R2, [R1,#4]
37A27C:  LDR             R3, [R1,#0xC]
37A27E:  LDRB            R4, [R2,R3]
37A280:  AND.W           R12, R4, #0x80
37A284:  ADDS            R4, #1
37A286:  AND.W           R4, R4, #0x7F
37A28A:  ORR.W           R4, R4, R12
37A28E:  STRB            R4, [R2,R3]
37A290:  LDR             R2, [R1]
37A292:  LDR             R1, [R1,#0xC]
37A294:  ADD.W           R1, R1, R1,LSL#4
37A298:  ADD.W           R4, R2, R1,LSL#2
37A29C:  LDR             R1, =(_ZTV16CEventPedToChase_ptr - 0x37A2A6)
37A29E:  MOVS            R2, #0
37A2A0:  LDR             R0, [R0,#0xC]; this
37A2A2:  ADD             R1, PC; _ZTV16CEventPedToChase_ptr
37A2A4:  STRB            R2, [R4,#8]
37A2A6:  CMP             R0, #0
37A2A8:  LDR             R1, [R1]; `vtable for'CEventPedToChase ...
37A2AA:  ADD.W           R1, R1, #8
37A2AE:  STRD.W          R1, R2, [R4]
37A2B2:  MOV             R1, R4
37A2B4:  STR.W           R0, [R1,#0xC]!; CEntity **
37A2B8:  IT NE
37A2BA:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
37A2BE:  MOV             R0, R4
37A2C0:  POP             {R4,R6,R7,PC}
