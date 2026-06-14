; =========================================================
; Game Engine Function: sub_1641D4
; Address            : 0x1641D4 - 0x164222
; =========================================================

1641D4:  PUSH            {R4-R7,LR}
1641D6:  ADD             R7, SP, #0xC
1641D8:  PUSH.W          {R8}
1641DC:  MOV             R4, R0
1641DE:  MOVW            R0, #0xFFF
1641E2:  BIC.W           R0, R4, R0; addr
1641E6:  MOV             R5, R2
1641E8:  MOV             R8, R1
1641EA:  MOV.W           R1, #0x1000; len
1641EE:  MOVS            R2, #3; prot
1641F0:  BLX             mprotect
1641F4:  ADDS            R6, R5, R4
1641F6:  MOV.W           R1, #0x1000; len
1641FA:  MOVS            R2, #3; prot
1641FC:  MOV             R0, R6
1641FE:  BFC.W           R0, #0, #0xC; addr
164202:  BLX             mprotect
164206:  MOV             R0, R4; dest
164208:  MOV             R1, R8; src
16420A:  MOV             R2, R5; n
16420C:  BLX             j_memcpy
164210:  MOV             R0, R4
164212:  MOV             R1, R6
164214:  MOVS            R2, #0
164216:  POP.W           {R8}
16421A:  POP.W           {R4-R7,LR}
16421E:  B.W             sub_224388
