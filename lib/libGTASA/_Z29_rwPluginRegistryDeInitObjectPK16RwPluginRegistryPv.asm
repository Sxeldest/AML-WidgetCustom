; =========================================================
; Game Engine Function: _Z29_rwPluginRegistryDeInitObjectPK16RwPluginRegistryPv
; Address            : 0x1E623C - 0x1E6264
; =========================================================

1E623C:  PUSH            {R4-R7,LR}
1E623E:  ADD             R7, SP, #0xC
1E6240:  PUSH.W          {R11}
1E6244:  MOV             R4, R0
1E6246:  MOV             R5, R1
1E6248:  LDR             R6, [R4,#0x14]
1E624A:  CBZ             R6, loc_1E625C
1E624C:  LDRD.W          R1, R2, [R6]
1E6250:  MOV             R0, R5
1E6252:  LDR             R3, [R6,#0x24]
1E6254:  BLX             R3
1E6256:  LDR             R6, [R6,#0x34]
1E6258:  CMP             R6, #0
1E625A:  BNE             loc_1E624C
1E625C:  MOV             R0, R4
1E625E:  POP.W           {R11}
1E6262:  POP             {R4-R7,PC}
