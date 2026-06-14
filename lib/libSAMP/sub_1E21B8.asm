; =========================================================
; Game Engine Function: sub_1E21B8
; Address            : 0x1E21B8 - 0x1E21CC
; =========================================================

1E21B8:  PUSH            {R11,LR}
1E21BC:  MOV             R11, SP
1E21C0:  BL              j_SetDefaultWFXChannelOrder
1E21C4:  MOV             R0, #1
1E21C8:  POP             {R11,PC}
