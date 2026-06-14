; =========================================================
; Game Engine Function: sub_21DB38
; Address            : 0x21DB38 - 0x21DB4A
; =========================================================

21DB38:  PUSH            {R4,R6,R7,LR}
21DB3A:  ADD             R7, SP, #8
21DB3C:  MOV             R4, R0
21DB3E:  ADDS            R0, #0x28 ; '('; void *
21DB40:  BLX             j___cxa_begin_catch
21DB44:  LDR             R0, [R4,#0x14]
21DB46:  BL              sub_21E258
