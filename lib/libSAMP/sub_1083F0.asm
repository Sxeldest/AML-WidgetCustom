; =========================================================
; Game Engine Function: sub_1083F0
; Address            : 0x1083F0 - 0x10841A
; =========================================================

1083F0:  MOVW            R1, #0x4E20
1083F4:  CMP             R0, R1
1083F6:  ITT HI
1083F8:  MOVHI           R0, #0
1083FA:  BXHI            LR
1083FC:  LDR             R1, =(off_23494C - 0x10840A)
1083FE:  MOV             R2, #0x6796D4
108406:  ADD             R1, PC; off_23494C
108408:  LDR             R1, [R1]; dword_23DF24
10840A:  LDR             R1, [R1]
10840C:  LDR             R1, [R1,R2]
10840E:  LDR.W           R0, [R1,R0,LSL#2]
108412:  CMP             R0, #0
108414:  IT NE
108416:  MOVNE           R0, #1
108418:  BX              LR
