; =========================================================
; Game Engine Function: sub_222AD4
; Address            : 0x222AD4 - 0x222B18
; =========================================================

222AD4:  PUSH            {R4-R7,LR}
222AD6:  ADD             R7, SP, #0xC
222AD8:  PUSH.W          {R8}
222ADC:  LDRH            R4, [R0,#0x1A]
222ADE:  CBZ             R4, loc_222B12
222AE0:  ADD.W           R5, R0, #0x48 ; 'H'
222AE4:  LDR             R0, =(RwEngineInstance_ptr - 0x222AEE)
222AE6:  MOV.W           R8, #0
222AEA:  ADD             R0, PC; RwEngineInstance_ptr
222AEC:  LDR             R6, [R0]; RwEngineInstance
222AEE:  LDR.W           R0, [R5,#-0x18]; unsigned int
222AF2:  CMP             R0, #0
222AF4:  IT NE
222AF6:  BLXNE           j__Z16emu_ArraysDeletej; emu_ArraysDelete(uint)
222AFA:  LDR             R0, [R5]
222AFC:  SUBS            R4, #1
222AFE:  CBZ             R0, loc_222B0C
222B00:  LDR             R1, [R6]
222B02:  LDR.W           R1, [R1,#0x130]
222B06:  BLX             R1
222B08:  STR.W           R8, [R5]
222B0C:  ADDS            R5, #0x38 ; '8'
222B0E:  LSLS            R0, R4, #0x10
222B10:  BNE             loc_222AEE
222B12:  POP.W           {R8}
222B16:  POP             {R4-R7,PC}
