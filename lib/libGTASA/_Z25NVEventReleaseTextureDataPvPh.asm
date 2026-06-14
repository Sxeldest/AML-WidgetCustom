; =========================================================
; Game Engine Function: _Z25NVEventReleaseTextureDataPvPh
; Address            : 0x271308 - 0x27133C
; =========================================================

271308:  PUSH            {R4-R7,LR}
27130A:  ADD             R7, SP, #0xC
27130C:  PUSH.W          {R8}
271310:  MOV             R8, R1
271312:  MOV             R5, R0
271314:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
271318:  MOV             R6, R0
27131A:  MOV             R1, R5
27131C:  LDR             R0, [R6]
27131E:  MOV             R2, R8
271320:  MOVS            R3, #2
271322:  LDR.W           R4, [R0,#0x300]
271326:  MOV             R0, R6
271328:  BLX             R4
27132A:  LDR             R0, [R6]
27132C:  MOV             R1, R5
27132E:  LDR             R2, [R0,#0x5C]
271330:  MOV             R0, R6
271332:  POP.W           {R8}
271336:  POP.W           {R4-R7,LR}
27133A:  BX              R2
