; =========================================================
; Game Engine Function: sub_959E0
; Address            : 0x959E0 - 0x95C30
; =========================================================

959E0:  PUSH            {R4-R7,LR}
959E2:  ADD             R7, SP, #0xC
959E4:  PUSH.W          {R8,R9,R11}
959E8:  VPUSH           {D8-D10}
959EC:  SUB             SP, SP, #0x30
959EE:  LDR             R3, =(dword_1ACF68 - 0x959F4)
959F0:  ADD             R3, PC; dword_1ACF68
959F2:  LDR             R0, [R3]
959F4:  LDR             R1, =(__stack_chk_guard_ptr - 0x959FA)
959F6:  ADD             R1, PC; __stack_chk_guard_ptr
959F8:  LDR             R1, [R1]; __stack_chk_guard
959FA:  LDR             R1, [R1]
959FC:  STR             R1, [SP,#0x60+var_34]
959FE:  MOVW            R1, #0x19AC
95A02:  LDR             R6, [R0,R1]
95A04:  LDRSH.W         R2, [R6,#0x84]
95A08:  CMP             R2, #2
95A0A:  BLT             loc_95A30
95A0C:  LDR             R0, [SP,#0x60+var_34]
95A0E:  LDR             R1, =(__stack_chk_guard_ptr - 0x95A14)
95A10:  ADD             R1, PC; __stack_chk_guard_ptr
95A12:  LDR             R1, [R1]; __stack_chk_guard
95A14:  LDR             R1, [R1]
95A16:  CMP             R1, R0
95A18:  ITTTT EQ
95A1A:  ADDEQ           SP, SP, #0x30 ; '0'
95A1C:  VPOPEQ          {D8-D10}
95A20:  POPEQ.W         {R8,R9,R11}
95A24:  POPEQ.W         {R4-R7,LR}
95A28:  IT EQ
95A2A:  BEQ.W           sub_94DC0
95A2E:  B               loc_95C2C
95A30:  ADD.W           R8, R0, R1
95A34:  LDRD.W          R2, R1, [R6,#0x14]
95A38:  LDR.W           R0, [R6,#0x9C]
95A3C:  STR             R2, [SP,#0x60+var_40]
95A3E:  VMOV            S20, R2
95A42:  STR             R1, [SP,#0x60+var_3C]
95A44:  LSLS            R2, R0, #0x1F
95A46:  BEQ             loc_95A5E
95A48:  VMOV.F32        S0, #4.0
95A4C:  VCMP.F32        S20, S0
95A50:  VMRS            APSR_nzcv, FPSCR
95A54:  IT LS
95A56:  VMOVLS.F32      S20, S0
95A5A:  VSTR            S20, [SP,#0x60+var_40]
95A5E:  VMOV            S16, R1
95A62:  MOV             R9, R3
95A64:  LSLS            R0, R0, #0x1E
95A66:  BPL             loc_95A7E
95A68:  VMOV.F32        S0, #4.0
95A6C:  VCMP.F32        S16, S0
95A70:  VMRS            APSR_nzcv, FPSCR
95A74:  IT LS
95A76:  VMOVLS.F32      S16, S0
95A7A:  VSTR            S16, [SP,#0x60+var_3C]
95A7E:  BL              sub_94DC0
95A82:  LDR.W           R0, [R8]
95A86:  MOVS            R1, #0
95A88:  LDRD.W          R5, R4, [R0,#0xC8]
95A8C:  VLDR            S2, [R0,#0xCC]
95A90:  VLDR            S0, [R0,#0xC8]
95A94:  ADD             R0, SP, #0x60+var_40
95A96:  VADD.F32        S19, S2, S16
95A9A:  STRD.W          R5, R4, [SP,#0x60+var_50]
95A9E:  VADD.F32        S18, S0, S20
95AA2:  VSTR            S19, [SP,#0x60+var_44]
95AA6:  VSTR            S18, [SP,#0x60+var_48]
95AAA:  BL              sub_8B104
95AAE:  LDR.W           R0, [R6,#0x138]
95AB2:  VMOV            S17, R4
95AB6:  VMOV            S16, R5
95ABA:  CMP             R0, #0
95ABC:  ITT EQ
95ABE:  LDRBEQ.W        R0, [R6,#0x141]
95AC2:  CMPEQ           R0, #0
95AC4:  BEQ             loc_95B10
95AC6:  LDRB            R0, [R6,#0xA]
95AC8:  LSLS            R0, R0, #0x18
95ACA:  BMI             loc_95B10
95ACC:  ADD             R4, SP, #0x60+var_50
95ACE:  LDR             R1, [R6,#0x4C]
95AD0:  MOVS            R2, #0
95AD2:  MOV             R0, R4
95AD4:  BL              sub_8B314
95AD8:  LDR             R1, [R6,#0x4C]
95ADA:  MOV             R0, R4
95ADC:  MOVS            R2, #1
95ADE:  BL              sub_8A1F8
95AE2:  LDR.W           R0, [R6,#0x138]
95AE6:  CMP             R0, #0
95AE8:  ITT EQ
95AEA:  LDREQ.W         R0, [R8,#0x108]
95AEE:  CMPEQ           R6, R0
95AF0:  BNE.W           loc_95C12
95AF4:  ADR             R0, dword_95C30
95AF6:  LDR.W           R1, [R8,#0x10C]
95AFA:  VLD1.64         {D16-D17}, [R0@128]
95AFE:  MOV             R0, SP
95B00:  VADD.F32        Q8, Q4, Q8
95B04:  MOVS            R2, #2
95B06:  VST1.64         {D16-D17}, [R0,#0x60+var_60]
95B0A:  BL              sub_8A1F8
95B0E:  B               loc_95C12
95B10:  LDR.W           R1, [R9]
95B14:  MOVW            R2, #0x19AC
95B18:  ADD             R3, SP, #0x60+var_50
95B1A:  MOVS            R6, #0
95B1C:  VLD1.64         {D16-D17}, [R3]
95B20:  LDR             R0, [R1,R2]
95B22:  ADD.W           R3, R0, #0x110
95B26:  VST1.32         {D16-D17}, [R3]
95B2A:  MOVW            R3, #0x1A68
95B2E:  LDR             R2, [R1,R2]
95B30:  STR             R6, [R1,R3]
95B32:  STRD.W          R6, R6, [R0,#0x108]
95B36:  VLDR            S0, [R2,#0x214]
95B3A:  VCMP.F32        S0, S19
95B3E:  VMRS            APSR_nzcv, FPSCR
95B42:  BPL             loc_95B6E
95B44:  VLDR            S2, [R2,#0x21C]
95B48:  VCMP.F32        S2, S17
95B4C:  VMRS            APSR_nzcv, FPSCR
95B50:  BLE             loc_95B6E
95B52:  VLDR            S6, [R2,#0x210]
95B56:  VCMP.F32        S6, S18
95B5A:  VMRS            APSR_nzcv, FPSCR
95B5E:  BPL             loc_95B6E
95B60:  VLDR            S4, [R2,#0x218]
95B64:  VCMP.F32        S4, S16
95B68:  VMRS            APSR_nzcv, FPSCR
95B6C:  BGT             loc_95B86
95B6E:  MOVW            R3, #0x2D20
95B72:  ADD             R3, R1
95B74:  LDRB            R3, [R3]
95B76:  CMP             R3, #0
95B78:  BEQ             loc_95C12
95B7A:  VLDR            S6, [R2,#0x210]
95B7E:  VLDR            S4, [R2,#0x218]
95B82:  VLDR            S2, [R2,#0x21C]
95B86:  MOVW            R2, #0x1570
95B8A:  VCMP.F32        S6, S16
95B8E:  ADD             R2, R1
95B90:  VMRS            APSR_nzcv, FPSCR
95B94:  IT LS
95B96:  VMOVLS.F32      S6, S16
95B9A:  VLDR            S8, [R2]
95B9E:  VSUB.F32        S10, S6, S8
95BA2:  VLDR            S6, [R1,#0xE0]
95BA6:  VCMP.F32        S6, S10
95BAA:  VMRS            APSR_nzcv, FPSCR
95BAE:  BLT             loc_95C12
95BB0:  VLDR            S10, [R2,#4]
95BB4:  VCMP.F32        S0, S17
95BB8:  VMRS            APSR_nzcv, FPSCR
95BBC:  IT LS
95BBE:  VMOVLS.F32      S0, S17
95BC2:  VSUB.F32        S12, S0, S10
95BC6:  VCMP.F32        S19, S2
95BCA:  VMRS            APSR_nzcv, FPSCR
95BCE:  VCMP.F32        S18, S4
95BD2:  IT MI
95BD4:  VMOVMI.F32      S2, S19
95BD8:  VMRS            APSR_nzcv, FPSCR
95BDC:  IT MI
95BDE:  VMOVMI.F32      S4, S18
95BE2:  VLDR            S0, [R1,#0xE4]
95BE6:  VCMP.F32        S0, S12
95BEA:  VMRS            APSR_nzcv, FPSCR
95BEE:  BLT             loc_95C12
95BF0:  VADD.F32        S4, S4, S8
95BF4:  VCMP.F32        S6, S4
95BF8:  VMRS            APSR_nzcv, FPSCR
95BFC:  ITTTT MI
95BFE:  VADDMI.F32      S2, S2, S10
95C02:  VCMPMI.F32      S0, S2
95C06:  VMRSMI          APSR_nzcv, FPSCR
95C0A:  MOVMI           R1, #1
95C0C:  IT MI
95C0E:  STRMI.W         R1, [R0,#0x10C]
95C12:  LDR             R0, [SP,#0x60+var_34]
95C14:  LDR             R1, =(__stack_chk_guard_ptr - 0x95C1A)
95C16:  ADD             R1, PC; __stack_chk_guard_ptr
95C18:  LDR             R1, [R1]; __stack_chk_guard
95C1A:  LDR             R1, [R1]
95C1C:  CMP             R1, R0
95C1E:  ITTTT EQ
95C20:  ADDEQ           SP, SP, #0x30 ; '0'
95C22:  VPOPEQ          {D8-D10}
95C26:  POPEQ.W         {R8,R9,R11}
95C2A:  POPEQ           {R4-R7,PC}
95C2C:  BLX             __stack_chk_fail
