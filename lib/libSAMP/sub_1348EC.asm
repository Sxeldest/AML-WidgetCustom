; =========================================================
; Game Engine Function: sub_1348EC
; Address            : 0x1348EC - 0x134920
; =========================================================

1348EC:  PUSH            {R4,R6,R7,LR}
1348EE:  ADD             R7, SP, #8
1348F0:  LDR             R4, [R0,#4]
1348F2:  LDRB.W          R0, [R4,#0x50]
1348F6:  CBZ             R0, loc_134902
1348F8:  LDR             R0, [R4]
1348FA:  MOVS            R1, #0
1348FC:  LDR             R2, [R0,#0x24]
1348FE:  MOV             R0, R4
134900:  BLX             R2
134902:  LDR             R0, =(off_23496C - 0x13490E)
134904:  MOVS            R1, #0
134906:  STRB.W          R1, [R4,#0x50]
13490A:  ADD             R0, PC; off_23496C
13490C:  LDR             R0, [R0]; dword_23DEF4
13490E:  LDR             R0, [R0]
134910:  CBZ             R0, locret_13491E
134912:  LDR             R1, =(aMenu - 0x134918); "/menu" ...
134914:  ADD             R1, PC; "/menu"
134916:  POP.W           {R4,R6,R7,LR}
13491A:  B.W             sub_144460
13491E:  POP             {R4,R6,R7,PC}
