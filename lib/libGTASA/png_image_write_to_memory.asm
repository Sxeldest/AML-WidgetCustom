; =========================================================
; Game Engine Function: png_image_write_to_memory
; Address            : 0x204990 - 0x204A48
; =========================================================

204990:  PUSH            {R4-R7,LR}
204992:  ADD             R7, SP, #0xC
204994:  PUSH.W          {R8-R11}
204998:  SUB             SP, SP, #0x34
20499A:  MOV             R6, R0
20499C:  MOV             R4, R3
20499E:  MOV             R9, R2
2049A0:  MOV             R8, R1
2049A2:  CMP             R6, #0
2049A4:  BEQ             loc_204A26
2049A6:  LDR             R0, [R6,#4]
2049A8:  CMP             R0, #1
2049AA:  BNE             loc_204A32
2049AC:  CMP.W           R9, #0
2049B0:  ITT NE
2049B2:  LDRNE.W         R10, [R7,#arg_0]
2049B6:  CMPNE.W         R10, #0
2049BA:  BEQ             loc_204A36
2049BC:  LDR             R0, [R7,#arg_8]
2049BE:  CMP.W           R8, #0
2049C2:  STR             R0, [SP,#0x50+var_4C]
2049C4:  LDR.W           R11, [R7,#arg_4]
2049C8:  ITT EQ
2049CA:  MOVEQ           R0, #0
2049CC:  STREQ.W         R0, [R9]
2049D0:  MOV             R0, R6
2049D2:  BL              sub_204AB0
2049D6:  MOVS            R5, #0
2049D8:  CBZ             R0, loc_204A28
2049DA:  ADD             R0, SP, #0x50+var_48
2049DC:  STR             R5, [SP,#0x50+var_2C]
2049DE:  STM.W           R0, {R6,R10,R11}
2049E2:  ADD             R1, SP, #0x50+var_3C
2049E4:  ADD             R2, SP, #0x50+var_48
2049E6:  LDR             R0, [SP,#0x50+var_4C]
2049E8:  STR.W           R8, [SP,#0x50+var_28]
2049EC:  STR             R5, [SP,#0x50+var_30]
2049EE:  STM             R1!, {R0,R4,R5}
2049F0:  LDR             R1, =(sub_204BD0+1 - 0x2049FA)
2049F2:  LDR.W           R0, [R9]
2049F6:  ADD             R1, PC; sub_204BD0
2049F8:  STRD.W          R0, R5, [SP,#0x50+var_24]
2049FC:  MOV             R0, R6
2049FE:  BLX             j_png_safe_execute
204A02:  MOV             R4, R0
204A04:  MOV             R0, R6
204A06:  BLX             j_png_image_free
204A0A:  CBZ             R4, loc_204A28
204A0C:  LDR             R0, [SP,#0x50+var_20]
204A0E:  CMP.W           R8, #0
204A12:  BEQ             loc_204A1E
204A14:  LDR.W           R1, [R9]
204A18:  CMP             R0, R1
204A1A:  IT HI
204A1C:  MOVHI           R4, #0
204A1E:  MOV             R5, R4
204A20:  STR.W           R0, [R9]
204A24:  B               loc_204A28
204A26:  MOVS            R5, #0
204A28:  MOV             R0, R5
204A2A:  ADD             SP, SP, #0x34 ; '4'
204A2C:  POP.W           {R8-R11}
204A30:  POP             {R4-R7,PC}
204A32:  ADR             R1, aPngImageWriteT_2; "png_image_write_to_memory: incorrect PN"...
204A34:  B               loc_204A38
204A36:  ADR             R1, aPngImageWriteT_3; "png_image_write_to_memory: invalid argu"...
204A38:  MOV             R0, R6
204A3A:  ADD             SP, SP, #0x34 ; '4'
204A3C:  POP.W           {R8-R11}
204A40:  POP.W           {R4-R7,LR}
204A44:  B.W             j_j_png_image_error
