; =========================================================
; Game Engine Function: sub_149A00
; Address            : 0x149A00 - 0x149C0E
; =========================================================

149A00:  PUSH            {R4-R7,LR}
149A02:  ADD             R7, SP, #0xC
149A04:  PUSH.W          {R8-R11}
149A08:  SUB             SP, SP, #4
149A0A:  VPUSH           {D8}
149A0E:  SUB             SP, SP, #0x88
149A10:  MOV             R4, R0
149A12:  LDR.W           R0, [R0,#0x128]
149A16:  CMP             R0, #0
149A18:  BEQ.W           loc_149B4C
149A1C:  ADD             R1, SP, #0xB0+var_68
149A1E:  BL              sub_F8910
149A22:  LDR.W           R0, [R4,#0x128]
149A26:  BL              sub_F8C70
149A2A:  VLDR            S0, [R4,#0x28]
149A2E:  CMP             R0, #0
149A30:  BEQ             loc_149AEE
149A32:  VMOV            R0, S0
149A36:  LDR             R1, [SP,#0xB0+var_38]
149A38:  BL              sub_108700
149A3C:  LDR             R2, [R4,#0x2C]
149A3E:  LDR             R1, [SP,#0xB0+var_34]
149A40:  STR             R0, [R4,#0x40]
149A42:  MOV             R0, R2
149A44:  BL              sub_108700
149A48:  LDR             R2, [R4,#0x30]
149A4A:  LDR             R1, [SP,#0xB0+var_30]
149A4C:  STR             R0, [R4,#0x44]
149A4E:  MOV             R0, R2
149A50:  BL              sub_108700
149A54:  VLDR            S16, =0.00001
149A58:  VMOV            S4, R0
149A5C:  VLDR            S2, [R4,#0x40]
149A60:  VCMP.F32        S4, S16
149A64:  VLDR            S0, [R4,#0x44]
149A68:  VMRS            APSR_nzcv, FPSCR
149A6C:  STR             R0, [R4,#0x48]
149A6E:  ITT LE
149A70:  VCMPLE.F32      S2, S16
149A74:  VMRSLE          APSR_nzcv, FPSCR
149A78:  BLE             loc_149B5A
149A7A:  VMOV.F32        S6, #1.0
149A7E:  VCMP.F32        S4, S6
149A82:  VMRS            APSR_nzcv, FPSCR
149A86:  ITTT LE
149A88:  VMOVLE.F32      S4, #2.0
149A8C:  VCMPLE.F32      S2, S4
149A90:  VMRSLE          APSR_nzcv, FPSCR
149A94:  BLE             loc_149B66
149A96:  ADD.W           LR, SP, #0xB0+var_58
149A9A:  ADD.W           R10, SP, #0xB0+var_64
149A9E:  VLDR            S0, [R4,#0x28]
149AA2:  LDM.W           LR, {R9,R12,LR}
149AA6:  VLDR            S2, [R4,#0x2C]
149AAA:  VLDR            S4, [R4,#0x30]
149AAE:  LDR.W           R1, [R4,#0x128]
149AB2:  LDR             R0, [SP,#0xB0+var_68]
149AB4:  LDRD.W          R6, R4, [SP,#0xB0+var_40]
149AB8:  STR             R0, [SP,#0xB0+var_78]
149ABA:  LDR             R0, [SP,#0xB0+var_2C]
149ABC:  LDM.W           R10, {R2,R3,R10}
149AC0:  LDR.W           R8, [SP,#0xB0+var_4C]
149AC4:  LDRD.W          R11, R5, [SP,#0xB0+var_48]
149AC8:  VSTR            S0, [SP,#0xB0+var_38]
149ACC:  VSTR            S2, [SP,#0xB0+var_34]
149AD0:  VSTR            S4, [SP,#0xB0+var_30]
149AD4:  STR             R0, [SP,#0xB0+var_80]
149AD6:  STR             R4, [SP,#0xB0+var_90]
149AD8:  VSTR            S0, [SP,#0xB0+var_8C]
149ADC:  VSTR            S2, [SP,#0xB0+var_88]
149AE0:  VSTR            S4, [SP,#0xB0+var_84]
149AE4:  STRD.W          R10, R9, [SP,#0xB0+var_B0]
149AE8:  STRD.W          R12, LR, [SP,#0xB0+var_A8]
149AEC:  B               loc_149B3C
149AEE:  ADD.W           LR, SP, #0xB0+var_64
149AF2:  VLDR            S2, [R4,#0x2C]
149AF6:  VLDR            S4, [R4,#0x30]
149AFA:  LDR.W           R1, [R4,#0x128]
149AFE:  LDRD.W          R6, R4, [SP,#0xB0+var_40]
149B02:  LDR.W           R8, [SP,#0xB0+var_4C]
149B06:  LDRD.W          R11, R5, [SP,#0xB0+var_48]
149B0A:  LDR             R0, [SP,#0xB0+var_68]
149B0C:  LDM.W           LR, {R2,R3,R12,LR}
149B10:  LDRD.W          R9, R10, [SP,#0xB0+var_54]
149B14:  STR             R0, [SP,#0xB0+var_78]
149B16:  LDR             R0, [SP,#0xB0+var_2C]
149B18:  VSTR            S0, [SP,#0xB0+var_38]
149B1C:  VSTR            S2, [SP,#0xB0+var_34]
149B20:  VSTR            S4, [SP,#0xB0+var_30]
149B24:  STR             R0, [SP,#0xB0+var_80]
149B26:  STR             R4, [SP,#0xB0+var_90]
149B28:  VSTR            S0, [SP,#0xB0+var_8C]
149B2C:  VSTR            S2, [SP,#0xB0+var_88]
149B30:  VSTR            S4, [SP,#0xB0+var_84]
149B34:  STRD.W          R12, LR, [SP,#0xB0+var_B0]
149B38:  STRD.W          R9, R10, [SP,#0xB0+var_A8]
149B3C:  MOV             R0, R1
149B3E:  LDR             R1, [SP,#0xB0+var_78]
149B40:  STRD.W          R8, R11, [SP,#0xB0+var_A0]
149B44:  STRD.W          R5, R6, [SP,#0xB0+var_98]
149B48:  BL              sub_F894A
149B4C:  ADD             SP, SP, #0x88
149B4E:  VPOP            {D8}
149B52:  ADD             SP, SP, #4
149B54:  POP.W           {R8-R11}
149B58:  POP             {R4-R7,PC}
149B5A:  VCMP.F32        S0, S16
149B5E:  VMRS            APSR_nzcv, FPSCR
149B62:  BLE             loc_149B4C
149B64:  B               loc_149A7A
149B66:  VCMP.F32        S0, S4
149B6A:  VMRS            APSR_nzcv, FPSCR
149B6E:  BGT             loc_149A96
149B70:  LDR.W           R0, [R4,#0x128]
149B74:  ADD             R1, SP, #0xB0+var_74
149B76:  BL              sub_F8994
149B7A:  VLDR            S0, [R4,#0x40]
149B7E:  VCMP.F32        S0, S16
149B82:  VMRS            APSR_nzcv, FPSCR
149B86:  BLE             loc_149BA4
149B88:  VLDR            S0, [SP,#0xB0+var_38]
149B8C:  VLDR            S2, [R4,#0x28]
149B90:  VLDR            S4, [SP,#0xB0+var_74]
149B94:  VSUB.F32        S0, S2, S0
149B98:  VLDR            S2, =0.1
149B9C:  VMLA.F32        S4, S0, S2
149BA0:  VSTR            S4, [SP,#0xB0+var_74]
149BA4:  VLDR            S0, [R4,#0x44]
149BA8:  VCMP.F32        S0, S16
149BAC:  VMRS            APSR_nzcv, FPSCR
149BB0:  BLE             loc_149BCE
149BB2:  VLDR            S0, [SP,#0xB0+var_34]
149BB6:  VLDR            S2, [R4,#0x2C]
149BBA:  VLDR            S4, [SP,#0xB0+var_70]
149BBE:  VSUB.F32        S0, S2, S0
149BC2:  VLDR            S2, =0.1
149BC6:  VMLA.F32        S4, S0, S2
149BCA:  VSTR            S4, [SP,#0xB0+var_70]
149BCE:  VLDR            S0, [R4,#0x48]
149BD2:  VCMP.F32        S0, S16
149BD6:  VMRS            APSR_nzcv, FPSCR
149BDA:  BLE             loc_149BFE
149BDC:  VLDR            S0, [SP,#0xB0+var_30]
149BE0:  VLDR            S2, [R4,#0x30]
149BE4:  VLDR            S4, [SP,#0xB0+var_6C]
149BE8:  VSUB.F32        S0, S2, S0
149BEC:  VLDR            S2, =0.1
149BF0:  VMLA.F32        S4, S0, S2
149BF4:  VMOV            R3, S4
149BF8:  VSTR            S4, [SP,#0xB0+var_6C]
149BFC:  B               loc_149C00
149BFE:  LDR             R3, [SP,#0xB0+var_6C]
149C00:  LDRD.W          R1, R2, [SP,#0xB0+var_74]
149C04:  LDR.W           R0, [R4,#0x128]
149C08:  BL              sub_F89BC
149C0C:  B               loc_149B4C
