; =========================================================
; Game Engine Function: sub_1079AC
; Address            : 0x1079AC - 0x107C46
; =========================================================

1079AC:  PUSH            {R4-R7,LR}
1079AE:  ADD             R7, SP, #0xC
1079B0:  PUSH.W          {R8-R11}
1079B4:  SUB             SP, SP, #4
1079B6:  VPUSH           {D8-D9}
1079BA:  SUB             SP, SP, #0x98
1079BC:  STR             R0, [SP,#0xC8+var_78]
1079BE:  MOV             R9, R3
1079C0:  LDR             R6, =(aAxl - 0x1079CC); "AXL" ...
1079C2:  MOV             R5, R1
1079C4:  LDR             R3, =(aVehicleSnapsho - 0x1079D0); "Vehicle snapshot: %d" ...
1079C6:  MOVS            R0, #4; prio
1079C8:  ADD             R6, PC; "AXL"
1079CA:  STR             R2, [SP,#0xC8+var_34]
1079CC:  ADD             R3, PC; "Vehicle snapshot: %d"
1079CE:  MOV             R1, R6; tag
1079D0:  MOV             R2, R3; fmt
1079D2:  MOV             R3, R5
1079D4:  BLX             __android_log_print
1079D8:  LDR             R0, =(off_234AE8 - 0x1079E8)
1079DA:  MOV.W           R1, #0x100
1079DE:  MOVS            R2, #0x20 ; ' '
1079E0:  MOVW            R3, #0x505
1079E4:  ADD             R0, PC; off_234AE8
1079E6:  LDR             R0, [R0]; off_2636C4
1079E8:  LDR             R4, [R0]
1079EA:  MOV.W           R0, #0x100
1079EE:  BLX             R4
1079F0:  MOV             R8, R0
1079F2:  LDR             R0, =(off_23494C - 0x1079FC)
1079F4:  MOVW            R1, #:lower16:(loc_1DB83C+1)
1079F8:  ADD             R0, PC; off_23494C
1079FA:  MOVT            R1, #:upper16:(loc_1DB83C+1)
1079FE:  LDR.W           R11, [R0]; dword_23DF24
107A02:  LDR.W           R0, [R11]
107A06:  ADD             R1, R0
107A08:  MOV             R0, R8
107A0A:  BLX             R1
107A0C:  LDR             R2, =(aCreateVehicleD - 0x107A1C); "Create vehicle %d for textdraw" ...
107A0E:  MOV             R10, R0
107A10:  MOVW            R0, #0x239
107A14:  MOV             R4, R5
107A16:  CMP             R5, R0
107A18:  ADD             R2, PC; "Create vehicle %d for textdraw"
107A1A:  IT EQ
107A1C:  MOVWEQ          R4, #0x219
107A20:  MOVW            R0, #0x23A
107A24:  CMP             R5, R0
107A26:  IT EQ
107A28:  MOVWEQ          R4, #0x21A
107A2C:  MOVS            R0, #4; prio
107A2E:  MOV             R1, R6; tag
107A30:  MOV             R3, R4
107A32:  BLX             __android_log_print
107A36:  MOVS            R0, #0x50 ; 'P'; unsigned int
107A38:  BLX             j__Znwj; operator new(uint)
107A3C:  MOV             R6, R0
107A3E:  MOVS            R1, #0
107A40:  MOVS            R0, #0
107A42:  MOVT            R1, #0x4248
107A46:  STRD.W          R0, R0, [SP,#0xC8+var_C0]; int
107A4A:  STRD.W          R1, R0, [SP,#0xC8+var_C8]; float
107A4E:  MOV             R0, R6; int
107A50:  MOV             R1, R4; int
107A52:  MOVS            R2, #0; int
107A54:  MOVS            R3, #0; int
107A56:  BL              sub_109470
107A5A:  CMP.W           R8, #0
107A5E:  MOV.W           R0, #0
107A62:  IT NE
107A64:  CMPNE.W         R10, #0
107A68:  BEQ.W           loc_107C38
107A6C:  MOV             R0, R6
107A6E:  MOVS            R1, #0
107A70:  STR.W           R8, [SP,#0xC8+var_84]
107A74:  LDR             R5, [R7,#arg_4]
107A76:  VLDR            S16, [R7,#arg_0]
107A7A:  BL              sub_F8F1C
107A7E:  MOV             R0, R6
107A80:  MOVS            R1, #0
107A82:  BL              sub_F8EC0
107A86:  MOV             R0, R4
107A88:  BL              sub_108E24
107A8C:  VMOV            S0, R0
107A90:  MOV             R0, R6
107A92:  VMOV.F32        S2, #-1.0
107A96:  VADD.F32        S4, S0, S0
107A9A:  VMOV.F32        S18, #-5.5
107A9E:  VSUB.F32        S2, S2, S4
107AA2:  VMOV.F32        S4, #-2.5
107AA6:  VMUL.F32        S16, S2, S16
107AAA:  VMLA.F32        S18, S0, S4
107AAE:  BL              sub_109864
107AB2:  CMP             R0, #4
107AB4:  IT EQ
107AB6:  VMOVEQ.F32      S16, S18
107ABA:  VMOV            R2, S16
107ABE:  LDR             R0, [R6]
107AC0:  MOVS            R3, #0
107AC2:  MOVS            R1, #0
107AC4:  MOVT            R3, #0x4248
107AC8:  LDR             R4, [R0,#0x10]
107ACA:  MOV             R0, R6
107ACC:  BLX             R4
107ACE:  ADDS            R0, R5, #1
107AD0:  ITT NE
107AD2:  LDRNE           R0, [R7,#arg_8]
107AD4:  ADDSNE.W        R1, R0, #1
107AD8:  BEQ             loc_107AE4
107ADA:  UXTB            R2, R0
107ADC:  UXTB            R1, R5
107ADE:  MOV             R0, R6
107AE0:  BL              sub_109BC8
107AE4:  ADD             R1, SP, #0xC8+var_74
107AE6:  MOV             R0, R6
107AE8:  BL              sub_F8910
107AEC:  VLDR            S0, [R9]
107AF0:  VCMP.F32        S0, #0.0
107AF4:  VMRS            APSR_nzcv, FPSCR
107AF8:  BEQ             loc_107B06
107AFA:  VMOV            R2, S0
107AFE:  ADD             R0, SP, #0xC8+var_74
107B00:  MOVS            R1, #0
107B02:  BL              sub_109038
107B06:  VLDR            S0, [R9,#4]
107B0A:  VCMP.F32        S0, #0.0
107B0E:  VMRS            APSR_nzcv, FPSCR
107B12:  BEQ             loc_107B20
107B14:  VMOV            R2, S0
107B18:  ADD             R0, SP, #0xC8+var_74
107B1A:  MOVS            R1, #1
107B1C:  BL              sub_109038
107B20:  VLDR            S0, [R9,#8]
107B24:  STRD.W          R11, R10, [SP,#0xC8+var_80]
107B28:  VCMP.F32        S0, #0.0
107B2C:  VMRS            APSR_nzcv, FPSCR
107B30:  BEQ             loc_107B3E
107B32:  VMOV            R2, S0
107B36:  ADD             R0, SP, #0xC8+var_74
107B38:  MOVS            R1, #2
107B3A:  BL              sub_109038
107B3E:  LDR             R0, [SP,#0xC8+var_74]
107B40:  ADD             R3, SP, #0xC8+var_44
107B42:  STR             R0, [SP,#0xC8+var_88]
107B44:  LDR             R0, [SP,#0xC8+var_70]
107B46:  STR             R0, [SP,#0xC8+var_8C]
107B48:  LDR             R0, [SP,#0xC8+var_6C]
107B4A:  STR             R0, [SP,#0xC8+var_90]
107B4C:  LDR             R0, [SP,#0xC8+var_68]
107B4E:  STR             R0, [SP,#0xC8+var_94]
107B50:  LDM             R3, {R0-R3}
107B52:  LDRD.W          R10, R11, [SP,#0xC8+var_4C]
107B56:  LDRD.W          R5, R4, [SP,#0xC8+var_64]
107B5A:  STRD.W          R11, R0, [SP,#0xC8+var_A8]
107B5E:  ADD             R0, SP, #0xC8+var_A0
107B60:  STM             R0!, {R1-R3}
107B62:  LDR             R0, [SP,#0xC8+var_94]
107B64:  LDR             R1, [SP,#0xC8+var_88]
107B66:  LDRD.W          R3, R2, [SP,#0xC8+var_90]
107B6A:  STRD.W          R0, R5, [SP,#0xC8+var_C8]
107B6E:  ADD             R0, SP, #0xC8+var_C0
107B70:  LDRD.W          R12, LR, [SP,#0xC8+var_5C]
107B74:  LDRD.W          R9, R8, [SP,#0xC8+var_54]
107B78:  STM.W           R0, {R4,R12,LR}
107B7C:  MOV             R0, R6
107B7E:  STRD.W          R9, R8, [SP,#0xC8+var_B4]
107B82:  STR.W           R10, [SP,#0xC8+var_AC]
107B86:  BL              sub_F8F58
107B8A:  LDR             R5, [SP,#0xC8+var_78]
107B8C:  MOVW            R2, #0x61F9
107B90:  LDR.W           R8, [SP,#0xC8+var_80]
107B94:  MOVT            R2, #0x5D ; ']'
107B98:  LDR             R1, [SP,#0xC8+var_84]
107B9A:  LDR             R0, [R5]
107B9C:  STR             R1, [R0,#0x60]
107B9E:  LDR.W           R1, [R8]
107BA2:  LDR             R0, [R5]
107BA4:  ADD             R1, R2
107BA6:  BLX             R1
107BA8:  LDR.W           R1, [R8]
107BAC:  MOVW            R2, #:lower16:(off_1D5D70+1)
107BB0:  LDR             R0, [R5]
107BB2:  MOVT            R2, #:upper16:(off_1D5D70+1)
107BB6:  ADDS            R3, R1, R2
107BB8:  ADD             R1, SP, #0xC8+var_34
107BBA:  MOVS            R2, #3
107BBC:  BLX             R3
107BBE:  LDR             R0, =(off_234A88 - 0x107BC4)
107BC0:  ADD             R0, PC; off_234A88
107BC2:  LDR             R1, [R0]; off_2636B8
107BC4:  LDR             R0, [R5]
107BC6:  LDR             R1, [R1]
107BC8:  BLX             R1
107BCA:  LDR             R0, [R5,#4]
107BCC:  BL              sub_10914C
107BD0:  LDR             R0, =(off_234A8C - 0x107BD8)
107BD2:  MOVS            R1, #1
107BD4:  ADD             R0, PC; off_234A8C
107BD6:  LDR             R4, [R0]; off_263758
107BD8:  MOVS            R0, #6
107BDA:  LDR             R2, [R4]
107BDC:  BLX             R2
107BDE:  LDR             R2, [R4]
107BE0:  MOVS            R0, #8
107BE2:  MOVS            R1, #1
107BE4:  BLX             R2
107BE6:  LDR             R2, [R4]
107BE8:  MOVS            R0, #7
107BEA:  MOVS            R1, #2
107BEC:  BLX             R2
107BEE:  LDR             R2, [R4]
107BF0:  MOVS            R0, #0xE
107BF2:  MOVS            R1, #0
107BF4:  BLX             R2
107BF6:  LDR.W           R0, [R8]
107BFA:  MOV             R1, #0x5D0BC1
107C02:  ADD             R0, R1
107C04:  BLX             R0
107C06:  LDR             R0, [R6]
107C08:  LDR             R1, [R0,#8]
107C0A:  MOV             R0, R6
107C0C:  BLX             R1
107C0E:  MOV             R0, R6
107C10:  BL              sub_F9000
107C14:  LDR             R0, =(off_234A90 - 0x107C1A)
107C16:  ADD             R0, PC; off_234A90
107C18:  LDR             R1, [R0]; off_2636BC
107C1A:  LDR             R0, [R5]
107C1C:  LDR             R1, [R1]
107C1E:  BLX             R1
107C20:  LDR             R0, [R5,#4]
107C22:  BL              sub_109174
107C26:  LDR             R0, [R6]
107C28:  LDR             R1, [R0,#0xC]
107C2A:  MOV             R0, R6
107C2C:  BLX             R1
107C2E:  LDR             R0, [R6]
107C30:  LDR             R1, [R0,#4]
107C32:  MOV             R0, R6
107C34:  BLX             R1
107C36:  LDR             R0, [SP,#0xC8+var_7C]
107C38:  ADD             SP, SP, #0x98
107C3A:  VPOP            {D8-D9}
107C3E:  ADD             SP, SP, #4
107C40:  POP.W           {R8-R11}
107C44:  POP             {R4-R7,PC}
