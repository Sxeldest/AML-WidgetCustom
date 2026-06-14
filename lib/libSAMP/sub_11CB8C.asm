; =========================================================
; Game Engine Function: sub_11CB8C
; Address            : 0x11CB8C - 0x11CBA8
; =========================================================

11CB8C:  LDR             R0, =(off_23494C - 0x11CB9E)
11CB8E:  MOVW            R1, #0x5FD0
11CB92:  MOVW            R2, #0xBF00
11CB96:  MOVT            R1, #0x46 ; 'F'
11CB9A:  ADD             R0, PC; off_23494C
11CB9C:  MOVT            R2, #0x2000
11CBA0:  LDR             R0, [R0]; dword_23DF24
11CBA2:  LDR             R0, [R0]
11CBA4:  STR             R2, [R0,R1]
11CBA6:  BX              LR
