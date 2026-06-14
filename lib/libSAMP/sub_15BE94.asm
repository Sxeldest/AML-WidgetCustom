; =========================================================
; Game Engine Function: sub_15BE94
; Address            : 0x15BE94 - 0x15BEB8
; =========================================================

15BE94:  PUSH            {R4,R5,R7,LR}
15BE96:  ADD             R7, SP, #8
15BE98:  MOV             R4, R0
15BE9A:  LDR             R5, [R0,#0x20]
15BE9C:  CBZ             R5, loc_15BEAC
15BE9E:  ADD.W           R1, R5, #0xC
15BEA2:  MOV             R0, R4
15BEA4:  BL              sub_15BEC4
15BEA8:  LDR             R5, [R5]
15BEAA:  B               loc_15BE9C
15BEAC:  ADD.W           R0, R4, #0x18
15BEB0:  POP.W           {R4,R5,R7,LR}
15BEB4:  B.W             sub_15DEA4
