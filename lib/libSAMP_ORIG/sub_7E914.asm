; =========================================================
; Game Engine Function: sub_7E914
; Address            : 0x7E914 - 0x7E9B2
; =========================================================

7E914:  PUSH            {R4-R7,LR}
7E916:  ADD             R7, SP, #0xC
7E918:  PUSH.W          {R8,R9,R11}
7E91C:  MOV             R4, R0
7E91E:  LDR             R0, =(byte_1A45F3 - 0x7E924)
7E920:  ADD             R0, PC; byte_1A45F3
7E922:  LDRB            R0, [R0]
7E924:  CMP             R0, #0
7E926:  BEQ             loc_7E9A8
7E928:  LDR             R6, =(dword_1A4800 - 0x7E92E)
7E92A:  ADD             R6, PC; dword_1A4800
7E92C:  LDR.W           R0, [R6,#(dword_1A4880 - 0x1A4800)]
7E930:  DMB.W           ISH
7E934:  LDR.W           R1, [R6,#(dword_1A4900 - 0x1A4800)]
7E938:  DMB.W           ISH
7E93C:  LDR             R2, [R6]
7E93E:  SUBS            R1, R0, R1
7E940:  MOVS            R0, #0
7E942:  AND.W           R2, R2, R1,ASR#31
7E946:  CMN             R2, R1
7E948:  BEQ             loc_7E9AA
7E94A:  LDR.W           R1, [R6,#(dword_1A4900 - 0x1A4800)]
7E94E:  LDR.W           R2, [R6,#(dword_1A4880 - 0x1A4800)]
7E952:  DMB.W           ISH
7E956:  LDR             R3, [R6,#(dword_1A4804 - 0x1A4800)]
7E958:  ADD.W           R3, R3, R1,LSL#2
7E95C:  SUBS            R1, R2, R1
7E95E:  IT NE
7E960:  ADDNE.W         R1, R3, #0x80
7E964:  LDR.W           R8, [R1]
7E968:  STR             R0, [R1]
7E96A:  LDR.W           R9, [R6,#(dword_1A4900 - 0x1A4800)]
7E96E:  LDR             R1, [R6,#(dword_1A4804 - 0x1A4800)]
7E970:  ADD.W           R1, R1, R9,LSL#2
7E974:  LDR.W           R5, [R1,#0x80]
7E978:  STR.W           R0, [R1,#0x80]
7E97C:  CBZ             R5, loc_7E990
7E97E:  LDR             R0, [R5]; void *
7E980:  CMP             R0, #0
7E982:  ITT NE
7E984:  STRNE           R0, [R5,#4]
7E986:  BLXNE           j__ZdlPv; operator delete(void *)
7E98A:  MOV             R0, R5; void *
7E98C:  BLX             j__ZdlPv; operator delete(void *)
7E990:  LDR             R0, [R6]
7E992:  ADD.W           R1, R9, #1
7E996:  SUBS            R0, R1, R0
7E998:  IT NE
7E99A:  MOVNE           R0, R1
7E99C:  DMB.W           ISH
7E9A0:  STR.W           R0, [R6,#(dword_1A4900 - 0x1A4800)]
7E9A4:  MOV             R0, R8
7E9A6:  B               loc_7E9AA
7E9A8:  MOVS            R0, #0
7E9AA:  STR             R0, [R4]
7E9AC:  POP.W           {R8,R9,R11}
7E9B0:  POP             {R4-R7,PC}
