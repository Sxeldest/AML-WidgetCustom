; =========================================================
; Game Engine Function: sub_4806F6
; Address            : 0x4806F6 - 0x480728
; =========================================================

4806F6:  PUSH            {R4,R6,R7,LR}
4806F8:  ADD             R7, SP, #8
4806FA:  LDR             R4, [R0]
4806FC:  CMP.W           R1, #0xFFFFFFFF
480700:  BLE             loc_480712
480702:  LDR             R2, [R4,#0x68]
480704:  CMP             R2, R1
480706:  IT LT
480708:  POPLT           {R4,R6,R7,PC}
48070A:  LDR             R1, [R4,#8]
48070C:  POP.W           {R4,R6,R7,LR}
480710:  BX              R1
480712:  LDR             R1, [R4,#0x6C]
480714:  CBZ             R1, loc_48071C
480716:  LDR             R2, [R4,#0x68]
480718:  CMP             R2, #3
48071A:  BLT             loc_480722
48071C:  LDR             R1, [R4,#8]
48071E:  BLX             R1
480720:  LDR             R1, [R4,#0x6C]
480722:  ADDS            R0, R1, #1
480724:  STR             R0, [R4,#0x6C]
480726:  POP             {R4,R6,R7,PC}
