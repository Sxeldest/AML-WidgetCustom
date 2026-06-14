; =========================================================
; Game Engine Function: sub_10FDF0
; Address            : 0x10FDF0 - 0x10FE14
; =========================================================

10FDF0:  LDR             R1, =(off_23494C - 0x10FDF6)
10FDF2:  ADD             R1, PC; off_23494C
10FDF4:  LDR             R1, [R1]; dword_23DF24
10FDF6:  LDR             R1, [R1]
10FDF8:  CBNZ            R0, loc_10FE08
10FDFA:  MOV             R0, #0x685FA0
10FE02:  LDR             R0, [R1,R0]
10FE04:  SUB.W           R0, R0, #0x1000
10FE08:  MOV             R2, #0x670E1C
10FE10:  LDR             R1, [R1,R2]
10FE12:  BX              R1
