; =========================================================
; Game Engine Function: _ZNK12CTaskManager21GetSimplestActiveTaskEv
; Address            : 0x533A52 - 0x533A8E
; =========================================================

533A52:  PUSH            {R4,R6,R7,LR}
533A54:  ADD             R7, SP, #8
533A56:  MOV             R1, R0
533A58:  LDR             R0, [R1]
533A5A:  CMP             R0, #0
533A5C:  ITT EQ
533A5E:  LDREQ           R0, [R1,#4]
533A60:  CMPEQ           R0, #0
533A62:  BEQ             loc_533A76
533A64:  MOV             R4, R0
533A66:  LDR             R0, [R4]
533A68:  LDR             R1, [R0,#0xC]
533A6A:  MOV             R0, R4
533A6C:  BLX             R1
533A6E:  CMP             R0, #0
533A70:  BNE             loc_533A64
533A72:  MOV             R0, R4
533A74:  POP             {R4,R6,R7,PC}
533A76:  LDR             R0, [R1,#8]
533A78:  CMP             R0, #0
533A7A:  ITT EQ
533A7C:  LDREQ           R0, [R1,#0xC]
533A7E:  CMPEQ           R0, #0
533A80:  BNE             loc_533A64
533A82:  LDR             R0, [R1,#0x10]
533A84:  CMP             R0, #0
533A86:  BNE             loc_533A64
533A88:  MOVS            R4, #0
533A8A:  MOV             R0, R4
533A8C:  POP             {R4,R6,R7,PC}
