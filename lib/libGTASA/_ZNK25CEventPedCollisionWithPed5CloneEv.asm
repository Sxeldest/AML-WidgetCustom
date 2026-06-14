; =========================================================
; Game Engine Function: _ZNK25CEventPedCollisionWithPed5CloneEv
; Address            : 0x37961C - 0x3796D2
; =========================================================

37961C:  PUSH            {R4-R7,LR}
37961E:  ADD             R7, SP, #0xC
379620:  PUSH.W          {R11}
379624:  LDR             R1, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x37962E)
379626:  MOV.W           LR, #0
37962A:  ADD             R1, PC; _ZN6CPools13ms_pEventPoolE_ptr
37962C:  LDR             R1, [R1]; CPools::ms_pEventPool ...
37962E:  LDR             R1, [R1]; CPools::ms_pEventPool
379630:  LDRD.W          R12, R4, [R1,#8]
379634:  ADDS            R4, #1
379636:  STR             R4, [R1,#0xC]
379638:  CMP             R4, R12
37963A:  BNE             loc_37964A
37963C:  MOVS            R4, #0
37963E:  MOVS.W          R2, LR,LSL#31
379642:  STR             R4, [R1,#0xC]
379644:  BNE             loc_37967C
379646:  MOV.W           LR, #1
37964A:  LDR             R2, [R1,#4]
37964C:  LDRSB           R3, [R2,R4]
37964E:  CMP.W           R3, #0xFFFFFFFF
379652:  BGT             loc_379634
379654:  AND.W           R3, R3, #0x7F
379658:  STRB            R3, [R2,R4]
37965A:  LDR             R2, [R1,#4]
37965C:  LDR             R3, [R1,#0xC]
37965E:  LDRB            R4, [R2,R3]
379660:  AND.W           R12, R4, #0x80
379664:  ADDS            R4, #1
379666:  AND.W           R4, R4, #0x7F
37966A:  ORR.W           R4, R4, R12
37966E:  STRB            R4, [R2,R3]
379670:  LDR             R2, [R1]
379672:  LDR             R1, [R1,#0xC]
379674:  ADD.W           R1, R1, R1,LSL#4
379678:  ADD.W           R4, R2, R1,LSL#2
37967C:  LDR.W           LR, =(_ZTV25CEventPedCollisionWithPed_ptr - 0x37968C)
379680:  MOVS            R6, #0
379682:  LDRD.W          R3, R2, [R0,#0xC]
379686:  CMP             R2, #0
379688:  ADD             LR, PC; _ZTV25CEventPedCollisionWithPed_ptr
37968A:  LDRH            R1, [R0,#0xA]
37968C:  LDR.W           R12, [R0,#0x2C]
379690:  LDR.W           R5, [LR]; `vtable for'CEventPedCollisionWithPed ...
379694:  STRB            R6, [R4,#8]
379696:  STRH            R1, [R4,#0xA]
379698:  ADD.W           R1, R5, #8
37969C:  STR             R3, [R4,#0xC]
37969E:  STRD.W          R1, R6, [R4]
3796A2:  MOV             R1, R4
3796A4:  STR.W           R2, [R1,#0x10]!; CEntity **
3796A8:  VLDR            D16, [R0,#0x14]
3796AC:  LDR             R3, [R0,#0x1C]
3796AE:  STR             R3, [R4,#0x1C]
3796B0:  VSTR            D16, [R4,#0x14]
3796B4:  VLDR            D16, [R0,#0x20]
3796B8:  LDR             R3, [R0,#0x28]
3796BA:  STRD.W          R3, R12, [R4,#0x28]
3796BE:  VSTR            D16, [R4,#0x20]
3796C2:  ITT NE
3796C4:  MOVNE           R0, R2; this
3796C6:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
3796CA:  MOV             R0, R4
3796CC:  POP.W           {R11}
3796D0:  POP             {R4-R7,PC}
