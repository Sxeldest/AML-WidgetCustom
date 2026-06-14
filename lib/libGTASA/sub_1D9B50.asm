; =========================================================
; Game Engine Function: sub_1D9B50
; Address            : 0x1D9B50 - 0x1D9B7C
; =========================================================

1D9B50:  PUSH            {R4,R5,R7,LR}
1D9B52:  ADD             R7, SP, #8
1D9B54:  MOV             R4, R0
1D9B56:  LDR             R0, =(RwEngineInstance_ptr - 0x1D9B5E)
1D9B58:  MOV             R5, R1
1D9B5A:  ADD             R0, PC; RwEngineInstance_ptr
1D9B5C:  LDR             R0, [R0]; RwEngineInstance
1D9B5E:  LDR             R0, [R0]
1D9B60:  LDR.W           R1, [R0,#0xC4]
1D9B64:  MOV             R0, R4
1D9B66:  BLX             R1
1D9B68:  CBZ             R0, loc_1D9B78
1D9B6A:  LDR             R1, [R5]
1D9B6C:  MOV             R0, R4
1D9B6E:  BLX             R1
1D9B70:  CMP             R0, #0
1D9B72:  STR             R0, [R5,#4]
1D9B74:  IT NE
1D9B76:  MOVNE           R4, #0
1D9B78:  MOV             R0, R4
1D9B7A:  POP             {R4,R5,R7,PC}
