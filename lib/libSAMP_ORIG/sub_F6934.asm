; =========================================================
; Game Engine Function: sub_F6934
; Address            : 0xF6934 - 0xF695C
; =========================================================

F6934:  LDRB            R1, [R0]
F6936:  LSLS            R2, R1, #0x1F
F6938:  BNE             loc_F694C
F693A:  MOV.W           R2, #0xFFFFFFFF
F693E:  ADD.W           R1, R2, R1,LSR#1
F6942:  LSLS            R2, R1, #1
F6944:  STRB            R2, [R0]
F6946:  ADD             R0, R1
F6948:  ADDS            R0, #1
F694A:  B               loc_F6956
F694C:  LDRD.W          R1, R2, [R0,#4]
F6950:  SUBS            R1, #1
F6952:  STR             R1, [R0,#4]
F6954:  ADDS            R0, R2, R1
F6956:  MOVS            R1, #0
F6958:  STRB            R1, [R0]
F695A:  BX              LR
