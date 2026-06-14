; =========================================================
; Game Engine Function: alGetFilterfv
; Address            : 0x1DA2EC - 0x1DA358
; =========================================================

1DA2EC:  PUSH            {R4-R7,R11,LR}
1DA2F0:  ADD             R11, SP, #0x10
1DA2F4:  MOV             R5, R2
1DA2F8:  MOV             R6, R1
1DA2FC:  MOV             R7, R0
1DA300:  BL              j_GetContextRef
1DA304:  MOV             R4, R0
1DA308:  CMP             R4, #0
1DA30C:  POPEQ           {R4-R7,R11,PC}
1DA310:  LDR             R0, [R4,#0xFC]
1DA314:  MOV             R1, R7
1DA318:  ADD             R0, R0, #0x84
1DA31C:  BL              j_LookupUIntMapKey
1DA320:  CMP             R0, #0
1DA324:  BEQ             loc_1DA340
1DA328:  LDR             R7, [R0,#0x28]
1DA32C:  MOV             R1, R4
1DA330:  MOV             R2, R6
1DA334:  MOV             R3, R5
1DA338:  BLX             R7
1DA33C:  B               loc_1DA34C
1DA340:  MOV             R0, R4
1DA344:  MOVW            R1, #0xA001
1DA348:  BL              j_alSetError
1DA34C:  MOV             R0, R4
1DA350:  POP             {R4-R7,R11,LR}
1DA354:  B               j_ALCcontext_DecRef
