; =========================================================
; Game Engine Function: sub_3853FA
; Address            : 0x3853FA - 0x385420
; =========================================================

3853FA:  PUSH            {R4,R6,R7,LR}
3853FC:  ADD             R7, SP, #8
3853FE:  MOV             R4, R0
385400:  CBZ             R1, loc_38540E
385402:  MOV             R0, R4
385404:  BLX             j_RpSkinAtomicSetHAnimHierarchy
385408:  MOVS            R4, #0
38540A:  MOV             R0, R4
38540C:  POP             {R4,R6,R7,PC}
38540E:  LDR             R0, [R4,#4]
385410:  BLX             j__Z25GetAnimHierarchyFromFrameP7RwFrame; GetAnimHierarchyFromFrame(RwFrame *)
385414:  MOV             R1, R0
385416:  MOV             R0, R4
385418:  BLX             j_RpSkinAtomicSetHAnimHierarchy
38541C:  MOV             R0, R4
38541E:  POP             {R4,R6,R7,PC}
