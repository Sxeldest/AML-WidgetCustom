; =========================================================
; Game Engine Function: sub_1D9BA0
; Address            : 0x1D9BA0 - 0x1D9C58
; =========================================================

1D9BA0:  PUSH            {R4-R7,LR}
1D9BA2:  ADD             R7, SP, #0xC
1D9BA4:  PUSH.W          {R8-R11}
1D9BA8:  SUB             SP, SP, #4
1D9BAA:  MOV             R4, R0
1D9BAC:  LDR             R0, =(RwEngineInstance_ptr - 0x1D9BB4)
1D9BAE:  MOV             R8, R1
1D9BB0:  ADD             R0, PC; RwEngineInstance_ptr
1D9BB2:  LDR             R5, [R0]; RwEngineInstance
1D9BB4:  LDR             R0, [R5]
1D9BB6:  LDR.W           R1, [R0,#0x118]
1D9BBA:  MOV             R0, R4
1D9BBC:  BLX             R1
1D9BBE:  LDR             R1, =(dword_6BCF04 - 0x1D9BC4)
1D9BC0:  ADD             R1, PC; dword_6BCF04
1D9BC2:  LDR             R2, [R1]
1D9BC4:  LDR             R1, [R5]
1D9BC6:  ADD             R2, R1
1D9BC8:  LDR.W           R6, [R2,#0x21C]
1D9BCC:  CBZ             R6, loc_1D9BF4
1D9BCE:  ADD.W           R9, R4, R0
1D9BD2:  LDR.W           R2, [R1,#0xF8]
1D9BD6:  MOV             R1, R6
1D9BD8:  MOV             R0, R9
1D9BDA:  BLX             R2
1D9BDC:  LDR             R0, =(RwEngineInstance_ptr - 0x1D9BE2)
1D9BDE:  ADD             R0, PC; RwEngineInstance_ptr
1D9BE0:  LDR             R0, [R0]; RwEngineInstance
1D9BE2:  LDR             R0, [R0]
1D9BE4:  LDR.W           R1, [R0,#0xC4]
1D9BE8:  MOV             R0, R4
1D9BEA:  BLX             R1
1D9BEC:  CBZ             R0, loc_1D9BFE
1D9BEE:  MOVS            R4, #0
1D9BF0:  STR.W           R6, [R8]
1D9BF4:  MOV             R0, R4
1D9BF6:  ADD             SP, SP, #4
1D9BF8:  POP.W           {R8-R11}
1D9BFC:  POP             {R4-R7,PC}
1D9BFE:  LDR             R0, =(RwEngineInstance_ptr - 0x1D9C04)
1D9C00:  ADD             R0, PC; RwEngineInstance_ptr
1D9C02:  LDR.W           R10, [R0]; RwEngineInstance
1D9C06:  LDR             R0, =(RwEngineInstance_ptr - 0x1D9C0C)
1D9C08:  ADD             R0, PC; RwEngineInstance_ptr
1D9C0A:  LDR.W           R11, [R0]; RwEngineInstance
1D9C0E:  LDR.W           R0, [R10]
1D9C12:  ADD.W           R5, R6, #0x14
1D9C16:  MOV             R1, R5
1D9C18:  LDR.W           R2, [R0,#0xF8]
1D9C1C:  MOV             R0, R9
1D9C1E:  BLX             R2
1D9C20:  LDR.W           R0, [R10]
1D9C24:  LDR.W           R1, [R0,#0xC4]
1D9C28:  MOV             R0, R4
1D9C2A:  BLX             R1
1D9C2C:  CBNZ            R0, loc_1D9C54
1D9C2E:  LDR             R6, [R6,#0x30]
1D9C30:  CMP             R6, #0
1D9C32:  BEQ             loc_1D9BF4
1D9C34:  LDR.W           R0, [R11]
1D9C38:  MOV             R1, R6
1D9C3A:  LDR.W           R2, [R0,#0xF8]
1D9C3E:  MOV             R0, R9
1D9C40:  BLX             R2
1D9C42:  LDR.W           R0, [R11]
1D9C46:  LDR.W           R1, [R0,#0xC4]
1D9C4A:  MOV             R0, R4
1D9C4C:  BLX             R1
1D9C4E:  CMP             R0, #0
1D9C50:  BEQ             loc_1D9C0E
1D9C52:  B               loc_1D9BEE
1D9C54:  MOV             R6, R5
1D9C56:  B               loc_1D9BEE
