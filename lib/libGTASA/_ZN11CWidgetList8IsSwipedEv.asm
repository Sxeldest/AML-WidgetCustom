; =========================================================
; Game Engine Function: _ZN11CWidgetList8IsSwipedEv
; Address            : 0x2BAB40 - 0x2BAB62
; =========================================================

2BAB40:  PUSH            {R4,R6,R7,LR}
2BAB42:  ADD             R7, SP, #8
2BAB44:  MOV             R4, R0
2BAB46:  LDR             R0, [R4]
2BAB48:  LDR             R1, [R0,#0x44]
2BAB4A:  MOV             R0, R4
2BAB4C:  BLX             R1
2BAB4E:  CMP             R0, #0
2BAB50:  ITT NE
2BAB52:  MOVNE           R0, #1
2BAB54:  POPNE           {R4,R6,R7,PC}
2BAB56:  LDR             R0, [R4]
2BAB58:  LDR             R1, [R0,#0x48]
2BAB5A:  MOV             R0, R4
2BAB5C:  POP.W           {R4,R6,R7,LR}
2BAB60:  BX              R1
