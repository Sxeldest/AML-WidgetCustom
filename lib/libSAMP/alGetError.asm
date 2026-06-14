; =========================================================
; Game Engine Function: alGetError
; Address            : 0x1CE2E8 - 0x1CE334
; =========================================================

1CE2E8:  PUSH            {R4,R10,R11,LR}
1CE2EC:  ADD             R11, SP, #8
1CE2F0:  BL              j_GetContextRef
1CE2F4:  CMP             R0, #0
1CE2F8:  BEQ             loc_1CE328
1CE2FC:  ADD             R1, R0, #0xC4
1CE300:  MOV             R2, #0
1CE304:  DMB             ISH
1CE308:  LDREX           R4, [R1]
1CE30C:  STREX           R3, R2, [R1]
1CE310:  CMP             R3, #0
1CE314:  BNE             loc_1CE308
1CE318:  DMB             ISH
1CE31C:  BL              j_ALCcontext_DecRef
1CE320:  MOV             R0, R4
1CE324:  POP             {R4,R10,R11,PC}
1CE328:  MOVW            R4, #0xA004
1CE32C:  MOV             R0, R4
1CE330:  POP             {R4,R10,R11,PC}
