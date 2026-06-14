; =========================================================
; Game Engine Function: INT123_synth_4to1_mono
; Address            : 0x235C4E - 0x235CCC
; =========================================================

235C4E:  PUSH            {R4-R7,LR}
235C50:  ADD             R7, SP, #0xC
235C52:  PUSH.W          {R8,R9,R11}
235C56:  SUB             SP, SP, #0x20
235C58:  MOV             R4, R1
235C5A:  MOVW            R1, #0x91B4
235C5E:  LDR.W           R12, [R4,R1]
235C62:  MOVW            R8, #0xB2A8
235C66:  MOVW            R9, #0xB2A0
235C6A:  MOV             R1, SP
235C6C:  LDR.W           R6, [R4,R8]
235C70:  LDR.W           R5, [R4,R9]
235C74:  STR.W           R1, [R4,R9]
235C78:  MOVS            R1, #0
235C7A:  STR.W           R1, [R4,R8]
235C7E:  MOVS            R1, #0
235C80:  MOV             R2, R4
235C82:  MOVS            R3, #0
235C84:  BLX             R12
235C86:  STR.W           R5, [R4,R9]
235C8A:  ADDS            R2, R5, R6
235C8C:  LDRH.W          R1, [SP,#0x38+var_38]
235C90:  STRH            R1, [R5,R6]
235C92:  LDRH.W          R1, [SP,#0x38+var_34]
235C96:  STRH            R1, [R2,#2]
235C98:  LDRH.W          R1, [SP,#0x38+var_30]
235C9C:  STRH            R1, [R2,#4]
235C9E:  LDRH.W          R1, [SP,#0x38+var_2C]
235CA2:  STRH            R1, [R2,#6]
235CA4:  LDRH.W          R1, [SP,#0x38+var_28]
235CA8:  STRH            R1, [R2,#8]
235CAA:  LDRH.W          R1, [SP,#0x38+var_24]
235CAE:  STRH            R1, [R2,#0xA]
235CB0:  LDRH.W          R1, [SP,#0x38+var_20]
235CB4:  STRH            R1, [R2,#0xC]
235CB6:  LDRH.W          R1, [SP,#0x38+var_1C]
235CBA:  STRH            R1, [R2,#0xE]
235CBC:  ADD.W           R1, R6, #0x10
235CC0:  STR.W           R1, [R4,R8]
235CC4:  ADD             SP, SP, #0x20 ; ' '
235CC6:  POP.W           {R8,R9,R11}
235CCA:  POP             {R4-R7,PC}
