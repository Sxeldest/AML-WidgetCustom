; =========================================================
; Game Engine Function: _ZN9OALSource6UpdateEv
; Address            : 0x27F674 - 0x27F6D6
; =========================================================

27F674:  PUSH            {R4-R7,LR}
27F676:  ADD             R7, SP, #0xC
27F678:  PUSH.W          {R11}
27F67C:  SUB             SP, SP, #8
27F67E:  MOV             R4, R0
27F680:  MOVS            R0, #0
27F682:  LDR             R1, [R4,#0xC]
27F684:  STR             R0, [R4,#0x28]
27F686:  CMP             R1, #2
27F688:  BNE             loc_27F6CE
27F68A:  STR             R0, [SP,#0x18+var_14]
27F68C:  ADD             R2, SP, #0x18+var_14
27F68E:  LDR             R0, [R4,#8]
27F690:  MOVW            R1, #0x1016
27F694:  BLX             j_alGetSourcei
27F698:  LDR             R0, [SP,#0x18+var_14]
27F69A:  CMP             R0, #0
27F69C:  SUB.W           R1, R0, #1
27F6A0:  STR             R1, [SP,#0x18+var_14]
27F6A2:  BEQ             loc_27F6CE
27F6A4:  MOVS            R6, #0
27F6A6:  MOV             R5, SP
27F6A8:  STR             R6, [SP,#0x18+var_18]
27F6AA:  MOVS            R1, #1
27F6AC:  LDR             R0, [R4,#8]
27F6AE:  MOV             R2, R5
27F6B0:  BLX             j_alSourceUnqueueBuffers
27F6B4:  LDR             R1, [R4,#0x10]
27F6B6:  LDR             R0, [R4,#8]
27F6B8:  ADD.W           R2, R1, #8
27F6BC:  MOVS            R1, #1
27F6BE:  BLX             j_alSourceQueueBuffers
27F6C2:  LDR             R0, [SP,#0x18+var_14]
27F6C4:  CMP             R0, #0
27F6C6:  SUB.W           R1, R0, #1
27F6CA:  STR             R1, [SP,#0x18+var_14]
27F6CC:  BNE             loc_27F6A8
27F6CE:  ADD             SP, SP, #8
27F6D0:  POP.W           {R11}
27F6D4:  POP             {R4-R7,PC}
