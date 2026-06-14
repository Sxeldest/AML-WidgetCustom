; =========================================================
; Game Engine Function: _ZNK22CEventVehicleCollision5CloneEv
; Address            : 0x379548 - 0x379606
; =========================================================

379548:  PUSH            {R4-R7,LR}
37954A:  ADD             R7, SP, #0xC
37954C:  PUSH.W          {R11}
379550:  LDR             R1, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x37955A)
379552:  MOV.W           LR, #0
379556:  ADD             R1, PC; _ZN6CPools13ms_pEventPoolE_ptr
379558:  LDR             R1, [R1]; CPools::ms_pEventPool ...
37955A:  LDR             R1, [R1]; CPools::ms_pEventPool
37955C:  LDRD.W          R12, R4, [R1,#8]
379560:  ADDS            R4, #1
379562:  STR             R4, [R1,#0xC]
379564:  CMP             R4, R12
379566:  BNE             loc_379576
379568:  MOVS            R4, #0
37956A:  MOVS.W          R2, LR,LSL#31
37956E:  STR             R4, [R1,#0xC]
379570:  BNE             loc_3795A8
379572:  MOV.W           LR, #1
379576:  LDR             R2, [R1,#4]
379578:  LDRSB           R3, [R2,R4]
37957A:  CMP.W           R3, #0xFFFFFFFF
37957E:  BGT             loc_379560
379580:  AND.W           R3, R3, #0x7F
379584:  STRB            R3, [R2,R4]
379586:  LDR             R2, [R1,#4]
379588:  LDR             R3, [R1,#0xC]
37958A:  LDRB            R4, [R2,R3]
37958C:  AND.W           R12, R4, #0x80
379590:  ADDS            R4, #1
379592:  AND.W           R4, R4, #0x7F
379596:  ORR.W           R4, R4, R12
37959A:  STRB            R4, [R2,R3]
37959C:  LDR             R2, [R1]
37959E:  LDR             R1, [R1,#0xC]
3795A0:  ADD.W           R1, R1, R1,LSL#4
3795A4:  ADD.W           R4, R2, R1,LSL#2
3795A8:  LDR.W           LR, =(_ZTV22CEventVehicleCollision_ptr - 0x3795B8)
3795AC:  MOVS            R6, #0
3795AE:  LDRD.W          R3, R2, [R0,#0x10]
3795B2:  CMP             R2, #0
3795B4:  ADD             LR, PC; _ZTV22CEventVehicleCollision_ptr
3795B6:  LDRH            R1, [R0,#0xA]
3795B8:  LDRB.W          R12, [R0,#0x30]
3795BC:  LDR.W           R5, [LR]; `vtable for'CEventVehicleCollision ...
3795C0:  STRB            R6, [R4,#8]
3795C2:  STRH            R1, [R4,#0xA]
3795C4:  ADD.W           R1, R5, #8
3795C8:  STRH            R6, [R4,#0xC]
3795CA:  STR             R3, [R4,#0x10]
3795CC:  STRD.W          R1, R6, [R4]
3795D0:  MOV             R1, R4
3795D2:  STR.W           R2, [R1,#0x14]!; CEntity **
3795D6:  VLDR            D16, [R0,#0x18]
3795DA:  LDR             R3, [R0,#0x20]
3795DC:  STR             R3, [R4,#0x20]
3795DE:  VSTR            D16, [R4,#0x18]
3795E2:  VLDR            D16, [R0,#0x24]
3795E6:  LDR             R3, [R0,#0x2C]
3795E8:  STR             R3, [R4,#0x2C]
3795EA:  STRB.W          R12, [R4,#0x30]
3795EE:  STRB.W          R6, [R4,#0x31]
3795F2:  VSTR            D16, [R4,#0x24]
3795F6:  ITT NE
3795F8:  MOVNE           R0, R2; this
3795FA:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
3795FE:  MOV             R0, R4
379600:  POP.W           {R11}
379604:  POP             {R4-R7,PC}
