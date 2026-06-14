; =========================================================
; Game Engine Function: sub_1436D4
; Address            : 0x1436D4 - 0x143744
; =========================================================

1436D4:  PUSH            {R4,R6,R7,LR}
1436D6:  ADD             R7, SP, #8
1436D8:  SUB             SP, SP, #0x120
1436DA:  MOV             R4, R0
1436DC:  ADD             R0, SP, #0x128+var_120
1436DE:  BL              sub_17D4A8
1436E2:  MOVS            R1, #0xDC
1436E4:  STRB.W          R1, [R7,#var_9]
1436E8:  SUB.W           R1, R7, #-var_9
1436EC:  MOVS            R2, #8
1436EE:  MOVS            R3, #1
1436F0:  BL              sub_17D628
1436F4:  MOVS            R0, #0x6D ; 'm'
1436F6:  STRB.W          R0, [R7,#var_9]
1436FA:  ADD             R0, SP, #0x128+var_120
1436FC:  SUB.W           R1, R7, #-var_9
143700:  MOVS            R2, #8
143702:  MOVS            R3, #1
143704:  BL              sub_17D628
143708:  LDR             R0, =(off_2349A8 - 0x14370E)
14370A:  ADD             R0, PC; off_2349A8
14370C:  LDR             R0, [R0]; dword_381BF4
14370E:  LDR             R0, [R0]
143710:  LDRB.W          R0, [R0,#0x6B]
143714:  STRB.W          R0, [R7,#var_9]
143718:  ADD             R0, SP, #0x128+var_120
14371A:  SUB.W           R1, R7, #-var_9
14371E:  MOVS            R2, #8
143720:  MOVS            R3, #1
143722:  BL              sub_17D628
143726:  LDR.W           R0, [R4,#0x210]
14372A:  LDR             R1, [R0]
14372C:  LDR             R4, [R1,#0x20]
14372E:  MOVS            R1, #0
143730:  MOVS            R2, #1
143732:  STR             R1, [SP,#0x128+var_128]
143734:  ADD             R1, SP, #0x128+var_120
143736:  MOVS            R3, #8
143738:  BLX             R4
14373A:  ADD             R0, SP, #0x128+var_120
14373C:  BL              sub_17D542
143740:  ADD             SP, SP, #0x120
143742:  POP             {R4,R6,R7,PC}
