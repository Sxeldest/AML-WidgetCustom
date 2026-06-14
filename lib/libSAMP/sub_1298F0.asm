; =========================================================
; Game Engine Function: sub_1298F0
; Address            : 0x1298F0 - 0x129914
; =========================================================

1298F0:  PUSH            {R7,LR}
1298F2:  MOV             R7, SP
1298F4:  LDR             R1, =(off_23494C - 0x1298FA)
1298F6:  ADD             R1, PC; off_23494C
1298F8:  LDR             R1, [R1]; dword_23DF24
1298FA:  LDR             R1, [R1]
1298FC:  CBZ             R1, locret_129912
1298FE:  MOV             R2, #0x670AF8
129906:  ADDS            R1, R1, R2
129908:  ITT NE
12990A:  LDRNE           R1, [R1]
12990C:  CMPNE           R1, #0
12990E:  BEQ             locret_129912
129910:  BLX             R1
129912:  POP             {R7,PC}
