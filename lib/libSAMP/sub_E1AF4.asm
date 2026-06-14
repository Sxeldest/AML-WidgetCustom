; =========================================================
; Game Engine Function: sub_E1AF4
; Address            : 0xE1AF4 - 0xE1D6A
; =========================================================

E1AF4:  PUSH            {R4-R7,LR}
E1AF6:  ADD             R7, SP, #0xC
E1AF8:  PUSH.W          {R8-R11}
E1AFC:  SUB             SP, SP, #0x64
E1AFE:  STR             R0, [SP,#0x80+var_7C]
E1B00:  MOV             R4, R1
E1B02:  LDR             R0, [R7,#arg_0]
E1B04:  MOV             LR, R2
E1B06:  LDRD.W          R8, R6, [R1]
E1B0A:  MOVS            R1, #0x30 ; '0'
E1B0C:  LDR.W           R10, [R7,#arg_4]
E1B10:  MOV             R11, R6
E1B12:  UBFX.W          R9, R0, #8, #8
E1B16:  STRD.W          R3, R0, [SP,#0x80+var_28]
E1B1A:  CMP.W           R9, #0
E1B1E:  STR.W           R8, [SP,#0x80+var_2C]
E1B22:  STR             R6, [SP,#0x80+var_30]
E1B24:  STRB.W          R1, [R7,#var_31]
E1B28:  STR.W           R9, [SP,#0x80+var_38]
E1B2C:  IT NE
E1B2E:  ADDNE.W         R11, R11, #1
E1B32:  LSLS            R0, R0, #0xE
E1B34:  BMI             loc_E1B3A
E1B36:  MOVS            R0, #0x2E ; '.'
E1B38:  B               loc_E1B44
E1B3A:  MOV             R0, R10; std::locale *
E1B3C:  MOV             R5, LR
E1B3E:  BLX             j__ZN3fmt2v86detail18decimal_point_implIcEET_NS1_10locale_refE; fmt::v8::detail::decimal_point_impl<char>(fmt::v8::detail::locale_ref)
E1B42:  MOV             LR, R5
E1B44:  LDR             R2, [R4,#8]
E1B46:  LDRD.W          R1, R12, [SP,#0x80+var_28]
E1B4A:  ADDS            R5, R6, R2
E1B4C:  UXTB.W          R3, R12
E1B50:  CMP             R3, #1
E1B52:  STRB.W          R0, [R7,#var_39]
E1B56:  BEQ             loc_E1B9C
E1B58:  CBNZ            R3, loc_E1B6C
E1B5A:  CMP             R1, #0
E1B5C:  MOV             R3, R1
E1B5E:  IT LE
E1B60:  MOVLE           R3, #0x10
E1B62:  CMN.W           R5, #3
E1B66:  BLT             loc_E1B9C
E1B68:  CMP             R5, R3
E1B6A:  BGT             loc_E1B9C
E1B6C:  CMP             R2, #0
E1B6E:  STR             R5, [SP,#0x80+var_40]
E1B70:  BMI             loc_E1C1E
E1B72:  SUBS            R0, R1, R5
E1B74:  ADD.W           R8, R2, R11
E1B78:  MOV             R9, LR
E1B7A:  MOVS.W          R1, R12,LSL#12
E1B7E:  STR             R0, [SP,#0x80+var_44]
E1B80:  BPL.W           loc_E1C90
E1B84:  ADD.W           R8, R8, #1
E1B88:  CMP             R0, #0
E1B8A:  BGT             loc_E1C8A
E1B8C:  UXTB.W          R1, R12
E1B90:  CMP             R1, #2
E1B92:  BEQ             loc_E1C8A
E1B94:  MOVS            R0, #1
E1B96:  ADD             R8, R0
E1B98:  STR             R0, [SP,#0x80+var_44]
E1B9A:  B               loc_E1C90
E1B9C:  SUBS            R2, R5, #1
E1B9E:  MOVS.W          R3, R12,LSL#12
E1BA2:  BMI             loc_E1BB2
E1BA4:  MOVS            R3, #0
E1BA6:  CMP             R6, #1
E1BA8:  ITT EQ
E1BAA:  STRBEQ.W        R3, [R7,#var_39]
E1BAE:  MOVEQ           R0, #0
E1BB0:  B               loc_E1BBA
E1BB2:  SUBS            R1, R1, R6
E1BB4:  BIC.W           R3, R1, R1,ASR#31
E1BB8:  ADD             R11, R3
E1BBA:  MOVS.W          R1, R12,LSL#15
E1BBE:  STR             R2, [SP,#0x80+var_60]
E1BC0:  MOV.W           R1, #0x45 ; 'E'
E1BC4:  IT PL
E1BC6:  MOVPL           R1, #0x65 ; 'e'
E1BC8:  STRB.W          R1, [SP,#0x80+var_64+1]
E1BCC:  MOVS            R1, #0x30 ; '0'
E1BCE:  CMP             R5, #0
E1BD0:  STRB.W          R1, [SP,#0x80+var_64]
E1BD4:  LDR.W           R1, [LR]
E1BD8:  STR             R3, [SP,#0x80+var_68]
E1BDA:  STRB.W          R0, [SP,#0x80+var_6C]
E1BDE:  STR             R6, [SP,#0x80+var_70]
E1BE0:  STRD.W          R9, R8, [SP,#0x80+var_78]
E1BE4:  IT LE
E1BE6:  RSBLE.W         R2, R5, #1
E1BEA:  CMP             R1, #1
E1BEC:  BLT             loc_E1C80
E1BEE:  ADD             R1, SP, #0x80+var_78
E1BF0:  STR             R1, [SP,#0x80+var_80]
E1BF2:  CMP             R0, #0
E1BF4:  MOV.W           R0, #3
E1BF8:  MOV.W           R1, #3
E1BFC:  IT EQ
E1BFE:  MOVEQ           R0, #2
E1C00:  CMP.W           R2, #0x3E8
E1C04:  IT GE
E1C06:  MOVGE           R1, #4
E1C08:  CMP             R2, #0x63 ; 'c'
E1C0A:  IT LE
E1C0C:  MOVLE           R1, #2
E1C0E:  ADD             R1, R11
E1C10:  ADDS            R2, R1, R0
E1C12:  LDR             R0, [SP,#0x80+var_7C]
E1C14:  MOV             R1, LR
E1C16:  MOV             R3, R2
E1C18:  BL              sub_E1E10
E1C1C:  B               loc_E1D5E
E1C1E:  CMP             R5, #1
E1C20:  BLT             loc_E1CEC
E1C22:  ADD             R4, SP, #0x80+var_54
E1C24:  SUBS            R0, R1, R6
E1C26:  MOV.W           R1, R12,LSL#12
E1C2A:  UBFX.W          R2, R12, #0x11, #1
E1C2E:  AND.W           R5, R0, R1,ASR#31
E1C32:  MOV             R0, R4
E1C34:  MOV             R1, R10
E1C36:  MOV             R8, LR
E1C38:  STR             R5, [SP,#0x80+var_44]
E1C3A:  BL              sub_DD758
E1C3E:  MOV             R1, R6
E1C40:  BL              sub_DD86C
E1C44:  SUB.W           R1, R7, #-var_31
E1C48:  STR             R1, [SP,#0x80+var_5C]
E1C4A:  ADD             R1, SP, #0x80+var_44
E1C4C:  STRD.W          R4, R1, [SP,#0x80+var_64]
E1C50:  SUB.W           R1, R7, #-var_39
E1C54:  STR             R1, [SP,#0x80+var_68]
E1C56:  ADD             R1, SP, #0x80+var_40
E1C58:  STR             R1, [SP,#0x80+var_6C]
E1C5A:  ADD             R1, SP, #0x80+var_30
E1C5C:  STR             R1, [SP,#0x80+var_70]
E1C5E:  ADD             R1, SP, #0x80+var_2C
E1C60:  STR             R1, [SP,#0x80+var_74]
E1C62:  ADD             R1, SP, #0x80+var_38
E1C64:  STR             R1, [SP,#0x80+var_78]
E1C66:  ADD             R1, SP, #0x80+var_78
E1C68:  STR             R1, [SP,#0x80+var_80]
E1C6A:  CMP             R5, #0
E1C6C:  IT GT
E1C6E:  ADDGT           R11, R5
E1C70:  ADD             R0, R11
E1C72:  MOV             R1, R8
E1C74:  ADDS            R2, R0, #1
E1C76:  LDR             R0, [SP,#0x80+var_7C]
E1C78:  MOV             R3, R2
E1C7A:  BL              sub_E2060
E1C7E:  B               loc_E1CDA
E1C80:  LDR             R1, [SP,#0x80+var_7C]
E1C82:  ADD             R0, SP, #0x80+var_78
E1C84:  BL              sub_E1D84
E1C88:  B               loc_E1D5E
E1C8A:  CMP             R0, #1
E1C8C:  IT GE
E1C8E:  ADDGE           R8, R0
E1C90:  ADD             R6, SP, #0x80+var_54
E1C92:  UBFX.W          R2, R12, #0x11, #1
E1C96:  MOV             R1, R10
E1C98:  MOV             R0, R6
E1C9A:  BL              sub_DD758
E1C9E:  MOV             R1, R5
E1CA0:  BL              sub_DD86C
E1CA4:  SUB.W           R1, R7, #-var_31
E1CA8:  STR             R1, [SP,#0x80+var_58]
E1CAA:  ADD             R1, SP, #0x80+var_44
E1CAC:  STR             R1, [SP,#0x80+var_5C]
E1CAE:  SUB.W           R1, R7, #-var_39
E1CB2:  STR             R1, [SP,#0x80+var_60]
E1CB4:  ADD             R1, SP, #0x80+var_28
E1CB6:  STR             R1, [SP,#0x80+var_64]
E1CB8:  ADD             R1, SP, #0x80+var_30
E1CBA:  STR             R1, [SP,#0x80+var_70]
E1CBC:  ADD             R1, SP, #0x80+var_2C
E1CBE:  STR             R1, [SP,#0x80+var_74]
E1CC0:  ADD             R1, SP, #0x80+var_38
E1CC2:  STRD.W          R4, R6, [SP,#0x80+var_6C]
E1CC6:  STR             R1, [SP,#0x80+var_78]
E1CC8:  ADD.W           R2, R0, R8
E1CCC:  LDR             R0, [SP,#0x80+var_7C]
E1CCE:  ADD             R1, SP, #0x80+var_78
E1CD0:  STR             R1, [SP,#0x80+var_80]
E1CD2:  MOV             R1, R9
E1CD4:  MOV             R3, R2
E1CD6:  BL              sub_E1EC8
E1CDA:  MOV             R4, R0
E1CDC:  LDRB.W          R0, [SP,#0x80+var_54]
E1CE0:  LSLS            R0, R0, #0x1F
E1CE2:  BEQ             loc_E1D60
E1CE4:  LDR             R0, [SP,#0x80+var_4C]; void *
E1CE6:  BLX             j__ZdlPv; operator delete(void *)
E1CEA:  B               loc_E1D60
E1CEC:  NEGS            R2, R5
E1CEE:  CMP             R1, R2
E1CF0:  MOV             R3, R2
E1CF2:  IT LT
E1CF4:  MOVLT           R3, R1
E1CF6:  CMP.W           R1, #0xFFFFFFFF
E1CFA:  IT LE
E1CFC:  MOVLE           R3, R2
E1CFE:  CMP             R6, #0
E1D00:  IT NE
E1D02:  MOVNE           R3, R2
E1D04:  ORRS.W          R1, R3, R6
E1D08:  STR             R3, [SP,#0x80+var_54]
E1D0A:  BEQ             loc_E1D16
E1D0C:  LDR             R0, [SP,#0x80+var_7C]
E1D0E:  MOVS            R1, #1
E1D10:  STRB.W          R1, [SP,#0x80+var_44]
E1D14:  B               loc_E1D2A
E1D16:  LDR             R0, [SP,#0x80+var_7C]
E1D18:  TST.W           R12, #0x80000
E1D1C:  UBFX.W          R1, R12, #0x13, #1
E1D20:  STRB.W          R1, [SP,#0x80+var_44]
E1D24:  BNE             loc_E1D2A
E1D26:  MOVS            R1, #1
E1D28:  B               loc_E1D2C
E1D2A:  MOVS            R1, #2
E1D2C:  ADD             R2, SP, #0x80+var_30
E1D2E:  STR             R2, [SP,#0x80+var_60]
E1D30:  ADD             R2, SP, #0x80+var_2C
E1D32:  STR             R2, [SP,#0x80+var_64]
E1D34:  ADD             R2, SP, #0x80+var_54
E1D36:  STR             R2, [SP,#0x80+var_68]
E1D38:  SUB.W           R2, R7, #-var_39
E1D3C:  STR             R2, [SP,#0x80+var_6C]
E1D3E:  ADD             R2, SP, #0x80+var_44
E1D40:  STR             R2, [SP,#0x80+var_70]
E1D42:  SUB.W           R2, R7, #-var_31
E1D46:  STR             R2, [SP,#0x80+var_74]
E1D48:  ADD             R2, SP, #0x80+var_38
E1D4A:  STR             R2, [SP,#0x80+var_78]
E1D4C:  ADD             R2, SP, #0x80+var_78
E1D4E:  STR             R2, [SP,#0x80+var_80]
E1D50:  ADD.W           R2, R3, R11
E1D54:  ADD             R2, R1
E1D56:  MOV             R1, LR
E1D58:  MOV             R3, R2
E1D5A:  BL              sub_E21B0
E1D5E:  MOV             R4, R0
E1D60:  MOV             R0, R4
E1D62:  ADD             SP, SP, #0x64 ; 'd'
E1D64:  POP.W           {R8-R11}
E1D68:  POP             {R4-R7,PC}
