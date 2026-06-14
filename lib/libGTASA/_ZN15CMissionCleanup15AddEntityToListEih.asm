; =========================================================
; Game Engine Function: _ZN15CMissionCleanup15AddEntityToListEih
; Address            : 0x327508 - 0x32754C
; =========================================================

327508:  PUSH            {R7,LR}
32750A:  MOV             R7, SP
32750C:  ADD.W           R12, R0, #4
327510:  MOV.W           LR, #0
327514:  B               loc_327528
327516:  ADD.W           LR, LR, #1
32751A:  ADD.W           R12, R12, #8
32751E:  UXTH.W          R3, LR
327522:  CMP             R3, #0x4B ; 'K'
327524:  IT CS
327526:  POPCS           {R7,PC}
327528:  LDRB.W          R3, [R12,#-4]
32752C:  CMP             R3, #0
32752E:  BNE             loc_327516
327530:  CMP.W           R12, #4
327534:  ITTTT NE
327536:  STRBNE.W        R2, [R12,#-4]
32753A:  STRNE.W         R1, [R12]
32753E:  LDRBNE.W        R1, [R0,#0x258]
327542:  ADDNE           R1, #1
327544:  IT NE
327546:  STRBNE.W        R1, [R0,#0x258]
32754A:  POP             {R7,PC}
