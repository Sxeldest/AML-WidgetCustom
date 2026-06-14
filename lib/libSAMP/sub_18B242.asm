; =========================================================
; Game Engine Function: sub_18B242
; Address            : 0x18B242 - 0x18B26A
; =========================================================

18B242:  PUSH            {R4,R6,R7,LR}
18B244:  ADD             R7, SP, #8
18B246:  MOV             R4, R0
18B248:  LDR             R0, [R0,#4]
18B24A:  CMP             R0, R1
18B24C:  IT LS
18B24E:  POPLS           {R4,R6,R7,PC}
18B250:  MVNS            R2, R1
18B252:  ADD             R0, R2
18B254:  LDR             R3, [R4]
18B256:  LSLS            R2, R0, #2; n
18B258:  ADD.W           R0, R3, R1,LSL#2; dest
18B25C:  ADDS            R1, R0, #4; src
18B25E:  BLX             j_memmove
18B262:  LDR             R0, [R4,#4]
18B264:  SUBS            R0, #1
18B266:  STR             R0, [R4,#4]
18B268:  POP             {R4,R6,R7,PC}
