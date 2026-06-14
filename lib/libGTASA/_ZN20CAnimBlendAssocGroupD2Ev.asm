; =========================================================
; Game Engine Function: _ZN20CAnimBlendAssocGroupD2Ev
; Address            : 0x38916E - 0x3891AE
; =========================================================

38916E:  PUSH            {R4-R7,LR}
389170:  ADD             R7, SP, #0xC
389172:  PUSH.W          {R8}
389176:  MOV             R4, R0
389178:  LDR             R0, [R4,#4]
38917A:  CBZ             R0, loc_3891A6
38917C:  LDR.W           R1, [R0,#-4]
389180:  SUB.W           R8, R0, #8
389184:  CBZ             R1, loc_38919A
389186:  SUB.W           R6, R0, #0x14
38918A:  ADD.W           R0, R1, R1,LSL#2
38918E:  LSLS            R5, R0, #2
389190:  ADDS            R0, R6, R5; this
389192:  BLX             j__ZN27CAnimBlendStaticAssociationD2Ev; CAnimBlendStaticAssociation::~CAnimBlendStaticAssociation()
389196:  SUBS            R5, #0x14
389198:  BNE             loc_389190
38919A:  MOV             R0, R8; void *
38919C:  BLX             _ZdaPv; operator delete[](void *)
3891A0:  MOVS            R0, #0
3891A2:  STRD.W          R0, R0, [R4,#4]
3891A6:  MOV             R0, R4
3891A8:  POP.W           {R8}
3891AC:  POP             {R4-R7,PC}
