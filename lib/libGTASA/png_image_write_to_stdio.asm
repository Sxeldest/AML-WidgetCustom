; =========================================================
; Game Engine Function: png_image_write_to_stdio
; Address            : 0x204BFC - 0x204C86
; =========================================================

204BFC:  PUSH            {R4-R7,LR}
204BFE:  ADD             R7, SP, #0xC
204C00:  PUSH.W          {R8-R11}
204C04:  SUB             SP, SP, #0x2C
204C06:  MOV             R4, R0
204C08:  MOV             R9, R3
204C0A:  MOV             R8, R2
204C0C:  MOV             R5, R1
204C0E:  CBZ             R4, loc_204C64
204C10:  LDR             R0, [R4,#4]
204C12:  CMP             R0, #1
204C14:  BNE             loc_204C70
204C16:  CMP             R5, #0
204C18:  IT NE
204C1A:  CMPNE.W         R9, #0
204C1E:  BEQ             loc_204C74
204C20:  MOV             R0, R4
204C22:  LDRD.W          R11, R10, [R7,#arg_0]
204C26:  BL              sub_204AB0
204C2A:  MOVS            R6, #0
204C2C:  CBZ             R0, loc_204C66
204C2E:  LDR             R0, [R4]
204C30:  VMOV.I32        Q8, #0
204C34:  LDR             R1, =(loc_204CF0+1 - 0x204C3E)
204C36:  MOV             R2, SP
204C38:  LDR             R0, [R0]
204C3A:  ADD             R1, PC; loc_204CF0
204C3C:  STR.W           R5, [R0,#0x120]
204C40:  ADD.W           R0, R2, #0x14
204C44:  VST1.32         {D16-D17}, [R0]
204C48:  MOV             R0, R4
204C4A:  STRD.W          R6, R6, [SP,#0x48+var_24]
204C4E:  STMEA.W         SP, {R4,R9,R11}
204C52:  STRD.W          R10, R8, [SP,#0x48+var_3C]
204C56:  BLX             j_png_safe_execute
204C5A:  MOV             R6, R0
204C5C:  MOV             R0, R4
204C5E:  BLX             j_png_image_free
204C62:  B               loc_204C66
204C64:  MOVS            R6, #0
204C66:  MOV             R0, R6
204C68:  ADD             SP, SP, #0x2C ; ','
204C6A:  POP.W           {R8-R11}
204C6E:  POP             {R4-R7,PC}
204C70:  ADR             R1, aPngImageWriteT_4; "png_image_write_to_stdio: incorrect PNG"...
204C72:  B               loc_204C76
204C74:  ADR             R1, aPngImageWriteT_5; "png_image_write_to_stdio: invalid argum"...
204C76:  MOV             R0, R4
204C78:  ADD             SP, SP, #0x2C ; ','
204C7A:  POP.W           {R8-R11}
204C7E:  POP.W           {R4-R7,LR}
204C82:  B.W             j_j_png_image_error
