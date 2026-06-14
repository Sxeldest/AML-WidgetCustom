; =========================================================
; Game Engine Function: sub_10AAA0
; Address            : 0x10AAA0 - 0x10AB74
; =========================================================

10AAA0:  PUSH            {R4-R6,R10,R11,LR}
10AAA4:  ADD             R11, SP, #0x10
10AAA8:  SUB             SP, SP, #0x10
10AAAC:  MOV             R4, R0
10AAB0:  LDR             R0, =(unk_1148F0 - 0x10AAC4)
10AAB4:  LDR             R3, =(unk_1AF8BC - 0x10AACC)
10AAB8:  MOV             R6, #0
10AABC:  ADD             R0, PC, R0; unk_1148F0
10AAC0:  STRB            R6, [R4,#0x4E]
10AAC4:  ADD             R3, PC, R3; unk_1AF8BC
10AAC8:  ADD             R2, R0, #8
10AACC:  STRH            R6, [R4,#0x4C]
10AAD0:  ADD             R0, R4, #8
10AAD4:  STRD            R2, R3, [R4]
10AAD8:  VLD1.8          {D16-D17}, [R1]!
10AADC:  VLD1.8          {D18-D19}, [R1]!
10AAE0:  VLD1.8          {D20-D21}, [R1]!
10AAE4:  VLD1.8          {D22-D23}, [R1]
10AAE8:  MOVW            R1, #0x132; n
10AAEC:  VST1.8          {D16-D17}, [R0]!
10AAF0:  VST1.8          {D18-D19}, [R0]!
10AAF4:  VST1.8          {D20-D21}, [R0]!
10AAF8:  VST1.8          {D22-D23}, [R0]!
10AAFC:  STR             R6, [R0]
10AB00:  ADD             R0, R4, #0x50 ; 'P'; int
10AB04:  BL              sub_10967C
10AB08:  LDR             R0, [R4,#0x44]
10AB0C:  BIC             R5, R0, #1
10AB10:  CMP             R5, #0
10AB14:  BEQ             loc_10AB44
10AB18:  ADD             R1, SP, #0x20+var_14
10AB1C:  MOV             R0, R5
10AB20:  STR             R6, [SP,#0x20+var_14]
10AB24:  BL              dl_unwind_find_exidx
10AB28:  LDR             R1, [SP,#0x20+var_14]
10AB2C:  CMP             R0, #0
10AB30:  STR             R0, [SP,#0x20+var_1C]
10AB34:  MOV             R1, R1,LSL#3
10AB38:  CMPNE           R1, #0
10AB3C:  STR             R1, [SP,#0x20+var_18]
10AB40:  BNE             loc_10AB58
10AB44:  MOV             R0, #1
10AB48:  STRB            R0, [R4,#0x180]
10AB4C:  MOV             R0, #0
10AB50:  SUB             SP, R11, #0x10
10AB54:  POP             {R4-R6,R10,R11,PC}
10AB58:  ADD             R2, SP, #0x20+var_1C
10AB5C:  MOV             R0, R4
10AB60:  MOV             R1, R5
10AB64:  BL              sub_10B3F0
10AB68:  CMP             R0, #0
10AB6C:  BEQ             loc_10AB44
10AB70:  B               loc_10AB4C
