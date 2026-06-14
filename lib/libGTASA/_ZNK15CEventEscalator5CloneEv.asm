; =========================================================
; Game Engine Function: _ZNK15CEventEscalator5CloneEv
; Address            : 0x3793E4 - 0x379448
; =========================================================

3793E4:  LDR             R0, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x3793EA)
3793E6:  ADD             R0, PC; _ZN6CPools13ms_pEventPoolE_ptr
3793E8:  LDR             R0, [R0]; CPools::ms_pEventPool ...
3793EA:  LDR             R0, [R0]; CPools::ms_pEventPool
3793EC:  LDRD.W          R12, R1, [R0,#8]
3793F0:  ADDS            R1, #1
3793F2:  LDR             R3, [R0,#4]
3793F4:  CMP             R1, R12
3793F6:  IT EQ
3793F8:  MOVEQ           R1, #0
3793FA:  STR             R1, [R0,#0xC]
3793FC:  LDRSB           R2, [R3,R1]
3793FE:  CMP.W           R2, #0xFFFFFFFF
379402:  BGT             loc_3793F0
379404:  PUSH            {R7,LR}
379406:  MOV             R7, SP
379408:  AND.W           R2, R2, #0x7F
37940C:  STRB            R2, [R3,R1]
37940E:  LDR             R1, [R0,#4]
379410:  LDR             R2, [R0,#0xC]
379412:  LDR.W           R12, =(_ZTV15CEventEscalator_ptr - 0x37941C)
379416:  LDRB            R3, [R1,R2]
379418:  ADD             R12, PC; _ZTV15CEventEscalator_ptr
37941A:  AND.W           LR, R3, #0x80
37941E:  ADDS            R3, #1
379420:  AND.W           R3, R3, #0x7F
379424:  ORR.W           R3, R3, LR
379428:  STRB            R3, [R1,R2]
37942A:  LDR             R1, [R0]
37942C:  LDR             R0, [R0,#0xC]
37942E:  LDR.W           R2, [R12]; `vtable for'CEventEscalator ...
379432:  ADD.W           R0, R0, R0,LSL#4
379436:  ADDS            R2, #8
379438:  STR.W           R2, [R1,R0,LSL#2]
37943C:  ADD.W           R0, R1, R0,LSL#2
379440:  MOVS            R1, #0
379442:  STRD.W          R1, R1, [R0,#4]
379446:  POP             {R7,PC}
