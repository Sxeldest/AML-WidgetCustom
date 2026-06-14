; =========================================================
; Game Engine Function: sub_103B60
; Address            : 0x103B60 - 0x103BE2
; =========================================================

103B60:  PUSH            {R4-R7,LR}
103B62:  ADD             R7, SP, #0xC
103B64:  PUSH.W          {R7-R11}
103B68:  MOV             R10, R0
103B6A:  MOV.W           R0, #0xFFFFFFFF
103B6E:  LDRD.W          R9, R8, [R1,#0xC]
103B72:  MOV             R4, R1
103B74:  STRD.W          R0, R0, [R1,#0xC]
103B78:  LDR             R5, [R1,#4]
103B7A:  LDR.W           R0, [R10,#8]
103B7E:  BL              sub_FE074
103B82:  LDR.W           R11, [R4,#0x10]
103B86:  ADDS.W          R0, R11, #1
103B8A:  BEQ             loc_103B96
103B8C:  CMP.W           R11, #0
103B90:  BNE             loc_103BB6
103B92:  STR             R5, [R4,#4]
103B94:  B               loc_103BAC
103B96:  LDR             R5, =(asc_4EAED - 0x103B9E); "..." ...
103B98:  MOVS            R1, #4; size_t
103B9A:  ADD             R5, PC; "..."
103B9C:  MOV             R0, R5; char *
103B9E:  BLX             __strlen_chk
103BA2:  ADDS            R2, R5, R0
103BA4:  MOV             R0, R4
103BA6:  MOV             R1, R5
103BA8:  BL              sub_FFB40
103BAC:  STRD.W          R9, R8, [R4,#0xC]
103BB0:  POP.W           {R3,R8-R11}
103BB4:  POP             {R4-R7,PC}
103BB6:  LDR             R6, =(asc_4FD69 - 0x103BBE); ", " ...
103BB8:  MOVS            R5, #1
103BBA:  ADD             R6, PC; ", "
103BBC:  CMP             R5, R11
103BBE:  BCS             loc_103BAC
103BC0:  MOV             R0, R6; char *
103BC2:  MOVS            R1, #3; size_t
103BC4:  BLX             __strlen_chk
103BC8:  ADDS            R2, R6, R0
103BCA:  MOV             R0, R4
103BCC:  MOV             R1, R6
103BCE:  BL              sub_FFB40
103BD2:  LDR.W           R0, [R10,#8]
103BD6:  STR             R5, [R4,#0xC]
103BD8:  MOV             R1, R4
103BDA:  BL              sub_FE074
103BDE:  ADDS            R5, #1
103BE0:  B               loc_103BBC
