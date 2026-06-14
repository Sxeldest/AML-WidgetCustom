; =========================================================
; Game Engine Function: sub_1CA48C
; Address            : 0x1CA48C - 0x1CA510
; =========================================================

1CA48C:  PUSH            {R4-R7,LR}
1CA48E:  ADD             R7, SP, #0xC
1CA490:  PUSH.W          {R8-R11}
1CA494:  SUB             SP, SP, #4
1CA496:  MOV             R8, R0
1CA498:  LDR             R0, =(RpUVAnimMaterialGlobals_ptr - 0x1CA49E)
1CA49A:  ADD             R0, PC; RpUVAnimMaterialGlobals_ptr
1CA49C:  LDR             R0, [R0]; RpUVAnimMaterialGlobals
1CA49E:  LDR             R1, [R0]
1CA4A0:  ADD.W           R5, R8, R1
1CA4A4:  LDR.W           R0, [R8,R1]
1CA4A8:  CMP             R0, #0
1CA4AA:  IT NE
1CA4AC:  BLXNE           j__Z15RwMatrixDestroyP11RwMatrixTag; RwMatrixDestroy(RwMatrixTag *)
1CA4B0:  LDR             R0, [R5,#4]
1CA4B2:  MOVS            R4, #0
1CA4B4:  STR             R4, [R5]
1CA4B6:  CMP             R0, #0
1CA4B8:  IT NE
1CA4BA:  BLXNE           j__Z15RwMatrixDestroyP11RwMatrixTag; RwMatrixDestroy(RwMatrixTag *)
1CA4BE:  LDR             R0, =(RwEngineInstance_ptr - 0x1CA4CC)
1CA4C0:  ADD.W           R9, R5, #8
1CA4C4:  LDR.W           R11, =(dword_6B8AE8 - 0x1CA4D0)
1CA4C8:  ADD             R0, PC; RwEngineInstance_ptr
1CA4CA:  STR             R4, [R5,#4]
1CA4CC:  ADD             R11, PC; dword_6B8AE8
1CA4CE:  LDR.W           R10, [R0]; RwEngineInstance
1CA4D2:  LDR.W           R5, [R9,R4,LSL#2]
1CA4D6:  CBZ             R5, loc_1CA500
1CA4D8:  LDR             R6, [R5]
1CA4DA:  LDR             R0, [R6,#0x14]
1CA4DC:  LDR             R1, [R0,#0x40]
1CA4DE:  SUBS            R1, #1
1CA4E0:  STR             R1, [R0,#0x40]
1CA4E2:  BNE             loc_1CA4FA
1CA4E4:  LDR.W           R2, [R10]
1CA4E8:  LDR             R1, [R6,#0x14]
1CA4EA:  LDR.W           R0, [R11]
1CA4EE:  LDR.W           R2, [R2,#0x140]
1CA4F2:  BLX             R2
1CA4F4:  MOV             R0, R6
1CA4F6:  BLX             j__Z22RtAnimAnimationDestroyP15RtAnimAnimation; RtAnimAnimationDestroy(RtAnimAnimation *)
1CA4FA:  MOV             R0, R5
1CA4FC:  BLX             j__Z25RtAnimInterpolatorDestroyP18RtAnimInterpolator; RtAnimInterpolatorDestroy(RtAnimInterpolator *)
1CA500:  ADDS            R4, #1
1CA502:  CMP             R4, #8
1CA504:  BNE             loc_1CA4D2
1CA506:  MOV             R0, R8
1CA508:  ADD             SP, SP, #4
1CA50A:  POP.W           {R8-R11}
1CA50E:  POP             {R4-R7,PC}
