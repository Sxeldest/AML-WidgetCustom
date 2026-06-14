; =========================================================
; Game Engine Function: sub_126B70
; Address            : 0x126B70 - 0x126B86
; =========================================================

126B70:  PUSH            {R4,R6,R7,LR}
126B72:  ADD             R7, SP, #8
126B74:  MOV             R4, R0
126B76:  LDR             R0, [R0,#4]
126B78:  CBZ             R0, loc_126B82
126B7A:  BL              sub_126B98
126B7E:  BLX             j__ZdlPv; operator delete(void *)
126B82:  MOV             R0, R4
126B84:  POP             {R4,R6,R7,PC}
