; =========================================================
; Game Engine Function: alEffectf
; Address            : 0x1DB310 - 0x1DB37C
; =========================================================

1DB310:  PUSH            {R4-R7,R11,LR}
1DB314:  ADD             R11, SP, #0x10
1DB318:  MOV             R5, R2
1DB31C:  MOV             R6, R1
1DB320:  MOV             R7, R0
1DB324:  BL              j_GetContextRef
1DB328:  MOV             R4, R0
1DB32C:  CMP             R4, #0
1DB330:  POPEQ           {R4-R7,R11,PC}
1DB334:  LDR             R0, [R4,#0xFC]
1DB338:  MOV             R1, R7
1DB33C:  ADD             R0, R0, #0x60 ; '`'
1DB340:  BL              j_LookupUIntMapKey
1DB344:  CMP             R0, #0
1DB348:  BEQ             loc_1DB364
1DB34C:  LDR             R7, [R0,#0x9C]
1DB350:  MOV             R1, R4
1DB354:  MOV             R2, R6
1DB358:  MOV             R3, R5
1DB35C:  BLX             R7
1DB360:  B               loc_1DB370
1DB364:  MOV             R0, R4
1DB368:  MOVW            R1, #0xA001
1DB36C:  BL              j_alSetError
1DB370:  MOV             R0, R4
1DB374:  POP             {R4-R7,R11,LR}
1DB378:  B               j_ALCcontext_DecRef
