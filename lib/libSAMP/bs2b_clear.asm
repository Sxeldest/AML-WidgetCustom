; =========================================================
; Game Engine Function: bs2b_clear
; Address            : 0x1DA8C0 - 0x1DA8D8
; =========================================================

1DA8C0:  PUSH            {R11,LR}
1DA8C4:  MOV             R11, SP
1DA8C8:  ADD             R0, R0, #0x38 ; '8'; int
1DA8CC:  MOV             R1, #0x30 ; '0'; n
1DA8D0:  BL              sub_22178C
1DA8D4:  POP             {R11,PC}
