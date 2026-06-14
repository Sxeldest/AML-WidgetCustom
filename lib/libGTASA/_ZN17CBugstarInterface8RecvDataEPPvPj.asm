; =========================================================
; Game Engine Function: _ZN17CBugstarInterface8RecvDataEPPvPj
; Address            : 0x3BEB98 - 0x3BEC0A
; =========================================================

3BEB98:  PUSH            {R4-R7,LR}
3BEB9A:  ADD             R7, SP, #0xC
3BEB9C:  PUSH.W          {R8,R9,R11}
3BEBA0:  SUB             SP, SP, #8
3BEBA2:  MOV             R6, R0
3BEBA4:  MOVS            R0, #0
3BEBA6:  STR             R0, [SP,#0x20+var_1C]
3BEBA8:  MOV             R8, R2
3BEBAA:  LDR             R0, [R6,#4]
3BEBAC:  MOV             R9, R1
3BEBAE:  LDR             R1, [R6,#0xC]
3BEBB0:  MOVS            R3, #4
3BEBB2:  LDR             R2, [R0]
3BEBB4:  LDR             R4, [R2,#0x14]
3BEBB6:  ADD             R2, SP, #0x20+var_1C
3BEBB8:  BLX             R4
3BEBBA:  LDR             R4, [SP,#0x20+var_1C]
3BEBBC:  CBZ             R4, loc_3BEC02
3BEBBE:  MOV             R0, R4; unsigned int
3BEBC0:  BLX             _Znaj; operator new[](uint)
3BEBC4:  STR.W           R0, [R9]
3BEBC8:  MOV             R3, R4
3BEBCA:  STR.W           R4, [R8]
3BEBCE:  LDR             R0, [R6,#4]
3BEBD0:  LDR             R1, [R6,#0xC]
3BEBD2:  LDR             R2, [R0]
3BEBD4:  LDR             R5, [R2,#0x14]
3BEBD6:  MOV             R2, R9
3BEBD8:  BLX             R5
3BEBDA:  LDR             R0, [R6,#4]
3BEBDC:  MOVS            R3, #4
3BEBDE:  LDR             R1, [R6,#0xC]
3BEBE0:  LDR             R2, [R0]
3BEBE2:  LDR             R6, [R2,#0x14]
3BEBE4:  ADD             R2, SP, #0x20+var_1C
3BEBE6:  BLX             R6
3BEBE8:  LDR             R0, [SP,#0x20+var_1C]
3BEBEA:  CBZ             R0, loc_3BEC02
3BEBEC:  LDR.W           R0, [R9]; void *
3BEBF0:  CMP             R0, #0
3BEBF2:  IT NE
3BEBF4:  BLXNE           _ZdlPv; operator delete(void *)
3BEBF8:  MOVS            R0, #0
3BEBFA:  STR.W           R0, [R9]
3BEBFE:  STR.W           R0, [R8]
3BEC02:  ADD             SP, SP, #8
3BEC04:  POP.W           {R8,R9,R11}
3BEC08:  POP             {R4-R7,PC}
