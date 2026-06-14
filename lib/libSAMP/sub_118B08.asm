; =========================================================
; Game Engine Function: sub_118B08
; Address            : 0x118B08 - 0x118CEC
; =========================================================

118B08:  PUSH            {R4-R7,LR}
118B0A:  ADD             R7, SP, #0xC
118B0C:  PUSH.W          {R8-R10}
118B10:  VPUSH           {D8-D13}
118B14:  SUB             SP, SP, #0x48
118B16:  MOV             R4, R0
118B18:  LDR             R0, [R7,#arg_0]
118B1A:  STR             R0, [SP,#0x90+var_4C]
118B1C:  MOV             R5, R3
118B1E:  LDR             R0, [R4]
118B20:  MOV             R8, R2
118B22:  ADD             R2, SP, #0x90+var_80
118B24:  MOV             R6, R1
118B26:  MOV             R1, R4
118B28:  LDR             R3, [R0,#8]
118B2A:  MOV.W           R0, #0x42800000
118B2E:  STRD.W          R0, R0, [SP,#0x90+var_80]
118B32:  ADD             R0, SP, #0x90+var_54
118B34:  BLX             R3
118B36:  LDR             R0, [R4]
118B38:  ADD             R2, SP, #0x90+var_80
118B3A:  MOV             R1, R4
118B3C:  LDR             R3, [R0,#8]
118B3E:  MOV.W           R0, #0x41800000
118B42:  STRD.W          R0, R0, [SP,#0x90+var_80]
118B46:  ADD             R0, SP, #0x90+var_5C
118B48:  BLX             R3
118B4A:  LDR             R0, [R4]
118B4C:  MOV             R1, R4
118B4E:  LDR             R2, [R0,#0x14]
118B50:  ADD             R0, SP, #0x90+var_80
118B52:  BLX             R2
118B54:  LDR             R0, [R4]
118B56:  VMOV            S16, R5
118B5A:  VLDR            S20, [SP,#0x90+var_80]
118B5E:  VMOV            S22, R6
118B62:  VCMP.F32        S16, #0.0
118B66:  MOV             R1, R4
118B68:  LDR             R2, [R0,#0x4C]
118B6A:  ADD             R0, SP, #0x90+var_68
118B6C:  VMRS            APSR_nzcv, FPSCR
118B70:  BLE             loc_118B7A
118B72:  BLX             R2
118B74:  VLDR            S24, [SP,#0x90+var_68]
118B78:  B               loc_118B84
118B7A:  BLX             R2
118B7C:  VLDR            S0, [SP,#0x90+var_68]
118B80:  VNEG.F32        S24, S0
118B84:  LDR             R0, [R4]
118B86:  ADD.W           R9, SP, #0x90+var_80
118B8A:  MOV             R1, R4
118B8C:  LDR             R2, [R0,#0x14]
118B8E:  MOV             R0, R9
118B90:  BLX             R2
118B92:  LDR             R0, [R4]
118B94:  MOV             R1, R4
118B96:  VLDR            S18, [SP,#0x90+var_7C]
118B9A:  LDR             R2, [R0,#0x4C]
118B9C:  ADD             R0, SP, #0x90+var_68
118B9E:  BLX             R2
118BA0:  VMOV.F32        S26, #0.5
118BA4:  LDRD.W          R3, R0, [SP,#0x90+var_54]
118BA8:  VADD.F32        S0, S20, S24
118BAC:  MOV.W           R1, #0xC0000000
118BB0:  STRD.W          R0, R9, [SP,#0x90+var_90]
118BB4:  ADD.W           R0, R4, #0x60 ; '`'
118BB8:  STR             R1, [SP,#0x90+var_80]
118BBA:  VMUL.F32        S20, S0, S26
118BBE:  VLDR            S0, [SP,#0x90+var_64]
118BC2:  VMLS.F32        S18, S0, S26
118BC6:  VMOV            R5, S18
118BCA:  VADD.F32        S24, S20, S16
118BCE:  VMOV            R6, S24
118BD2:  MOV             R2, R5
118BD4:  MOV             R1, R6
118BD6:  BL              sub_163176
118BDA:  VMOV.F32        S8, S18
118BDE:  VLDR            S0, [SP,#0x90+var_5C]
118BE2:  VLDR            S2, [SP,#0x90+var_58]
118BE6:  MOV             R0, R8
118BE8:  VLDR            S4, [SP,#0x90+var_54]
118BEC:  VMLA.F32        S24, S0, S26
118BF0:  VLDR            S6, [SP,#0x90+var_50]
118BF4:  ADD.W           R10, SP, #0x90+var_4C
118BF8:  VSUB.F32        S0, S4, S0
118BFC:  STR.W           R10, [SP,#0x90+var_90+4]; float
118C00:  VMLA.F32        S8, S2, S26
118C04:  VMOV            R1, S24
118C08:  VMOV            R3, S0
118C0C:  VSUB.F32        S0, S6, S2
118C10:  VMOV            R2, S8
118C14:  VSTR            S0, [SP,#0x90+var_90]
118C18:  BL              sub_163176
118C1C:  VLDR            S0, =0.01
118C20:  MOV             R1, R6; int
118C22:  LDRD.W          R3, R0, [SP,#0x90+var_54]; int
118C26:  MOV             R2, R5; int
118C28:  VMUL.F32        S0, S22, S0
118C2C:  STR.W           R10, [SP,#0x90+var_88]; int
118C30:  STR             R0, [SP,#0x90+var_90]; float
118C32:  ADD.W           R0, R4, #0x64 ; 'd'; int
118C36:  VSTR            S0, [SP,#0x90+var_90+4]
118C3A:  BL              sub_163588
118C3E:  VCVT.F64.F32    D16, S22
118C42:  LDR             R3, =(a0f - 0x118C4C); "%.0f%%" ...
118C44:  ADD             R6, SP, #0x90+var_68
118C46:  MOVS            R0, #0
118C48:  ADD             R3, PC; "%.0f%%"
118C4A:  STRD.W          R0, R0, [SP,#0x90+var_68]
118C4E:  MOV             R0, R6
118C50:  MOVS            R1, #8
118C52:  MOVS            R2, #8
118C54:  VSTR            D16, [SP,#0x90+var_90]
118C58:  BL              sub_118CF4
118C5C:  LDR             R0, [R4]
118C5E:  MOV.W           R1, #0x3F000000
118C62:  LDR             R2, [R0,#0x18]
118C64:  MOV             R0, R4
118C66:  BLX             R2
118C68:  MOV             R5, R0
118C6A:  LDR             R0, [R4]
118C6C:  MOV             R1, #0x3FA66666
118C74:  LDR             R2, [R0,#0x18]
118C76:  MOV             R0, R4
118C78:  BLX             R2
118C7A:  MOV             R1, R0
118C7C:  MOV             R0, R5
118C7E:  BL              sub_163C58
118C82:  MOVS            R0, #0
118C84:  BL              sub_163CA4
118C88:  MOVS            R0, #1
118C8A:  BL              sub_163D1C
118C8E:  MOVS            R0, #2
118C90:  BL              sub_163D80
118C94:  MOV.W           R0, #0xFFFFFFFF
118C98:  STR             R0, [SP,#0x90+var_6C]
118C9A:  ADD             R0, SP, #0x90+var_6C
118C9C:  BL              sub_163C74
118CA0:  VMOV.I32        Q8, #0
118CA4:  MOV             R0, R6
118CA6:  MOV             R1, R9
118CA8:  VST1.64         {D16-D17}, [R9]
118CAC:  BL              sub_163C40
118CB0:  VLDR            S0, [SP,#0x90+var_54]
118CB4:  VCMP.F32        S16, #0.0
118CB8:  VLDR            S2, [SP,#0x90+var_50]
118CBC:  MOV             R2, R9
118CBE:  VNEG.F32        S4, S0
118CC2:  VMRS            APSR_nzcv, FPSCR
118CC6:  IT GT
118CC8:  VMOVGT.F32      S4, S0
118CCC:  VADD.F32        S0, S18, S2
118CD0:  VADD.F32        S2, S20, S4
118CD4:  VMOV            R1, S0
118CD8:  VMOV            R0, S2
118CDC:  BL              sub_163D64
118CE0:  ADD             SP, SP, #0x48 ; 'H'
118CE2:  VPOP            {D8-D13}
118CE6:  POP.W           {R8-R10}
118CEA:  POP             {R4-R7,PC}
