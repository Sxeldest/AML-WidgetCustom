; =========================================================
; Game Engine Function: sub_12BDDC
; Address            : 0x12BDDC - 0x12BDF6
; =========================================================

12BDDC:  LDRD.W          R1, R2, [R0,#0x44]
12BDE0:  MOVS            R0, #0
12BDE2:  CMP             R1, R2
12BDE4:  IT EQ
12BDE6:  BXEQ            LR
12BDE8:  LDR             R3, [R1]
12BDEA:  CBZ             R3, loc_12BDF2
12BDEC:  LDRB.W          R3, [R3,#0x50]
12BDF0:  ADD             R0, R3
12BDF2:  ADDS            R1, #4
12BDF4:  B               loc_12BDE2
