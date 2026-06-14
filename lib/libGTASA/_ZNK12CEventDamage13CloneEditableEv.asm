; =========================================================
; Game Engine Function: _ZNK12CEventDamage13CloneEditableEv
; Address            : 0x372550 - 0x3725F8
; =========================================================

372550:  PUSH            {R4-R7,LR}
372552:  ADD             R7, SP, #0xC
372554:  PUSH.W          {R11}
372558:  MOV             R6, R0
37255A:  LDR             R0, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x372562)
37255C:  MOVS            R2, #0
37255E:  ADD             R0, PC; _ZN6CPools13ms_pEventPoolE_ptr
372560:  LDR             R0, [R0]; CPools::ms_pEventPool ...
372562:  LDR             R0, [R0]; CPools::ms_pEventPool
372564:  LDRD.W          R1, R5, [R0,#8]
372568:  ADDS            R5, #1
37256A:  STR             R5, [R0,#0xC]
37256C:  CMP             R5, R1
37256E:  BNE             loc_37257A
372570:  MOVS            R5, #0
372572:  LSLS            R2, R2, #0x1F
372574:  STR             R5, [R0,#0xC]
372576:  BNE             loc_3725AA
372578:  MOVS            R2, #1
37257A:  LDR             R3, [R0,#4]
37257C:  LDRSB           R4, [R3,R5]
37257E:  CMP.W           R4, #0xFFFFFFFF
372582:  BGT             loc_372568
372584:  AND.W           R1, R4, #0x7F
372588:  STRB            R1, [R3,R5]
37258A:  LDR             R1, [R0,#4]
37258C:  LDR             R2, [R0,#0xC]
37258E:  LDRB            R3, [R1,R2]
372590:  AND.W           R5, R3, #0x80
372594:  ADDS            R3, #1
372596:  AND.W           R3, R3, #0x7F
37259A:  ORRS            R3, R5
37259C:  STRB            R3, [R1,R2]
37259E:  LDR             R1, [R0]
3725A0:  LDR             R0, [R0,#0xC]
3725A2:  ADD.W           R0, R0, R0,LSL#4
3725A6:  ADD.W           R5, R1, R0,LSL#2
3725AA:  LDR             R0, =(_ZTV12CEventDamage_ptr - 0x3725BA)
3725AC:  MOVW            R2, #0x100
3725B0:  MOVS            R1, #0
3725B2:  MOVT            R2, #0xC8
3725B6:  ADD             R0, PC; _ZTV12CEventDamage_ptr
3725B8:  STR             R1, [R5,#4]
3725BA:  STR             R2, [R5,#8]
3725BC:  MOVW            R2, #0xFFFF
3725C0:  LDR             R0, [R0]; `vtable for'CEventDamage ...
3725C2:  STRH            R2, [R5,#0xC]
3725C4:  ADDS            R0, #8
3725C6:  STRD.W          R1, R1, [R5,#0x34]
3725CA:  STR             R1, [R5,#0x3C]
3725CC:  MOV             R1, R6; CEventDamage *
3725CE:  STR             R0, [R5]
3725D0:  MOV             R0, R5; this
3725D2:  BLX             j__ZN12CEventDamage4FromERKS_; CEventDamage::From(CEventDamage const&)
3725D6:  LDR             R0, [R6,#0x28]
3725D8:  LDRB.W          R1, [R5,#0x21]
3725DC:  STR             R0, [R5,#0x28]
3725DE:  LDRB.W          R0, [R6,#0x21]
3725E2:  AND.W           R1, R1, #0xEF
3725E6:  AND.W           R0, R0, #0x10
3725EA:  ORRS            R0, R1
3725EC:  STRB.W          R0, [R5,#0x21]
3725F0:  MOV             R0, R5
3725F2:  POP.W           {R11}
3725F6:  POP             {R4-R7,PC}
