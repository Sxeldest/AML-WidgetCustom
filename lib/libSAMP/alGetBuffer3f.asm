; =========================================================
; Game Engine Function: alGetBuffer3f
; Address            : 0x1D62E0 - 0x1D635C
; =========================================================

1D62E0:  PUSH            {R4-R8,R10,R11,LR}
1D62E4:  ADD             R11, SP, #0x18
1D62E8:  MOV             R6, R3
1D62EC:  MOV             R7, R2
1D62F0:  MOV             R8, R0
1D62F4:  LDR             R5, [R11,#arg_0]
1D62F8:  BL              j_GetContextRef
1D62FC:  MOV             R4, R0
1D6300:  CMP             R4, #0
1D6304:  BEQ             locret_1D6340
1D6308:  CMP             R7, #0
1D630C:  CMPNE           R6, #0
1D6310:  BEQ             loc_1D6344
1D6314:  CMP             R5, #0
1D6318:  BEQ             loc_1D6344
1D631C:  LDR             R0, [R4,#0xFC]
1D6320:  MOV             R1, R8
1D6324:  ADD             R0, R0, #0x3C ; '<'
1D6328:  BL              j_LookupUIntMapKey
1D632C:  CMP             R0, #0
1D6330:  MOV             R0, R4
1D6334:  MOVWNE          R1, #0xA002
1D6338:  MOVWEQ          R1, #0xA001
1D633C:  B               loc_1D634C
1D6340:  POP             {R4-R8,R10,R11,PC}
1D6344:  MOV             R0, R4
1D6348:  MOVW            R1, #0xA003
1D634C:  BL              j_alSetError
1D6350:  MOV             R0, R4
1D6354:  POP             {R4-R8,R10,R11,LR}
1D6358:  B               j_ALCcontext_DecRef
