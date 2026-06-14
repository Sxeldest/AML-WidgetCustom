; =========================================================
; Game Engine Function: sub_108590
; Address            : 0x108590 - 0x1085BA
; =========================================================

108590:  LDR             R0, [R0]
108592:  MOVW            R1, #0x4E20
108596:  CMP             R0, R1
108598:  BLS             loc_10859E
10859A:  MOVS            R0, #0x40 ; '@'
10859C:  B               loc_1085B6
10859E:  LDR             R1, =(off_23494C - 0x1085AC)
1085A0:  MOV             R2, #0x6796D4
1085A8:  ADD             R1, PC; off_23494C
1085AA:  LDR             R1, [R1]; dword_23DF24
1085AC:  LDR             R1, [R1]
1085AE:  LDR             R1, [R1,R2]
1085B0:  LDR.W           R0, [R1,R0,LSL#2]
1085B4:  ADDS            R0, #0x40 ; '@'
1085B6:  LDRH            R0, [R0]
1085B8:  BX              LR
