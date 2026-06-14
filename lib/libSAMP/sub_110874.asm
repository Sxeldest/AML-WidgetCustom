; =========================================================
; Game Engine Function: sub_110874
; Address            : 0x110874 - 0x110898
; =========================================================

110874:  PUSH            {R7,LR}
110876:  MOV             R7, SP
110878:  LDR             R2, =(off_23494C - 0x11087E)
11087A:  ADD             R2, PC; off_23494C
11087C:  LDR             R2, [R2]; dword_23DF24
11087E:  LDR             R2, [R2]
110880:  CBZ             R2, locret_110896
110882:  MOV             R3, #0x673C28
11088A:  ADDS            R2, R2, R3
11088C:  ITT NE
11088E:  LDRNE           R2, [R2]
110890:  CMPNE           R2, #0
110892:  BEQ             locret_110896
110894:  BLX             R2
110896:  POP             {R7,PC}
