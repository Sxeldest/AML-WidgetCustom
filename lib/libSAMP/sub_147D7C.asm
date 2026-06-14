; =========================================================
; Game Engine Function: sub_147D7C
; Address            : 0x147D7C - 0x147DA0
; =========================================================

147D7C:  PUSH            {R4,R5,R7,LR}
147D7E:  ADD             R7, SP, #8
147D80:  MOVS            R5, #0
147D82:  MOV             R4, R0
147D84:  STRB            R5, [R0,#0xA]
147D86:  MOVW            R0, #0xFFFF
147D8A:  STRH            R0, [R4,#8]
147D8C:  MOV.W           R0, #0xFFFFFFFF
147D90:  STRD.W          R5, R0, [R4]
147D94:  BL              sub_F0B30
147D98:  STR             R0, [R4,#0xC]
147D9A:  MOV             R0, R4
147D9C:  STRH            R5, [R4,#0x34]
147D9E:  POP             {R4,R5,R7,PC}
