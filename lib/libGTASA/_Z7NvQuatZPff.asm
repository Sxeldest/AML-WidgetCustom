; =========================================================
; Game Engine Function: _Z7NvQuatZPff
; Address            : 0x27947C - 0x2794AA
; =========================================================

27947C:  PUSH            {R4,R5,R7,LR}
27947E:  ADD             R7, SP, #8
279480:  VMOV.F32        S0, #0.5
279484:  MOV             R4, R0
279486:  VMOV            S2, R1
27948A:  MOVS            R0, #0
27948C:  STRD.W          R0, R0, [R4]
279490:  VMUL.F32        S0, S2, S0
279494:  VMOV            R5, S0
279498:  MOV             R0, R5; x
27949A:  BLX             sinf
27949E:  STR             R0, [R4,#8]
2794A0:  MOV             R0, R5; x
2794A2:  BLX             cosf
2794A6:  STR             R0, [R4,#0xC]
2794A8:  POP             {R4,R5,R7,PC}
