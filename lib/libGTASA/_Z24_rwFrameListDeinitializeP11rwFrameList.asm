; =========================================================
; Game Engine Function: _Z24_rwFrameListDeinitializeP11rwFrameList
; Address            : 0x1D4ACC - 0x1D4AEE
; =========================================================

1D4ACC:  PUSH            {R4,R6,R7,LR}
1D4ACE:  ADD             R7, SP, #8
1D4AD0:  MOV             R4, R0
1D4AD2:  LDR             R0, [R4,#4]
1D4AD4:  CBZ             R0, loc_1D4AEA
1D4AD6:  LDR             R0, =(RwEngineInstance_ptr - 0x1D4ADC)
1D4AD8:  ADD             R0, PC; RwEngineInstance_ptr
1D4ADA:  LDR             R0, [R0]; RwEngineInstance
1D4ADC:  LDR             R1, [R0]
1D4ADE:  LDR             R0, [R4]
1D4AE0:  LDR.W           R1, [R1,#0x130]
1D4AE4:  BLX             R1
1D4AE6:  MOVS            R0, #0
1D4AE8:  STR             R0, [R4]
1D4AEA:  MOV             R0, R4
1D4AEC:  POP             {R4,R6,R7,PC}
