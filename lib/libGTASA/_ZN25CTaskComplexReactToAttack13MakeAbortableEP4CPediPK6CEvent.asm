; =========================================================
; Game Engine Function: _ZN25CTaskComplexReactToAttack13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x4DFEB8 - 0x4DFEDE
; =========================================================

4DFEB8:  PUSH            {R4,R5,R7,LR}
4DFEBA:  ADD             R7, SP, #8
4DFEBC:  MOV             R5, R0
4DFEBE:  LDRB            R0, [R5,#0xD]
4DFEC0:  CMP             R0, #0
4DFEC2:  ITT NE
4DFEC4:  MOVNE           R0, #1
4DFEC6:  POPNE           {R4,R5,R7,PC}
4DFEC8:  SUBS            R0, R2, #1
4DFECA:  CMP             R0, #1
4DFECC:  ITT HI
4DFECE:  MOVHI           R0, #0
4DFED0:  POPHI           {R4,R5,R7,PC}
4DFED2:  LDR             R0, [R5,#8]
4DFED4:  LDR             R4, [R0]
4DFED6:  LDR             R4, [R4,#0x1C]
4DFED8:  BLX             R4
4DFEDA:  STRB            R0, [R5,#0xD]
4DFEDC:  POP             {R4,R5,R7,PC}
