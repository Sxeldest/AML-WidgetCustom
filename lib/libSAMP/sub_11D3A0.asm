; =========================================================
; Game Engine Function: sub_11D3A0
; Address            : 0x11D3A0 - 0x11D3B6
; =========================================================

11D3A0:  PUSH            {R4,R6,R7,LR}
11D3A2:  ADD             R7, SP, #8
11D3A4:  MOV             R4, R0
11D3A6:  LDR             R0, [R0,#4]
11D3A8:  CBZ             R0, loc_11D3B2
11D3AA:  BL              sub_11D53C
11D3AE:  BLX             j__ZdlPv; operator delete(void *)
11D3B2:  MOV             R0, R4
11D3B4:  POP             {R4,R6,R7,PC}
