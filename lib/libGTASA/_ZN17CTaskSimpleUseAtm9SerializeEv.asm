; =========================================================
; Game Engine Function: _ZN17CTaskSimpleUseAtm9SerializeEv
; Address            : 0x357860 - 0x3578C8
; =========================================================

357860:  PUSH            {R4-R7,LR}
357862:  ADD             R7, SP, #0xC
357864:  PUSH.W          {R11}
357868:  MOV             R4, R0
35786A:  LDR             R0, [R4]
35786C:  LDR             R1, [R0,#0x14]
35786E:  MOV             R0, R4
357870:  BLX             R1
357872:  MOV             R5, R0
357874:  LDR             R0, =(UseDataFence_ptr - 0x35787A)
357876:  ADD             R0, PC; UseDataFence_ptr
357878:  LDR             R0, [R0]; UseDataFence
35787A:  LDRB            R0, [R0]
35787C:  CMP             R0, #0
35787E:  IT NE
357880:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
357884:  MOVS            R0, #4; byte_count
357886:  BLX             malloc
35788A:  MOV             R6, R0
35788C:  MOVS            R1, #byte_4; void *
35788E:  STR             R5, [R6]
357890:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
357894:  MOV             R0, R6; p
357896:  BLX             free
35789A:  LDR             R0, [R4]
35789C:  LDR             R1, [R0,#0x14]
35789E:  MOV             R0, R4
3578A0:  BLX             R1
3578A2:  CMP.W           R0, #0x1A4
3578A6:  ITT EQ
3578A8:  POPEQ.W         {R11}
3578AC:  POPEQ           {R4-R7,PC}
3578AE:  LDR             R0, [R4]
3578B0:  LDR             R1, [R0,#0x14]
3578B2:  MOV             R0, R4
3578B4:  BLX             R1
3578B6:  MOV             R1, R0; int
3578B8:  MOV.W           R0, #0x1A4; int
3578BC:  POP.W           {R11}
3578C0:  POP.W           {R4-R7,LR}
3578C4:  B.W             sub_1941D4
