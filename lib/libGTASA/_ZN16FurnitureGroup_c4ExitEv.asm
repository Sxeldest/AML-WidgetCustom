; =========================================================
; Game Engine Function: _ZN16FurnitureGroup_c4ExitEv
; Address            : 0x444700 - 0x444722
; =========================================================

444700:  PUSH            {R4,R5,R7,LR}
444702:  ADD             R7, SP, #8
444704:  MOV             R4, R0
444706:  LDR             R5, [R4]
444708:  CBZ             R5, loc_444718
44470A:  ADD.W           R0, R5, #0xC; this
44470E:  BLX             j__ZN6List_c9RemoveAllEv; List_c::RemoveAll(void)
444712:  LDR             R5, [R5,#4]
444714:  CMP             R5, #0
444716:  BNE             loc_44470A
444718:  MOV             R0, R4; this
44471A:  POP.W           {R4,R5,R7,LR}
44471E:  B.W             sub_19CBF8
