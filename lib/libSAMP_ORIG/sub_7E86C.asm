; =========================================================
; Game Engine Function: sub_7E86C
; Address            : 0x7E86C - 0x7E90A
; =========================================================

7E86C:  PUSH            {R4-R7,LR}
7E86E:  ADD             R7, SP, #0xC
7E870:  PUSH.W          {R8,R9,R11}
7E874:  MOV             R4, R0
7E876:  LDR             R0, =(byte_1A45F3 - 0x7E87C)
7E878:  ADD             R0, PC; byte_1A45F3
7E87A:  LDRB            R0, [R0]
7E87C:  CMP             R0, #0
7E87E:  BEQ             loc_7E900
7E880:  LDR             R6, =(dword_1A4680 - 0x7E886)
7E882:  ADD             R6, PC; dword_1A4680
7E884:  LDR.W           R0, [R6,#(dword_1A4700 - 0x1A4680)]
7E888:  DMB.W           ISH
7E88C:  LDR.W           R1, [R6,#(dword_1A4780 - 0x1A4680)]
7E890:  DMB.W           ISH
7E894:  LDR             R2, [R6]
7E896:  SUBS            R1, R0, R1
7E898:  MOVS            R0, #0
7E89A:  AND.W           R2, R2, R1,ASR#31
7E89E:  CMN             R2, R1
7E8A0:  BEQ             loc_7E902
7E8A2:  LDR.W           R1, [R6,#(dword_1A4780 - 0x1A4680)]
7E8A6:  LDR.W           R2, [R6,#(dword_1A4700 - 0x1A4680)]
7E8AA:  DMB.W           ISH
7E8AE:  LDR             R3, [R6,#(dword_1A4684 - 0x1A4680)]
7E8B0:  ADD.W           R3, R3, R1,LSL#2
7E8B4:  SUBS            R1, R2, R1
7E8B6:  IT NE
7E8B8:  ADDNE.W         R1, R3, #0x80
7E8BC:  LDR.W           R8, [R1]
7E8C0:  STR             R0, [R1]
7E8C2:  LDR.W           R9, [R6,#(dword_1A4780 - 0x1A4680)]
7E8C6:  LDR             R1, [R6,#(dword_1A4684 - 0x1A4680)]
7E8C8:  ADD.W           R1, R1, R9,LSL#2
7E8CC:  LDR.W           R5, [R1,#0x80]
7E8D0:  STR.W           R0, [R1,#0x80]
7E8D4:  CBZ             R5, loc_7E8E8
7E8D6:  LDR             R0, [R5]; void *
7E8D8:  CMP             R0, #0
7E8DA:  ITT NE
7E8DC:  STRNE           R0, [R5,#4]
7E8DE:  BLXNE           j__ZdlPv; operator delete(void *)
7E8E2:  MOV             R0, R5; void *
7E8E4:  BLX             j__ZdlPv; operator delete(void *)
7E8E8:  LDR             R0, [R6]
7E8EA:  ADD.W           R1, R9, #1
7E8EE:  SUBS            R0, R1, R0
7E8F0:  IT NE
7E8F2:  MOVNE           R0, R1
7E8F4:  DMB.W           ISH
7E8F8:  STR.W           R0, [R6,#(dword_1A4780 - 0x1A4680)]
7E8FC:  MOV             R0, R8
7E8FE:  B               loc_7E902
7E900:  MOVS            R0, #0
7E902:  STR             R0, [R4]
7E904:  POP.W           {R8,R9,R11}
7E908:  POP             {R4-R7,PC}
