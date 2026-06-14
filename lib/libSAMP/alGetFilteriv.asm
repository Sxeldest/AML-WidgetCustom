; =========================================================
; Game Engine Function: alGetFilteriv
; Address            : 0x1DA1D8 - 0x1DA280
; =========================================================

1DA1D8:  PUSH            {R4-R7,R11,LR}
1DA1DC:  ADD             R11, SP, #0x10
1DA1E0:  MOV             R5, R2
1DA1E4:  MOV             R6, R1
1DA1E8:  MOV             R7, R0
1DA1EC:  BL              j_GetContextRef
1DA1F0:  MOV             R4, R0
1DA1F4:  MOVW            R0, #0x8001
1DA1F8:  CMP             R6, R0
1DA1FC:  BNE             loc_1DA22C
1DA200:  CMP             R4, #0
1DA204:  BEQ             locret_1DA27C
1DA208:  LDR             R0, [R4,#0xFC]
1DA20C:  MOV             R1, R7
1DA210:  ADD             R0, R0, #0x84
1DA214:  BL              j_LookupUIntMapKey
1DA218:  CMP             R0, #0
1DA21C:  BEQ             loc_1DA264
1DA220:  LDR             R0, [R0]
1DA224:  STR             R0, [R5]
1DA228:  B               loc_1DA270
1DA22C:  CMP             R4, #0
1DA230:  POPEQ           {R4-R7,R11,PC}
1DA234:  LDR             R0, [R4,#0xFC]
1DA238:  MOV             R1, R7
1DA23C:  ADD             R0, R0, #0x84
1DA240:  BL              j_LookupUIntMapKey
1DA244:  CMP             R0, #0
1DA248:  BEQ             loc_1DA264
1DA24C:  LDR             R7, [R0,#0x20]
1DA250:  MOV             R1, R4
1DA254:  MOV             R2, R6
1DA258:  MOV             R3, R5
1DA25C:  BLX             R7
1DA260:  B               loc_1DA270
1DA264:  MOV             R0, R4
1DA268:  MOVW            R1, #0xA001
1DA26C:  BL              j_alSetError
1DA270:  MOV             R0, R4
1DA274:  POP             {R4-R7,R11,LR}
1DA278:  B               j_ALCcontext_DecRef
1DA27C:  POP             {R4-R7,R11,PC}
