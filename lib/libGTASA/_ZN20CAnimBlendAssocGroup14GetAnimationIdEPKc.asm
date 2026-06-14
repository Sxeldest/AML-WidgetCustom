; =========================================================
; Game Engine Function: _ZN20CAnimBlendAssocGroup14GetAnimationIdEPKc
; Address            : 0x3898A0 - 0x3898E2
; =========================================================

3898A0:  PUSH            {R4,R6,R7,LR}
3898A2:  ADD             R7, SP, #8
3898A4:  MOV             R4, R0
3898A6:  MOV             R0, R1; this
3898A8:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
3898AC:  LDR             R1, [R4,#8]
3898AE:  CMP             R1, #1
3898B0:  BLT             loc_3898CE
3898B2:  LDR             R2, [R4,#4]
3898B4:  MOVS            R3, #0
3898B6:  ADDS            R2, #0x10
3898B8:  LDR             R4, [R2]
3898BA:  LDR             R4, [R4]
3898BC:  CMP             R4, R0
3898BE:  BEQ             loc_3898D4
3898C0:  ADDS            R3, #1
3898C2:  ADDS            R2, #0x14
3898C4:  CMP             R3, R1
3898C6:  BLT             loc_3898B8
3898C8:  MOV.W           R0, #0xFFFFFFFF
3898CC:  POP             {R4,R6,R7,PC}
3898CE:  MOV.W           R0, #0xFFFFFFFF
3898D2:  POP             {R4,R6,R7,PC}
3898D4:  CMP             R2, #0x10
3898D6:  ITE NE
3898D8:  LDRSHNE.W       R0, [R2,#-0xA]
3898DC:  MOVEQ.W         R0, #0xFFFFFFFF
3898E0:  POP             {R4,R6,R7,PC}
