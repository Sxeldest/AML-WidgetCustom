; =========================================================
; Game Engine Function: alGetFilteri
; Address            : 0x1DA154 - 0x1DA1D8
; =========================================================

1DA154:  PUSH            {R4-R7,R11,LR}
1DA158:  ADD             R11, SP, #0x10
1DA15C:  MOV             R5, R2
1DA160:  MOV             R6, R1
1DA164:  MOV             R7, R0
1DA168:  BL              j_GetContextRef
1DA16C:  MOV             R4, R0
1DA170:  CMP             R4, #0
1DA174:  POPEQ           {R4-R7,R11,PC}
1DA178:  LDR             R0, [R4,#0xFC]
1DA17C:  MOV             R1, R7
1DA180:  ADD             R0, R0, #0x84
1DA184:  BL              j_LookupUIntMapKey
1DA188:  CMP             R0, #0
1DA18C:  BEQ             loc_1DA1A8
1DA190:  MOVW            R1, #0x8001
1DA194:  CMP             R6, R1
1DA198:  BNE             loc_1DA1B8
1DA19C:  LDR             R0, [R0]
1DA1A0:  STR             R0, [R5]
1DA1A4:  B               loc_1DA1CC
1DA1A8:  MOV             R0, R4
1DA1AC:  MOVW            R1, #0xA001
1DA1B0:  BL              j_alSetError
1DA1B4:  B               loc_1DA1CC
1DA1B8:  LDR             R7, [R0,#0x1C]
1DA1BC:  MOV             R1, R4
1DA1C0:  MOV             R2, R6
1DA1C4:  MOV             R3, R5
1DA1C8:  BLX             R7
1DA1CC:  MOV             R0, R4
1DA1D0:  POP             {R4-R7,R11,LR}
1DA1D4:  B               j_ALCcontext_DecRef
