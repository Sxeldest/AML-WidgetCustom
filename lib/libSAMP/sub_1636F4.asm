; =========================================================
; Game Engine Function: sub_1636F4
; Address            : 0x1636F4 - 0x163752
; =========================================================

1636F4:  PUSH            {R4,R5,R7,LR}
1636F6:  ADD             R7, SP, #8
1636F8:  LDR             R4, =(aLibgtasaSo - 0x1636FE); "libGTASA.so" ...
1636FA:  ADD             R4, PC; "libGTASA.so"
1636FC:  MOV             R0, R4
1636FE:  BL              sub_163FF8
163702:  LDR             R1, =(dword_381A84 - 0x163712)
163704:  MOV             R2, #0x6775FC
16370C:  ADD             R0, R2
16370E:  ADD             R1, PC; dword_381A84
163710:  STR             R0, [R1]
163712:  MOV             R0, R4
163714:  BL              sub_163FF8
163718:  LDR             R1, =(dword_381A88 - 0x163728)
16371A:  MOV             R5, #0x6796C4
163722:  ADD             R0, R5
163724:  ADD             R1, PC; dword_381A88
163726:  ADD.W           R0, R0, #0x3A0
16372A:  STR             R0, [R1]
16372C:  MOV             R0, R4
16372E:  BL              sub_163FF8
163732:  LDR             R1, =(dword_381A8C - 0x16373A)
163734:  ADD             R0, R5
163736:  ADD             R1, PC; dword_381A8C
163738:  STR             R0, [R1]
16373A:  MOV             R0, R4
16373C:  BL              sub_163FF8
163740:  LDR             R1, =(dword_381A90 - 0x16374E)
163742:  MOV             R2, #0x678140
16374A:  ADD             R1, PC; dword_381A90
16374C:  LDR             R0, [R0,R2]
16374E:  STR             R0, [R1]
163750:  POP             {R4,R5,R7,PC}
