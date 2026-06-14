; =========================================================
; Game Engine Function: sub_1066E0
; Address            : 0x1066E0 - 0x1066F2
; =========================================================

1066E0:  PUSH            {R4,R6,R7,LR}
1066E2:  ADD             R7, SP, #8
1066E4:  MOV             R4, R0
1066E6:  ADDS            R0, #0x28 ; '('; void *
1066E8:  BLX             j___cxa_begin_catch
1066EC:  LDR             R0, [R4,#0x14]
1066EE:  BL              sub_106E00
