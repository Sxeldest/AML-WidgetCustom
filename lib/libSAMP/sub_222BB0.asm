; =========================================================
; Game Engine Function: sub_222BB0
; Address            : 0x222BB0 - 0x222C84
; =========================================================

222BB0:  PUSH            {R4-R6,R10,R11,LR}
222BB4:  ADD             R11, SP, #0x10
222BB8:  SUB             SP, SP, #0x10
222BBC:  MOV             R4, R0
222BC0:  LDR             R0, =(unk_2346CC - 0x222BD4)
222BC4:  LDR             R3, =(unk_384194 - 0x222BDC)
222BC8:  MOV             R6, #0
222BCC:  ADD             R0, PC, R0; unk_2346CC
222BD0:  STRB            R6, [R4,#0x4E]
222BD4:  ADD             R3, PC, R3; unk_384194
222BD8:  ADD             R2, R0, #8
222BDC:  STRH            R6, [R4,#0x4C]
222BE0:  ADD             R0, R4, #8
222BE4:  STRD            R2, R3, [R4]
222BE8:  VLD1.8          {D16-D17}, [R1]!
222BEC:  VLD1.8          {D18-D19}, [R1]!
222BF0:  VLD1.8          {D20-D21}, [R1]!
222BF4:  VLD1.8          {D22-D23}, [R1]
222BF8:  MOVW            R1, #0x132; n
222BFC:  VST1.8          {D16-D17}, [R0]!
222C00:  VST1.8          {D18-D19}, [R0]!
222C04:  VST1.8          {D20-D21}, [R0]!
222C08:  VST1.8          {D22-D23}, [R0]!
222C0C:  STR             R6, [R0]
222C10:  ADD             R0, R4, #0x50 ; 'P'; int
222C14:  BL              sub_22178C
222C18:  LDR             R0, [R4,#0x44]
222C1C:  BIC             R5, R0, #1
222C20:  CMP             R5, #0
222C24:  BEQ             loc_222C54
222C28:  ADD             R1, SP, #0x20+var_14
222C2C:  MOV             R0, R5
222C30:  STR             R6, [SP,#0x20+var_14]
222C34:  BL              dl_unwind_find_exidx
222C38:  LDR             R1, [SP,#0x20+var_14]
222C3C:  CMP             R0, #0
222C40:  STR             R0, [SP,#0x20+var_1C]
222C44:  MOV             R1, R1,LSL#3
222C48:  CMPNE           R1, #0
222C4C:  STR             R1, [SP,#0x20+var_18]
222C50:  BNE             loc_222C68
222C54:  MOV             R0, #1
222C58:  STRB            R0, [R4,#0x180]
222C5C:  MOV             R0, #0
222C60:  SUB             SP, R11, #0x10
222C64:  POP             {R4-R6,R10,R11,PC}
222C68:  ADD             R2, SP, #0x20+var_1C
222C6C:  MOV             R0, R4
222C70:  MOV             R1, R5
222C74:  BL              sub_223500
222C78:  CMP             R0, #0
222C7C:  BEQ             loc_222C54
222C80:  B               loc_222C5C
