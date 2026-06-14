; =========================================================
; Game Engine Function: sub_17B9EC
; Address            : 0x17B9EC - 0x17BD98
; =========================================================

17B9EC:  PUSH            {R4-R7,LR}
17B9EE:  ADD             R7, SP, #0xC
17B9F0:  PUSH.W          {R8-R11}
17B9F4:  SUB             SP, SP, #4
17B9F6:  VPUSH           {D8-D11}
17B9FA:  SUB             SP, SP, #0x60
17B9FC:  MOV             R5, R0
17B9FE:  LDR             R0, =(off_234E80 - 0x17BA04)
17BA00:  ADD             R0, PC; off_234E80
17BA02:  LDR             R0, [R0]; dword_381B58
17BA04:  LDR.W           R8, [R0]
17BA08:  MOVW            R0, #0x19AC
17BA0C:  LDR.W           R4, [R8,R0]
17BA10:  MOVS            R0, #1
17BA12:  STRB.W          R0, [R4,#0x7C]
17BA16:  LDRB.W          R0, [R4,#0x7F]
17BA1A:  CMP             R0, #0
17BA1C:  BNE.W           loc_17BD2C
17BA20:  ADD.W           R0, R8, #0x1560
17BA24:  STR             R1, [SP,#0xA0+var_88]
17BA26:  STR             R0, [SP,#0xA0+var_80]
17BA28:  ANDS.W          R10, R2, #2
17BA2C:  MOV             R6, R3
17BA2E:  MOV             R9, R2
17BA30:  ITT NE
17BA32:  LDRNE.W         R0, [R4,#0x1C0]
17BA36:  CMPNE           R0, #0
17BA38:  BNE.W           loc_17BD8C
17BA3C:  MOV             R0, R4
17BA3E:  MOV             R1, R5
17BA40:  MOVS            R2, #0
17BA42:  BL              sub_166AD4
17BA46:  MOV             R11, R0
17BA48:  MOVS            R0, #0xBF800000
17BA4E:  MOV             R1, R5; int
17BA50:  STR             R0, [SP,#0xA0+var_A0]; float
17BA52:  ADD             R0, SP, #0xA0+var_48; int
17BA54:  MOVS            R2, #0; int
17BA56:  MOVS            R3, #1; int
17BA58:  BL              sub_1660A4
17BA5C:  VLDR            S6, [R6,#4]
17BA60:  MOVS            R1, #0
17BA62:  VLDR            S8, [R4,#0xCC]
17BA66:  VLDR            S10, [R4,#0xF8]
17BA6A:  VCMP.F32        S6, #0.0
17BA6E:  VLDR            S4, [R6]
17BA72:  VADD.F32        S18, S8, S10
17BA76:  VMRS            APSR_nzcv, FPSCR
17BA7A:  VLDR            S0, [SP,#0xA0+var_48]
17BA7E:  VCMP.F32        S4, #0.0
17BA82:  VLDR            S2, [SP,#0xA0+var_44]
17BA86:  IT NE
17BA88:  VMOVNE.F32      S2, S6
17BA8C:  VMRS            APSR_nzcv, FPSCR
17BA90:  IT NE
17BA92:  VMOVNE.F32      S0, S4
17BA96:  LDR.W           R0, [R4,#0xC8]
17BA9A:  STR             R0, [SP,#0xA0+var_60]
17BA9C:  VSTR            S2, [SP,#0xA0+var_4C]
17BAA0:  VMOV            S20, R0
17BAA4:  ADD             R0, SP, #0xA0+var_50
17BAA6:  VADD.F32        S4, S2, S18
17BAAA:  VSTR            S0, [SP,#0xA0+var_50]
17BAAE:  VADD.F32        S6, S0, S20
17BAB2:  VSTR            S18, [SP,#0xA0+var_5C]
17BAB6:  VSTR            S4, [SP,#0xA0+var_54]
17BABA:  VSTR            S6, [SP,#0xA0+var_58]
17BABE:  BL              sub_167054
17BAC2:  VLDR            S22, [R4,#0x3C]
17BAC6:  ADD             R0, SP, #0xA0+var_70
17BAC8:  CMP.W           R10, #0
17BACC:  BNE             loc_17BAD4
17BACE:  BL              sub_16FE88
17BAD2:  B               loc_17BAD8
17BAD4:  BL              sub_16FEF4
17BAD8:  VLDR            S16, [SP,#0xA0+var_70]
17BADC:  VMOV.F32        S2, #0.5
17BAE0:  VLDR            S0, [R4,#0xC]
17BAE4:  MOVS            R1, #1
17BAE6:  LDR             R0, [SP,#0xA0+var_80]
17BAE8:  VADD.F32        S0, S16, S0
17BAEC:  VLDR            S6, [SP,#0xA0+var_48]
17BAF0:  VLDR            S4, [SP,#0xA0+var_4C]
17BAF4:  VLDR            S12, [R0]
17BAF8:  VLDR            S14, [R0,#4]
17BAFC:  AND.W           R0, R9, #0x800000
17BB00:  VLDR            S8, [R6]
17BB04:  VLDR            S10, [R6,#4]
17BB08:  EOR.W           R0, R1, R0,LSR#23
17BB0C:  MOVS            R1, #0
17BB0E:  VSUB.F32        S0, S0, S22
17BB12:  VSUB.F32        S0, S0, S20
17BB16:  VCMP.F32        S6, S0
17BB1A:  VMRS            APSR_nzcv, FPSCR
17BB1E:  IT GE
17BB20:  VMOVGE.F32      S0, S6
17BB24:  VMUL.F32        S6, S14, S2
17BB28:  VMUL.F32        S2, S12, S2
17BB2C:  VCMP.F32        S8, #0.0
17BB30:  VMRS            APSR_nzcv, FPSCR
17BB34:  IT NE
17BB36:  MOVNE           R1, #1
17BB38:  ANDS            R0, R1
17BB3A:  IT NE
17BB3C:  VMOVNE.F32      S0, S8
17BB40:  VADD.F32        S0, S0, S20
17BB44:  VLDR            S8, =-0.0
17BB48:  VCMP.F32        S10, #0.0
17BB4C:  VCVT.S32.F32    S6, S6
17BB50:  VMRS            APSR_nzcv, FPSCR
17BB54:  VCVT.S32.F32    S2, S2
17BB58:  IT NE
17BB5A:  VMOVNE.F32      S4, S10
17BB5E:  CMP             R0, #0
17BB60:  IT NE
17BB62:  VMOVNE.F32      S22, S8
17BB66:  VADD.F32        S4, S18, S4
17BB6A:  ANDS.W          R0, R9, #8
17BB6E:  STR             R0, [SP,#0xA0+var_84]
17BB70:  VADD.F32        S0, S0, S22
17BB74:  VCVT.F32.S32    S6, S6
17BB78:  VCVT.F32.S32    S2, S2
17BB7C:  VSUB.F32        S8, S14, S6
17BB80:  VSUB.F32        S10, S12, S2
17BB84:  VSUB.F32        S6, S18, S6
17BB88:  VSUB.F32        S2, S20, S2
17BB8C:  VADD.F32        S4, S8, S4
17BB90:  VADD.F32        S0, S10, S0
17BB94:  VSTR            S6, [SP,#0xA0+var_6C]
17BB98:  VSTR            S2, [SP,#0xA0+var_70]
17BB9C:  VSTR            S4, [SP,#0xA0+var_64]
17BBA0:  VSTR            S0, [SP,#0xA0+var_68]
17BBA4:  BNE             loc_17BBB2
17BBA6:  ADD             R0, SP, #0xA0+var_70
17BBA8:  MOV             R1, R11
17BBAA:  MOVS            R2, #0
17BBAC:  BL              sub_167164
17BBB0:  B               loc_17BBCC
17BBB2:  LDR.W           R6, [R4,#0x16C]
17BBB6:  MOV             R1, R11
17BBB8:  MOVS            R2, #0
17BBBA:  ORR.W           R0, R6, #0x14
17BBBE:  STR.W           R0, [R4,#0x16C]
17BBC2:  ADD             R0, SP, #0xA0+var_70
17BBC4:  BL              sub_167164
17BBC8:  STR.W           R6, [R4,#0x16C]
17BBCC:  CMP             R0, #0
17BBCE:  BEQ.W           loc_17BD1E
17BBD2:  MOV.W           R0, #0x800
17BBD6:  MOVS            R1, #4
17BBD8:  AND.W           R0, R0, R9,LSR#9
17BBDC:  AND.W           R1, R1, R9,LSR#19
17BBE0:  STRD.W          R10, R5, [SP,#0xA0+var_94]
17BBE4:  ADD             R0, R1
17BBE6:  MOVS            R1, #8
17BBE8:  LDR             R5, [SP,#0xA0+var_84]
17BBEA:  AND.W           R1, R1, R9,LSR#19
17BBEE:  AND.W           R10, R9, #0x1000000
17BBF2:  ADD             R0, R1
17BBF4:  MOV.W           R1, R9,LSR#2
17BBF8:  ORR.W           R0, R0, R5,LSL#5
17BBFC:  SUB.W           R2, R7, #-var_71
17BC00:  BFI.W           R0, R1, #1, #1
17BC04:  SUB.W           R3, R7, #-var_72
17BC08:  BFI.W           R0, R1, #4, #1
17BC0C:  MOV             R1, R11
17BC0E:  ORR.W           R0, R0, R10,LSR#18
17BC12:  STR             R0, [SP,#0xA0+var_A0]
17BC14:  ADD             R0, SP, #0xA0+var_70
17BC16:  STR.W           R11, [SP,#0xA0+var_8C]
17BC1A:  BL              sub_17AD64
17BC1E:  CLZ.W           R11, R5
17BC22:  MOV             R6, R0
17BC24:  CBNZ            R0, loc_17BC2C
17BC26:  LDRB.W          R0, [R7,#var_71]
17BC2A:  CBZ             R0, loc_17BC5A
17BC2C:  LDR             R0, [SP,#0xA0+var_80]
17BC2E:  LDRB.W          R0, [R0,#0x5B7]
17BC32:  CBNZ            R0, loc_17BC5A
17BC34:  LDR             R0, [SP,#0xA0+var_80]
17BC36:  LDR.W           R0, [R0,#0x554]
17BC3A:  CMP             R0, R4
17BC3C:  BNE             loc_17BC5A
17BC3E:  LDR             R0, [SP,#0xA0+var_80]
17BC40:  LDR.W           R1, [R0,#0x5AC]
17BC44:  LDR.W           R0, [R4,#0x130]
17BC48:  CMP             R1, R0
17BC4A:  BNE             loc_17BC5A
17BC4C:  LDR             R2, [SP,#0xA0+var_80]
17BC4E:  MOVS            R0, #1
17BC50:  STRB.W          R0, [R2,#0x5B6]
17BC54:  LDR             R0, [SP,#0xA0+var_8C]
17BC56:  BL              sub_166EAC
17BC5A:  MOV.W           R5, R11,LSR#5
17BC5E:  LDR.W           R11, [SP,#0xA0+var_8C]
17BC62:  CBZ             R6, loc_17BC6A
17BC64:  MOV             R0, R11
17BC66:  BL              sub_16702C
17BC6A:  LDR             R0, [SP,#0xA0+var_88]
17BC6C:  CMP.W           R10, #0
17BC70:  AND.W           R5, R5, R0
17BC74:  IT NE
17BC76:  BLNE            sub_16EB84
17BC7A:  LDRB.W          R0, [R7,#var_71]
17BC7E:  ADD.W           R10, SP, #0xA0+var_60
17BC82:  CMP             R0, #0
17BC84:  MOV             R1, R0
17BC86:  IT NE
17BC88:  MOVNE           R1, #1
17BC8A:  ORRS            R1, R5
17BC8C:  CMP             R1, #1
17BC8E:  BNE             loc_17BCD0
17BC90:  LDRB.W          R1, [R7,#var_72]
17BC94:  MOVS            R2, #0x19
17BC96:  CMP             R0, #0
17BC98:  IT EQ
17BC9A:  MOVEQ           R2, #0x18
17BC9C:  MOV             R0, R2
17BC9E:  IT NE
17BCA0:  MOVNE           R0, #0x1A
17BCA2:  CMP             R1, #0
17BCA4:  MOV.W           R1, #0x3F800000
17BCA8:  IT EQ
17BCAA:  MOVEQ           R0, R2
17BCAC:  BL              sub_16586C
17BCB0:  LDRD.W          R12, R1, [SP,#0xA0+var_70]; int
17BCB4:  MOVS            R5, #0
17BCB6:  LDRD.W          R2, R3, [SP,#0xA0+var_68]; int
17BCBA:  STRD.W          R0, R5, [SP,#0xA0+var_A0]; int
17BCBE:  MOV             R0, R12; int
17BCC0:  STR             R5, [SP,#0xA0+var_98]; float
17BCC2:  BL              sub_1661EC
17BCC6:  ADD             R0, SP, #0xA0+var_70
17BCC8:  MOV             R1, R11
17BCCA:  MOVS            R2, #0xA
17BCCC:  BL              sub_166474
17BCD0:  LDR             R0, [SP,#0xA0+var_94]
17BCD2:  ADD.W           R10, R10, #8
17BCD6:  CBZ             R0, loc_17BCFC
17BCD8:  LDR.W           R0, [R4,#0x1C0]
17BCDC:  CBZ             R0, loc_17BCFC
17BCDE:  BL              sub_170B10
17BCE2:  ADD             R0, SP, #0xA0+var_7C
17BCE4:  BL              sub_16FE88
17BCE8:  VLDR            S0, [SP,#0xA0+var_7C]
17BCEC:  VLDR            S2, [SP,#0xA0+var_68]
17BCF0:  VSUB.F32        S0, S0, S16
17BCF4:  VSUB.F32        S0, S2, S0
17BCF8:  VSTR            S0, [SP,#0xA0+var_68]
17BCFC:  LDR             R0, [SP,#0xA0+var_84]
17BCFE:  LDR             R5, [SP,#0xA0+var_90]
17BD00:  CBNZ            R0, loc_17BD3E
17BD02:  ADD.W           R0, R8, #0x15A0
17BD06:  ADD             R1, SP, #0xA0+var_48
17BD08:  MOV             R2, R5; int
17BD0A:  MOVS            R3, #0; int
17BD0C:  STRD.W          R1, R0, [SP,#0xA0+var_A0]; int
17BD10:  ADD             R0, SP, #0xA0+var_70
17BD12:  STR             R0, [SP,#0xA0+var_98]; int
17BD14:  ADD             R0, SP, #0xA0+var_60; int
17BD16:  MOV             R1, R10; int
17BD18:  BL              sub_166154
17BD1C:  B               loc_17BD6C
17BD1E:  CMP.W           R10, #0
17BD22:  ITT NE
17BD24:  LDRNE.W         R0, [R4,#0x1C0]
17BD28:  CMPNE           R0, #0
17BD2A:  BNE             loc_17BD92
17BD2C:  MOVS            R6, #0
17BD2E:  MOV             R0, R6
17BD30:  ADD             SP, SP, #0x60 ; '`'
17BD32:  VPOP            {D8-D11}
17BD36:  ADD             SP, SP, #4
17BD38:  POP.W           {R8-R11}
17BD3C:  POP             {R4-R7,PC}
17BD3E:  MOVW            R0, #0x15D4
17BD42:  ADD.W           R1, R8, R0
17BD46:  MOVS            R0, #0
17BD48:  BL              sub_16EBB4
17BD4C:  ADD.W           R0, R8, #0x15A0
17BD50:  ADD             R1, SP, #0xA0+var_48
17BD52:  MOV             R2, R5; int
17BD54:  MOVS            R3, #0; int
17BD56:  STRD.W          R1, R0, [SP,#0xA0+var_A0]; int
17BD5A:  ADD             R0, SP, #0xA0+var_70
17BD5C:  STR             R0, [SP,#0xA0+var_98]; int
17BD5E:  ADD             R0, SP, #0xA0+var_60; int
17BD60:  MOV             R1, R10; int
17BD62:  BL              sub_166154
17BD66:  MOVS            R0, #1
17BD68:  BL              sub_16EE68
17BD6C:  CMP             R6, #0
17BD6E:  BEQ             loc_17BD2E
17BD70:  MOVS.W          R0, R9,LSL#31
17BD74:  BNE             loc_17BD2E
17BD76:  LDR             R0, [R4,#8]
17BD78:  ANDS.W          R0, R0, #0x4000000
17BD7C:  BEQ             loc_17BD2E
17BD7E:  LDRB.W          R0, [R4,#0x16C]
17BD82:  LSLS            R0, R0, #0x1A
17BD84:  IT PL
17BD86:  BLPL            sub_1703DC
17BD8A:  B               loc_17BD2E
17BD8C:  BL              sub_170AD8
17BD90:  B               loc_17BA3C
17BD92:  BL              sub_170B10
17BD96:  B               loc_17BD2C
