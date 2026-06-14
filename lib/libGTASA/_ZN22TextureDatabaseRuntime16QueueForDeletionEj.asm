; =========================================================
; Game Engine Function: _ZN22TextureDatabaseRuntime16QueueForDeletionEj
; Address            : 0x1E9B5C - 0x1E9BC8
; =========================================================

1E9B5C:  PUSH            {R4-R7,LR}
1E9B5E:  ADD             R7, SP, #0xC
1E9B60:  PUSH.W          {R8-R10}
1E9B64:  MOV             R4, R0
1E9B66:  MOV             R5, R1
1E9B68:  LDRD.W          R0, R6, [R4,#0x9C]
1E9B6C:  ADDS            R1, R6, #1
1E9B6E:  CMP             R0, R1
1E9B70:  BCS             loc_1E9BB0
1E9B72:  ADD.W           R1, R1, R1,LSL#1
1E9B76:  MOVS            R2, #3
1E9B78:  ADD.W           R10, R2, R1,LSR#1
1E9B7C:  CMP             R10, R0
1E9B7E:  BEQ             loc_1E9BB0
1E9B80:  MOV.W           R0, R10,LSL#2; byte_count
1E9B84:  BLX             malloc
1E9B88:  LDR.W           R9, [R4,#0xA4]
1E9B8C:  MOV             R8, R0
1E9B8E:  CMP.W           R9, #0
1E9B92:  BEQ             loc_1E9BA8
1E9B94:  LSLS            R2, R6, #2; n
1E9B96:  MOV             R0, R8; dest
1E9B98:  MOV             R1, R9; src
1E9B9A:  BLX             memmove_1
1E9B9E:  MOV             R0, R9; p
1E9BA0:  BLX             free
1E9BA4:  LDR.W           R6, [R4,#0xA0]
1E9BA8:  STR.W           R8, [R4,#0xA4]
1E9BAC:  STR.W           R10, [R4,#0x9C]
1E9BB0:  LDR.W           R0, [R4,#0xA4]
1E9BB4:  STR.W           R5, [R0,R6,LSL#2]
1E9BB8:  LDR.W           R0, [R4,#0xA0]
1E9BBC:  ADDS            R0, #1
1E9BBE:  STR.W           R0, [R4,#0xA0]
1E9BC2:  POP.W           {R8-R10}
1E9BC6:  POP             {R4-R7,PC}
