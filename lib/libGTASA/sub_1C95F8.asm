; =========================================================
; Game Engine Function: sub_1C95F8
; Address            : 0x1C95F8 - 0x1C964C
; =========================================================

1C95F8:  PUSH            {R4-R7,LR}
1C95FA:  ADD             R7, SP, #0xC
1C95FC:  PUSH.W          {R11}
1C9600:  MOV             R4, R0
1C9602:  LDR             R0, =(_rpSkinGlobals_ptr - 0x1C9608)
1C9604:  ADD             R0, PC; _rpSkinGlobals_ptr
1C9606:  LDR             R0, [R0]; _rpSkinGlobals
1C9608:  LDR             R0, [R0,#(dword_6B727C - 0x6B7274)]
1C960A:  LDR             R5, [R4,R0]
1C960C:  CBZ             R5, loc_1C9644
1C960E:  MOV             R0, R4
1C9610:  BLX             j__rpSkinDeinitialize
1C9614:  LDR             R0, [R5,#0x38]
1C9616:  CBZ             R0, loc_1C9626
1C9618:  LDR             R1, =(RwEngineInstance_ptr - 0x1C961E)
1C961A:  ADD             R1, PC; RwEngineInstance_ptr
1C961C:  LDR             R1, [R1]; RwEngineInstance
1C961E:  LDR             R1, [R1]
1C9620:  LDR.W           R1, [R1,#0x130]
1C9624:  BLX             R1
1C9626:  LDR             R0, =(RwEngineInstance_ptr - 0x1C962E)
1C9628:  LDR             R1, =(_rpSkinGlobals_ptr - 0x1C9630)
1C962A:  ADD             R0, PC; RwEngineInstance_ptr
1C962C:  ADD             R1, PC; _rpSkinGlobals_ptr
1C962E:  LDR             R0, [R0]; RwEngineInstance
1C9630:  LDR             R6, [R1]; _rpSkinGlobals
1C9632:  LDR             R1, [R0]
1C9634:  LDR             R0, [R6,#(dword_6B728C - 0x6B7274)]
1C9636:  LDR.W           R2, [R1,#0x140]
1C963A:  MOV             R1, R5
1C963C:  BLX             R2
1C963E:  LDR             R0, [R6,#(dword_6B727C - 0x6B7274)]
1C9640:  MOVS            R1, #0
1C9642:  STR             R1, [R4,R0]
1C9644:  MOV             R0, R4
1C9646:  POP.W           {R11}
1C964A:  POP             {R4-R7,PC}
