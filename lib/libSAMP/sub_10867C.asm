; =========================================================
; Game Engine Function: sub_10867C
; Address            : 0x10867C - 0x10869E
; =========================================================

10867C:  PUSH            {R7,LR}
10867E:  MOV             R7, SP
108680:  LDR             R0, =(off_23494C - 0x108686)
108682:  ADD             R0, PC; off_23494C
108684:  LDR             R0, [R0]; dword_23DF24
108686:  LDR             R0, [R0]
108688:  CBZ             R0, locret_10869C
10868A:  ADD.W           R0, R0, #0x660000
10868E:  ADDS.W          R0, R0, #0xEE00
108692:  ITT NE
108694:  LDRNE           R0, [R0]
108696:  CMPNE           R0, #0
108698:  BEQ             locret_10869C
10869A:  BLX             R0
10869C:  POP             {R7,PC}
