; =========================================================
; Game Engine Function: sub_1E30E0
; Address            : 0x1E30E0 - 0x1E310E
; =========================================================

1E30E0:  PUSH            {R4,R5,R7,LR}
1E30E2:  ADD             R7, SP, #8
1E30E4:  MOV             R5, R0
1E30E6:  LDR             R0, [R0,#8]
1E30E8:  CMP             R0, R1
1E30EA:  BEQ             locret_1E310C
1E30EC:  MOV             R4, R1
1E30EE:  SUB.W           R1, R0, #0x1C
1E30F2:  STR             R1, [R5,#8]
1E30F4:  LDRB.W          R2, [R0,#-0xC]
1E30F8:  LSLS            R2, R2, #0x1F
1E30FA:  BEQ             loc_1E3106
1E30FC:  LDR.W           R0, [R0,#-4]; void *
1E3100:  BLX             j__ZdlPv; operator delete(void *)
1E3104:  LDR             R1, [R5,#8]
1E3106:  CMP             R1, R4
1E3108:  MOV             R0, R1
1E310A:  BNE             loc_1E30EE
1E310C:  POP             {R4,R5,R7,PC}
