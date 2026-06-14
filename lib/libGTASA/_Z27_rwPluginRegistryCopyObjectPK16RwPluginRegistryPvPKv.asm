; =========================================================
; Game Engine Function: _Z27_rwPluginRegistryCopyObjectPK16RwPluginRegistryPvPKv
; Address            : 0x1E6264 - 0x1E6292
; =========================================================

1E6264:  PUSH            {R4-R7,LR}
1E6266:  ADD             R7, SP, #0xC
1E6268:  PUSH.W          {R8,R9,R11}
1E626C:  MOV             R8, R0
1E626E:  MOV             R9, R2
1E6270:  MOV             R6, R1
1E6272:  LDR.W           R5, [R8,#0x10]
1E6276:  CBZ             R5, loc_1E628A
1E6278:  LDRD.W          R2, R3, [R5]
1E627C:  MOV             R0, R6
1E627E:  LDR             R4, [R5,#0x28]
1E6280:  MOV             R1, R9
1E6282:  BLX             R4
1E6284:  LDR             R5, [R5,#0x30]
1E6286:  CMP             R5, #0
1E6288:  BNE             loc_1E6278
1E628A:  MOV             R0, R8
1E628C:  POP.W           {R8,R9,R11}
1E6290:  POP             {R4-R7,PC}
