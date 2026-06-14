; =========================================================
; Game Engine Function: sub_110840
; Address            : 0x110840 - 0x11086C
; =========================================================

110840:  PUSH            {R7,LR}
110842:  MOV             R7, SP
110844:  MOV             R2, R0
110846:  LDR             R0, =(off_23494C - 0x11084C)
110848:  ADD             R0, PC; off_23494C
11084A:  LDR             R0, [R0]; dword_23DF24
11084C:  LDR             R3, [R0]
11084E:  MOVS            R0, #0
110850:  CBZ             R3, locret_110866
110852:  ADD.W           R3, R3, #0x670000
110856:  ADDS.W          R3, R3, #0x10C
11085A:  IT EQ
11085C:  POPEQ           {R7,PC}
11085E:  LDR             R3, [R3]
110860:  CBZ             R3, loc_110868
110862:  MOV             R0, R2
110864:  BLX             R3
110866:  POP             {R7,PC}
110868:  MOVS            R0, #0
11086A:  POP             {R7,PC}
