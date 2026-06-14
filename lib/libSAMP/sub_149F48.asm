; =========================================================
; Game Engine Function: sub_149F48
; Address            : 0x149F48 - 0x14A098
; =========================================================

149F48:  PUSH            {R4-R7,LR}
149F4A:  ADD             R7, SP, #0xC
149F4C:  PUSH.W          {R8-R11}
149F50:  SUB             SP, SP, #0xBC
149F52:  MOV             R4, R0
149F54:  LDR.W           R0, [R0,#0x128]
149F58:  CMP             R0, #0
149F5A:  BEQ.W           loc_14A090
149F5E:  ADD             R1, SP, #0xD8+var_5C
149F60:  BL              sub_F8910
149F64:  ADR             R0, dword_14A098
149F66:  ADD.W           R12, SP, #0xD8+var_30
149F6A:  VLD1.64         {D16-D17}, [R0]
149F6E:  ADD             R5, SP, #0xD8+var_70
149F70:  LDR             R0, [SP,#0xD8+var_5C]
149F72:  STR             R0, [SP,#0xD8+var_94]
149F74:  LDR             R0, [SP,#0xD8+var_58]
149F76:  STR             R0, [SP,#0xD8+var_98]
149F78:  LDR             R0, [SP,#0xD8+var_54]
149F7A:  STR             R0, [SP,#0xD8+var_9C]
149F7C:  LDR             R0, [SP,#0xD8+var_48]
149F7E:  STR             R0, [SP,#0xD8+var_A0]
149F80:  LDR             R0, [SP,#0xD8+var_44]
149F82:  STR             R0, [SP,#0xD8+var_A4]
149F84:  VST1.64         {D16-D17}, [R5]
149F88:  ADD             R5, SP, #0xD8+var_90
149F8A:  LDM.W           R12, {R0-R3,R12}
149F8E:  VST1.64         {D16-D17}, [R5]
149F92:  ADD             R5, SP, #0xD8+var_B8
149F94:  LDRD.W          LR, R11, [SP,#0xD8+var_40]
149F98:  STM.W           R5, {R0-R3,R12}
149F9C:  LDR             R0, [SP,#0xD8+var_A0]
149F9E:  LDRD.W          R8, R9, [SP,#0xD8+var_38]
149FA2:  STR             R0, [SP,#0xD8+var_D0]
149FA4:  LDR             R0, [SP,#0xD8+var_A4]
149FA6:  LDR             R1, [SP,#0xD8+var_94]
149FA8:  LDRD.W          R3, R2, [SP,#0xD8+var_9C]
149FAC:  STRD.W          R0, LR, [SP,#0xD8+var_CC]
149FB0:  ADD             R0, SP, #0xD8+var_70
149FB2:  LDRD.W          R10, R6, [SP,#0xD8+var_50]
149FB6:  STRD.W          R10, R6, [SP,#0xD8+var_D8]
149FBA:  STRD.W          R11, R8, [SP,#0xD8+var_C4]
149FBE:  STR.W           R9, [SP,#0xD8+var_BC]
149FC2:  BL              sub_17D12C
149FC6:  ADD.W           R5, R4, #0x86
149FCA:  MOVS            R0, #0xA2
149FCC:  VLD1.16         {D16-D17}, [R5],R0
149FD0:  ADD             R1, SP, #0xD8+var_80
149FD2:  ADD             R0, SP, #0xD8+var_90
149FD4:  ADD             R2, SP, #0xD8+var_70
149FD6:  MOV.W           R3, #0x3F400000
149FDA:  VST1.64         {D16-D17}, [R1]
149FDE:  BL              sub_17D338
149FE2:  ADD             R0, SP, #0xD8+var_90
149FE4:  ADD             R1, SP, #0xD8+var_5C
149FE6:  BL              sub_17D238
149FEA:  LDR             R0, [SP,#0xD8+var_5C]
149FEC:  ADD.W           R12, SP, #0xD8+var_30
149FF0:  STR             R0, [SP,#0xD8+var_94]
149FF2:  ADD.W           R11, SP, #0xD8+var_40
149FF6:  LDR             R0, [SP,#0xD8+var_58]
149FF8:  ADD.W           LR, SP, #0xD8+var_4C
149FFC:  STR             R0, [SP,#0xD8+var_98]
149FFE:  LDR             R0, [SP,#0xD8+var_54]
14A000:  STR             R0, [SP,#0xD8+var_9C]
14A002:  LDR             R0, [SP,#0xD8+var_50]
14A004:  STR             R0, [SP,#0xD8+var_A4]
14A006:  LDR             R0, [R5]
14A008:  STR             R0, [SP,#0xD8+var_A0]
14A00A:  LDM.W           R12, {R0-R3,R12}
14A00E:  STR             R0, [SP,#0xD8+var_B8]
14A010:  LDM.W           R11, {R8-R11}
14A014:  LDR             R0, [SP,#0xD8+var_A4]
14A016:  LDM.W           LR, {R4,R6,LR}
14A01A:  STMEA.W         SP, {R0,R4,R6,LR}
14A01E:  ADD             R0, SP, #0xD8+var_C8
14A020:  STR             R1, [SP,#0xD8+var_B4]
14A022:  STR             R2, [SP,#0xD8+var_B0]
14A024:  STR             R3, [SP,#0xD8+var_AC]
14A026:  STM.W           R0, {R8-R11}
14A02A:  LDRD.W          R2, R1, [SP,#0xD8+var_98]
14A02E:  LDRD.W          R0, R3, [SP,#0xD8+var_A0]
14A032:  STR.W           R12, [SP,#0xD8+var_A8]
14A036:  BL              sub_F894A
14A03A:  LDRD.W          R0, R1, [SP,#0xD8+var_4C]; x
14A03E:  EOR.W           R0, R0, #0x80000000; y
14A042:  BLX             atan2f
14A046:  VMOV            S0, R0
14A04A:  VLDR            D17, =57.295776
14A04E:  VLDR            S4, =360.0
14A052:  VCVT.F64.F32    D16, S0
14A056:  VMUL.F64        D16, D16, D17
14A05A:  VCVT.F32.F64    S0, D16
14A05E:  VLDR            S2, =-360.0
14A062:  VCMP.F32        S0, S4
14A066:  VMRS            APSR_nzcv, FPSCR
14A06A:  VADD.F32        S2, S0, S2
14A06E:  IT GT
14A070:  VMOVGT.F32      S0, S2
14A074:  VCMP.F32        S0, #0.0
14A078:  VADD.F32        S2, S0, S4
14A07C:  VMRS            APSR_nzcv, FPSCR
14A080:  IT MI
14A082:  VMOVMI.F32      S0, S2
14A086:  VMOV            R1, S0
14A08A:  LDR             R0, [R5]
14A08C:  BL              sub_104D60
14A090:  ADD             SP, SP, #0xBC
14A092:  POP.W           {R8-R11}
14A096:  POP             {R4-R7,PC}
