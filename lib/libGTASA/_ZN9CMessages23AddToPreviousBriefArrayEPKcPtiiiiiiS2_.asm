; =========================================================
; Game Engine Function: _ZN9CMessages23AddToPreviousBriefArrayEPKcPtiiiiiiS2_
; Address            : 0x54BC3C - 0x54BD50
; =========================================================

54BC3C:  PUSH            {R4-R7,LR}
54BC3E:  ADD             R7, SP, #0xC
54BC40:  PUSH.W          {R8-R11}
54BC44:  SUB             SP, SP, #4
54BC46:  MOV             R12, R0
54BC48:  LDR             R0, =(_ZN9CMessages14PreviousBriefsE_ptr - 0x54BC54)
54BC4A:  LDR.W           LR, [R7,#arg_10]
54BC4E:  MOV             R5, R2
54BC50:  ADD             R0, PC; _ZN9CMessages14PreviousBriefsE_ptr
54BC52:  LDR.W           R10, [R7,#arg_8]
54BC56:  LDRD.W          R8, R11, [R7,#arg_0]
54BC5A:  MOV             R4, R3
54BC5C:  LDR             R0, [R0]; CMessages::PreviousBriefs ...
54BC5E:  MOV             R9, R1
54BC60:  MOVS            R1, #0
54BC62:  MOVS            R3, #0
54BC64:  ADD.W           R2, R0, #0x14
54BC68:  LDR.W           R6, [R2,#-0xC]
54BC6C:  CBZ             R6, loc_54BCB6
54BC6E:  LDR.W           R0, [R2,#-8]
54BC72:  CMP             R0, R5
54BC74:  BNE             loc_54BCA2
54BC76:  LDR.W           R0, [R2,#-4]
54BC7A:  CMP             R0, R4
54BC7C:  ITT EQ
54BC7E:  LDREQ           R0, [R2]
54BC80:  CMPEQ           R0, R8
54BC82:  BNE             loc_54BCA2
54BC84:  LDR             R0, [R2,#4]
54BC86:  CMP             R0, R11
54BC88:  ITT EQ
54BC8A:  LDREQ           R0, [R2,#8]
54BC8C:  CMPEQ           R0, R10
54BC8E:  BNE             loc_54BCA2
54BC90:  CMP             R6, R9
54BC92:  ITTT EQ
54BC94:  LDREQ           R0, [R2,#0xC]
54BC96:  LDREQ           R6, [R7,#arg_C]
54BC98:  CMPEQ           R0, R6
54BC9A:  BNE             loc_54BCA2
54BC9C:  LDR             R0, [R2,#0x10]
54BC9E:  CMP             R0, LR
54BCA0:  BEQ             loc_54BD48
54BCA2:  ADDS            R3, #1
54BCA4:  ADDS            R2, #0x28 ; '('
54BCA6:  ADDS            R1, #1
54BCA8:  UXTH            R0, R3
54BCAA:  CMP             R0, #0x14
54BCAC:  BCC             loc_54BC68
54BCAE:  MOV             R1, R0
54BCB0:  BNE             loc_54BCBA
54BCB2:  MOVS            R0, #0x12
54BCB4:  B               loc_54BCC6
54BCB6:  LSLS            R0, R3, #0x10
54BCB8:  BEQ             loc_54BD04
54BCBA:  MOVW            R0, #0xFFFF
54BCBE:  ADD             R0, R1
54BCC0:  SXTH            R1, R0
54BCC2:  CMP             R1, #0
54BCC4:  BLT             loc_54BD04
54BCC6:  LDR             R1, =(_ZN9CMessages14PreviousBriefsE_ptr - 0x54BCCE)
54BCC8:  SXTH            R2, R0
54BCCA:  ADD             R1, PC; _ZN9CMessages14PreviousBriefsE_ptr
54BCCC:  LDR             R0, [R1]; CMessages::PreviousBriefs ...
54BCCE:  ADD.W           R1, R2, R2,LSL#2
54BCD2:  ADDS            R2, #1
54BCD4:  ADD.W           R0, R0, R1,LSL#3
54BCD8:  MOV             R1, R0
54BCDA:  VLDR            D18, [R0,#0x20]
54BCDE:  VLD1.32         {D16-D17}, [R1]!
54BCE2:  SUBS            R2, #1
54BCE4:  CMP             R2, #0
54BCE6:  VLD1.32         {D20-D21}, [R1]
54BCEA:  ADD.W           R1, R0, #0x28 ; '('
54BCEE:  VST1.32         {D16-D17}, [R1]
54BCF2:  ADD.W           R1, R0, #0x38 ; '8'
54BCF6:  VSTR            D18, [R0,#0x48]
54BCFA:  SUB.W           R0, R0, #0x28 ; '('
54BCFE:  VST1.32         {D20-D21}, [R1]
54BD02:  BGT             loc_54BCD8
54BD04:  CMP.W           R12, #0
54BD08:  BEQ             loc_54BD1E
54BD0A:  LDR             R0, =(_ZN9CMessages14PreviousBriefsE_ptr - 0x54BD16)
54BD0C:  MOV             R1, R12; char *
54BD0E:  MOVS            R2, #8; size_t
54BD10:  MOV             R6, LR
54BD12:  ADD             R0, PC; _ZN9CMessages14PreviousBriefsE_ptr
54BD14:  LDR             R0, [R0]; char *
54BD16:  BLX             strncpy
54BD1A:  MOV             LR, R6
54BD1C:  B               loc_54BD28
54BD1E:  LDR             R0, =(_ZN9CMessages14PreviousBriefsE_ptr - 0x54BD26)
54BD20:  MOVS            R1, #0
54BD22:  ADD             R0, PC; _ZN9CMessages14PreviousBriefsE_ptr
54BD24:  LDR             R0, [R0]; CMessages::PreviousBriefs ...
54BD26:  STRB            R1, [R0]; CMessages::PreviousBriefs
54BD28:  LDR             R0, =(_ZN9CMessages14PreviousBriefsE_ptr - 0x54BD30)
54BD2A:  MOVS            R1, #0
54BD2C:  ADD             R0, PC; _ZN9CMessages14PreviousBriefsE_ptr
54BD2E:  LDR             R0, [R0]; CMessages::PreviousBriefs ...
54BD30:  STRB            R1, [R0,#(dword_A0044C+3 - 0xA00448)]
54BD32:  ADD.W           R1, R0, #0x10
54BD36:  STRD.W          R9, R5, [R0,#(dword_A00450 - 0xA00448)]
54BD3A:  STM.W           R1, {R4,R8,R11}
54BD3E:  LDR             R1, [R7,#arg_C]
54BD40:  STR.W           R10, [R0,#(dword_A00464 - 0xA00448)]
54BD44:  STRD.W          R1, LR, [R0,#(dword_A00468 - 0xA00448)]
54BD48:  ADD             SP, SP, #4
54BD4A:  POP.W           {R8-R11}
54BD4E:  POP             {R4-R7,PC}
