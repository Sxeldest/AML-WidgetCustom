; =========================================================
; Game Engine Function: sub_181DA0
; Address            : 0x181DA0 - 0x181DAC
; =========================================================

181DA0:  PUSH            {R7,LR}
181DA2:  MOV             R7, SP
181DA4:  MOV             R0, R1; in
181DA6:  BLX             inet_ntoa
181DAA:  POP             {R7,PC}
