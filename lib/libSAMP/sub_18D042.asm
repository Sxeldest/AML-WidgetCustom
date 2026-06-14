; =========================================================
; Game Engine Function: sub_18D042
; Address            : 0x18D042 - 0x18D07E
; =========================================================

18D042:  PUSH            {R4,R5,R7,LR}
18D044:  ADD             R7, SP, #8
18D046:  LDR             R1, [R0,#4]
18D048:  MOV             R4, R0
18D04A:  CBZ             R1, loc_18D068
18D04C:  MOVS            R5, #0
18D04E:  LDR             R0, [R4]
18D050:  ADD.W           R0, R0, R5,LSL#3
18D054:  LDR             R0, [R0,#4]
18D056:  CBZ             R0, loc_18D062
18D058:  BL              sub_17DADE
18D05C:  BLX             j__ZdlPv; operator delete(void *)
18D060:  LDR             R1, [R4,#4]
18D062:  ADDS            R5, #1
18D064:  CMP             R5, R1
18D066:  BCC             loc_18D04E
18D068:  MOVS            R0, #0
18D06A:  MOVS            R1, #0
18D06C:  STRB            R0, [R4,#0x14]
18D06E:  MOV             R0, R4
18D070:  BL              sub_18D110
18D074:  MOV             R0, R4
18D076:  POP.W           {R4,R5,R7,LR}
18D07A:  B.W             sub_18D0F4
