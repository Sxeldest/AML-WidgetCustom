; =========================================================
; Game Engine Function: _Z17_rwgetcurrenttimePci
; Address            : 0x1C203C - 0x1C2092
; =========================================================

1C203C:  PUSH            {R4-R7,LR}
1C203E:  ADD             R7, SP, #0xC
1C2040:  PUSH.W          {R11}
1C2044:  SUB             SP, SP, #8
1C2046:  ADD             R6, SP, #0x18+timer
1C2048:  MOV             R4, R0
1C204A:  MOV             R5, R1
1C204C:  MOV             R0, R6; timer
1C204E:  BLX             time
1C2052:  MOV             R0, R6; timer
1C2054:  BLX             ctime
1C2058:  MOV             R6, R0
1C205A:  CBZ             R6, loc_1C2086
1C205C:  LDR             R0, =(RwEngineInstance_ptr - 0x1C2062)
1C205E:  ADD             R0, PC; RwEngineInstance_ptr
1C2060:  LDR             R0, [R0]; RwEngineInstance
1C2062:  LDR             R0, [R0]
1C2064:  LDR.W           R1, [R0,#0x118]
1C2068:  MOV             R0, R6
1C206A:  BLX             R1
1C206C:  SUBS            R1, R5, #1
1C206E:  CMP             R0, R1
1C2070:  BCS             loc_1C2086
1C2072:  LDR             R0, =(RwEngineInstance_ptr - 0x1C207A)
1C2074:  MOV             R1, R6
1C2076:  ADD             R0, PC; RwEngineInstance_ptr
1C2078:  LDR             R0, [R0]; RwEngineInstance
1C207A:  LDR             R0, [R0]
1C207C:  LDR.W           R2, [R0,#0xF8]
1C2080:  MOV             R0, R4
1C2082:  BLX             R2
1C2084:  B               loc_1C2088
1C2086:  MOVS            R4, #0
1C2088:  MOV             R0, R4
1C208A:  ADD             SP, SP, #8
1C208C:  POP.W           {R11}
1C2090:  POP             {R4-R7,PC}
