; =========================================================
; Game Engine Function: _Z27_rwPluginRegistryInitObjectPK16RwPluginRegistryPv
; Address            : 0x1E61FA - 0x1E623C
; =========================================================

1E61FA:  PUSH            {R4-R7,LR}
1E61FC:  ADD             R7, SP, #0xC
1E61FE:  PUSH.W          {R11}
1E6202:  MOV             R5, R0
1E6204:  MOV             R4, R1
1E6206:  LDR             R6, [R5,#0x10]
1E6208:  CBNZ            R6, loc_1E6210
1E620A:  B               loc_1E6234
1E620C:  LDR             R6, [R6,#0x30]
1E620E:  CBZ             R6, loc_1E6234
1E6210:  LDRD.W          R1, R2, [R6]
1E6214:  MOV             R0, R4
1E6216:  LDR             R3, [R6,#0x20]
1E6218:  BLX             R3
1E621A:  CMP             R0, #0
1E621C:  BNE             loc_1E620C
1E621E:  LDR             R5, [R6,#0x34]
1E6220:  CBZ             R5, loc_1E6232
1E6222:  LDRD.W          R1, R2, [R5]
1E6226:  MOV             R0, R4
1E6228:  LDR             R3, [R5,#0x24]
1E622A:  BLX             R3
1E622C:  LDR             R5, [R5,#0x34]
1E622E:  CMP             R5, #0
1E6230:  BNE             loc_1E6222
1E6232:  MOVS            R5, #0
1E6234:  MOV             R0, R5
1E6236:  POP.W           {R11}
1E623A:  POP             {R4-R7,PC}
