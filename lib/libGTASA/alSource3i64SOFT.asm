; =========================================================
; Game Engine Function: alSource3i64SOFT
; Address            : 0x258A98 - 0x258B84
; =========================================================

258A98:  PUSH            {R4-R7,LR}
258A9A:  ADD             R7, SP, #0xC
258A9C:  PUSH.W          {R8-R11}
258AA0:  SUB             SP, SP, #0x24
258AA2:  STR             R3, [SP,#0x40+var_3C]
258AA4:  MOV             R6, R0
258AA6:  LDR             R0, [R7,#arg_C]
258AA8:  MOV             R9, R2
258AAA:  STR             R0, [SP,#0x40+var_40]
258AAC:  MOV             R5, R1
258AAE:  LDR.W           R8, [R7,#arg_8]
258AB2:  LDRD.W          R10, R11, [R7,#arg_0]
258AB6:  BLX             j_GetContextRef
258ABA:  MOV             R4, R0
258ABC:  CBZ             R4, loc_258AFE
258ABE:  ADD.W           R0, R4, #8
258AC2:  MOV             R1, R6
258AC4:  BLX             j_LookupUIntMapKey
258AC8:  CBZ             R0, loc_258B06
258ACA:  MOVW            R1, #0x1004
258ACE:  SUBS            R1, R5, R1
258AD0:  CMP             R1, #3
258AD2:  BCC             loc_258ADE
258AD4:  MOVS            R1, #0x20006
258ADA:  CMP             R5, R1
258ADC:  BNE             loc_258B3A
258ADE:  STR.W           R9, [SP,#0x40+var_38]
258AE2:  ADD             R3, SP, #0x40+var_38
258AE4:  STR.W           R8, [SP,#0x40+var_28]
258AE8:  MOV             R2, R5
258AEA:  STRD.W          R10, R11, [SP,#0x40+var_30]
258AEE:  LDR             R1, [SP,#0x40+var_3C]
258AF0:  STR             R1, [SP,#0x40+var_34]
258AF2:  LDR             R1, [SP,#0x40+var_40]
258AF4:  STR             R1, [SP,#0x40+var_24]
258AF6:  MOV             R1, R4
258AF8:  BL              sub_2587CC
258AFC:  B               loc_258B74
258AFE:  ADD             SP, SP, #0x24 ; '$'
258B00:  POP.W           {R8-R11}
258B04:  POP             {R4-R7,PC}
258B06:  LDR             R0, =(TrapALError_ptr - 0x258B0C)
258B08:  ADD             R0, PC; TrapALError_ptr
258B0A:  LDR             R0, [R0]; TrapALError
258B0C:  LDRB            R0, [R0]
258B0E:  CMP             R0, #0
258B10:  ITT NE
258B12:  MOVNE           R0, #5; sig
258B14:  BLXNE           raise
258B18:  LDREX.W         R0, [R4,#0x50]
258B1C:  CBNZ            R0, loc_258B6C
258B1E:  ADD.W           R0, R4, #0x50 ; 'P'
258B22:  MOVW            R1, #0xA001
258B26:  DMB.W           ISH
258B2A:  STREX.W         R2, R1, [R0]
258B2E:  CBZ             R2, loc_258B70
258B30:  LDREX.W         R2, [R0]
258B34:  CMP             R2, #0
258B36:  BEQ             loc_258B2A
258B38:  B               loc_258B6C
258B3A:  LDR             R0, =(TrapALError_ptr - 0x258B40)
258B3C:  ADD             R0, PC; TrapALError_ptr
258B3E:  LDR             R0, [R0]; TrapALError
258B40:  LDRB            R0, [R0]
258B42:  CMP             R0, #0
258B44:  ITT NE
258B46:  MOVNE           R0, #5; sig
258B48:  BLXNE           raise
258B4C:  LDREX.W         R0, [R4,#0x50]
258B50:  CBNZ            R0, loc_258B6C
258B52:  ADD.W           R0, R4, #0x50 ; 'P'
258B56:  MOVW            R1, #0xA002
258B5A:  DMB.W           ISH
258B5E:  STREX.W         R2, R1, [R0]
258B62:  CBZ             R2, loc_258B70
258B64:  LDREX.W         R2, [R0]
258B68:  CMP             R2, #0
258B6A:  BEQ             loc_258B5E
258B6C:  CLREX.W
258B70:  DMB.W           ISH
258B74:  MOV             R0, R4
258B76:  ADD             SP, SP, #0x24 ; '$'
258B78:  POP.W           {R8-R11}
258B7C:  POP.W           {R4-R7,LR}
258B80:  B.W             ALCcontext_DecRef
