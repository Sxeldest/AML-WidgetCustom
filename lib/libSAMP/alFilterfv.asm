; =========================================================
; Game Engine Function: alFilterfv
; Address            : 0x1DA0E8 - 0x1DA154
; =========================================================

1DA0E8:  PUSH            {R4-R7,R11,LR}
1DA0EC:  ADD             R11, SP, #0x10
1DA0F0:  MOV             R5, R2
1DA0F4:  MOV             R6, R1
1DA0F8:  MOV             R7, R0
1DA0FC:  BL              j_GetContextRef
1DA100:  MOV             R4, R0
1DA104:  CMP             R4, #0
1DA108:  POPEQ           {R4-R7,R11,PC}
1DA10C:  LDR             R0, [R4,#0xFC]
1DA110:  MOV             R1, R7
1DA114:  ADD             R0, R0, #0x84
1DA118:  BL              j_LookupUIntMapKey
1DA11C:  CMP             R0, #0
1DA120:  BEQ             loc_1DA13C
1DA124:  LDR             R7, [R0,#0x18]
1DA128:  MOV             R1, R4
1DA12C:  MOV             R2, R6
1DA130:  MOV             R3, R5
1DA134:  BLX             R7
1DA138:  B               loc_1DA148
1DA13C:  MOV             R0, R4
1DA140:  MOVW            R1, #0xA001
1DA144:  BL              j_alSetError
1DA148:  MOV             R0, R4
1DA14C:  POP             {R4-R7,R11,LR}
1DA150:  B               j_ALCcontext_DecRef
