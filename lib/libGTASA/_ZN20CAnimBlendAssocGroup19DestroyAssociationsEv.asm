; =========================================================
; Game Engine Function: _ZN20CAnimBlendAssocGroup19DestroyAssociationsEv
; Address            : 0x3891AE - 0x3891EC
; =========================================================

3891AE:  PUSH            {R4-R7,LR}
3891B0:  ADD             R7, SP, #0xC
3891B2:  PUSH.W          {R8}
3891B6:  MOV             R4, R0
3891B8:  LDR             R0, [R4,#4]
3891BA:  CBZ             R0, loc_3891E6
3891BC:  LDR.W           R1, [R0,#-4]
3891C0:  SUB.W           R8, R0, #8
3891C4:  CBZ             R1, loc_3891DA
3891C6:  SUB.W           R6, R0, #0x14
3891CA:  ADD.W           R0, R1, R1,LSL#2
3891CE:  LSLS            R5, R0, #2
3891D0:  ADDS            R0, R6, R5; this
3891D2:  BLX             j__ZN27CAnimBlendStaticAssociationD2Ev; CAnimBlendStaticAssociation::~CAnimBlendStaticAssociation()
3891D6:  SUBS            R5, #0x14
3891D8:  BNE             loc_3891D0
3891DA:  MOV             R0, R8; void *
3891DC:  BLX             _ZdaPv; operator delete[](void *)
3891E0:  MOVS            R0, #0
3891E2:  STRD.W          R0, R0, [R4,#4]
3891E6:  POP.W           {R8}
3891EA:  POP             {R4-R7,PC}
