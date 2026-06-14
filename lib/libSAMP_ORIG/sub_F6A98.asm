; =========================================================
; Game Engine Function: sub_F6A98
; Address            : 0xF6A98 - 0xF6AC4
; =========================================================

F6A98:  LDRB            R1, [R0]
F6A9A:  LSLS            R2, R1, #0x1F
F6A9C:  BNE             loc_F6AB2
F6A9E:  MOV.W           R2, #0xFFFFFFFF
F6AA2:  ADD.W           R1, R2, R1,LSR#1
F6AA6:  LSLS            R2, R1, #1
F6AA8:  STRB            R2, [R0]
F6AAA:  ADD.W           R0, R0, R1,LSL#2
F6AAE:  ADDS            R0, #4
F6AB0:  B               loc_F6ABE
F6AB2:  LDRD.W          R1, R2, [R0,#4]
F6AB6:  SUBS            R1, #1
F6AB8:  STR             R1, [R0,#4]
F6ABA:  ADD.W           R0, R2, R1,LSL#2
F6ABE:  MOVS            R1, #0
F6AC0:  STR             R1, [R0]
F6AC2:  BX              LR
