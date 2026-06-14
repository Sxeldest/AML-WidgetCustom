; =========================================================
; Game Engine Function: sub_189C10
; Address            : 0x189C10 - 0x189CCA
; =========================================================

189C10:  PUSH            {R4-R7,LR}
189C12:  ADD             R7, SP, #0xC
189C14:  PUSH.W          {R11}
189C18:  SUB             SP, SP, #0x18
189C1A:  LDR             R3, [R0,#0x10]
189C1C:  MOV             R6, R2
189C1E:  MOV             R5, R1
189C20:  MOV             R4, R0
189C22:  CBZ             R3, loc_189C54
189C24:  MOVS            R0, #1
189C26:  ADD             R1, SP, #0x28+var_1C
189C28:  STRB.W          R0, [R7,#var_11]
189C2C:  MOVS            R0, #0
189C2E:  STR             R0, [SP,#0x28+var_18]
189C30:  SUB.W           R0, R7, #-var_11
189C34:  MOV             R2, R6
189C36:  STRD.W          R1, R0, [SP,#0x28+var_28]
189C3A:  MOV             R0, R4
189C3C:  MOV             R1, R5
189C3E:  BL              sub_18A604
189C42:  MOV             R5, R0
189C44:  LDRB.W          R0, [R7,#var_11]
189C48:  CBZ             R0, loc_189C64
189C4A:  CBZ             R5, loc_189CC0
189C4C:  LDRB            R0, [R5]
189C4E:  CBZ             R0, loc_189C8C
189C50:  LDRH            R6, [R5,#8]
189C52:  B               loc_189C96
189C54:  LDR             R0, [R4,#8]
189C56:  CBZ             R0, loc_189C68
189C58:  LDR             R1, [R4,#4]
189C5A:  SUBS            R0, #1
189C5C:  STR             R0, [R4,#8]
189C5E:  LDR.W           R1, [R1,R0,LSL#2]
189C62:  B               loc_189C72
189C64:  MOVS            R0, #0
189C66:  B               loc_189CC2
189C68:  MOV.W           R0, #0x154; unsigned int
189C6C:  BLX             j__Znwj; operator new(uint)
189C70:  MOV             R1, R0
189C72:  STRD.W          R1, R1, [R4,#0x10]
189C76:  LDR             R0, [R6]
189C78:  STR             R0, [R1,#0x48]
189C7A:  MOVS            R0, #1
189C7C:  LDR             R2, [R4,#0x10]
189C7E:  STRB            R0, [R1]
189C80:  STRH            R5, [R1,#8]
189C82:  STR             R0, [R1,#4]
189C84:  MOVS            R1, #0
189C86:  STRD.W          R1, R1, [R2,#0xC8]
189C8A:  B               loc_189CC2
189C8C:  LDR             R0, [R5,#4]
189C8E:  LDRH.W          R6, [SP,#0x28+var_1C]
189C92:  SUBS            R0, #1
189C94:  STR             R0, [R5,#4]
189C96:  LDR             R0, [R4,#8]
189C98:  CBZ             R0, loc_189CA6
189C9A:  LDR             R1, [R4,#4]
189C9C:  SUBS            R2, R0, #1
189C9E:  STR             R2, [R4,#8]
189CA0:  LDR.W           R0, [R1,R2,LSL#2]
189CA4:  B               loc_189CAE
189CA6:  MOV.W           R0, #0x154; unsigned int
189CAA:  BLX             j__Znwj; operator new(uint)
189CAE:  LDR             R1, [R4,#0x10]
189CB0:  MOVS            R2, #1
189CB2:  STRD.W          R1, R5, [R0,#0xD0]
189CB6:  MOVS            R1, #0
189CB8:  STRH            R6, [R0,#8]
189CBA:  STR             R2, [R0,#4]
189CBC:  STRB            R1, [R0]
189CBE:  STR             R0, [R4,#0x10]
189CC0:  MOVS            R0, #1
189CC2:  ADD             SP, SP, #0x18
189CC4:  POP.W           {R11}
189CC8:  POP             {R4-R7,PC}
