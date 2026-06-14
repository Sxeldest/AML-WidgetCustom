; =========================================================
; Game Engine Function: sub_16EF60
; Address            : 0x16EF60 - 0x16F12A
; =========================================================

16EF60:  PUSH            {R4-R7,LR}
16EF62:  ADD             R7, SP, #0xC
16EF64:  PUSH.W          {R8,R9,R11}
16EF68:  SUB             SP, SP, #0x20
16EF6A:  LDR             R4, =(dword_381B58 - 0x16EF78)
16EF6C:  MOV             R8, R0
16EF6E:  MOVW            R0, #0x1A10
16EF72:  MOV             R5, R1
16EF74:  ADD             R4, PC; dword_381B58
16EF76:  LDR.W           R9, [R4]
16EF7A:  LDRB.W          R0, [R9,R0]
16EF7E:  LSLS            R0, R0, #0x1B
16EF80:  BPL             loc_16F054
16EF82:  MOVW            R0, #0x1A44
16EF86:  ADD             R0, R9
16EF88:  VLDR            S6, [R0]
16EF8C:  VLDR            S2, [R0,#4]
16EF90:  VCMP.F32        S6, #0.0
16EF94:  VLDR            S4, [R0,#0xC]
16EF98:  VMRS            APSR_nzcv, FPSCR
16EF9C:  ITTT GE
16EF9E:  VLDRGE          S8, [R0,#8]
16EFA2:  VCMPGE.F32      S8, #0.0
16EFA6:  VMRSGE          APSR_nzcv, FPSCR
16EFAA:  BGE             loc_16EFB2
16EFAC:  VLDR            S0, [R5,#0x1C]
16EFB0:  B               loc_16EFD2
16EFB2:  VMOV            S0, R2
16EFB6:  VCMP.F32        S8, S0
16EFBA:  VMRS            APSR_nzcv, FPSCR
16EFBE:  VCMP.F32        S6, S0
16EFC2:  IT MI
16EFC4:  VMOVMI.F32      S0, S8
16EFC8:  VMRS            APSR_nzcv, FPSCR
16EFCC:  IT GT
16EFCE:  VMOVGT.F32      S0, S6
16EFD2:  VCMP.F32        S2, #0.0
16EFD6:  VMRS            APSR_nzcv, FPSCR
16EFDA:  ITT GE
16EFDC:  VCMPGE.F32      S4, #0.0
16EFE0:  VMRSGE          APSR_nzcv, FPSCR
16EFE4:  BGE             loc_16EFEC
16EFE6:  VLDR            S6, [R5,#0x20]
16EFEA:  B               loc_16F00C
16EFEC:  VMOV            S6, R3
16EFF0:  VCMP.F32        S4, S6
16EFF4:  VMRS            APSR_nzcv, FPSCR
16EFF8:  VCMP.F32        S2, S6
16EFFC:  IT MI
16EFFE:  VMOVMI.F32      S6, S4
16F002:  VMRS            APSR_nzcv, FPSCR
16F006:  IT GT
16F008:  VMOVGT.F32      S6, S2
16F00C:  LDR             R1, [R0,#0x10]
16F00E:  CBZ             R1, loc_16F03C
16F010:  LDR             R0, [R0,#0x14]
16F012:  MOV             R12, R4
16F014:  STR             R0, [SP,#0x38+var_34]
16F016:  ADD             R0, SP, #0x38+var_34
16F018:  LDRD.W          R2, R3, [R5,#0xC]
16F01C:  ADD.W           LR, SP, #0x38+var_30
16F020:  LDRD.W          R4, R6, [R5,#0x1C]
16F024:  STM.W           LR, {R2-R4,R6}
16F028:  MOV             R4, R12
16F02A:  VSTR            S6, [SP,#0x38+var_1C]
16F02E:  VSTR            S0, [SP,#0x38+var_20]
16F032:  BLX             R1
16F034:  VLDR            S0, [SP,#0x38+var_20]
16F038:  VLDR            S6, [SP,#0x38+var_1C]
16F03C:  VCVT.S32.F32    S2, S6
16F040:  VCVT.S32.F32    S0, S0
16F044:  VCVT.F32.S32    S2, S2
16F048:  VCVT.F32.S32    S0, S0
16F04C:  VMOV            R3, S2
16F050:  VMOV            R2, S0
16F054:  LDR             R1, [R5,#8]
16F056:  MOVS            R0, #0x1000040
16F05C:  TST             R1, R0
16F05E:  BNE             loc_16F11E
16F060:  MOVW            R0, #0x1524
16F064:  VMOV            S4, R2
16F068:  ADD             R0, R9
16F06A:  VLDR            S2, [R0,#8]
16F06E:  VLDR            S0, [R0,#0xC]
16F072:  VCMP.F32        S2, S4
16F076:  VMRS            APSR_nzcv, FPSCR
16F07A:  IT LS
16F07C:  VMOVLS.F32      S2, S4
16F080:  VMOV            S4, R3
16F084:  VCMP.F32        S0, S4
16F088:  VMRS            APSR_nzcv, FPSCR
16F08C:  IT LS
16F08E:  VMOVLS.F32      S0, S4
16F092:  VLDR            S4, =0.0
16F096:  LSLS            R2, R1, #0x1F
16F098:  VMOV.F32        S6, S4
16F09C:  BNE             loc_16F0BA
16F09E:  LDR             R2, [R4]
16F0A0:  MOVW            R3, #0x1554
16F0A4:  VLDR            S10, [R5,#0x274]
16F0A8:  ADD             R2, R3
16F0AA:  VLDR            S6, [R2]
16F0AE:  VLDR            S8, [R2,#0x378]
16F0B2:  VADD.F32        S6, S6, S6
16F0B6:  VMLA.F32        S6, S8, S10
16F0BA:  VMOV.F32        S8, S4
16F0BE:  LSLS            R1, R1, #0x15
16F0C0:  BPL             loc_16F0E6
16F0C2:  LDR             R1, [R4]
16F0C4:  MOVW            R2, #0x1554
16F0C8:  VLDR            S10, [R5,#0x274]
16F0CC:  ADD             R1, R2
16F0CE:  VLDR            S8, [R5,#0x148]
16F0D2:  VLDR            S14, [R1,#0x378]
16F0D6:  VLDR            S12, [R1]
16F0DA:  VMLA.F32        S8, S14, S10
16F0DE:  VADD.F32        S10, S12, S12
16F0E2:  VADD.F32        S8, S10, S8
16F0E6:  VMOV            R2, S2
16F0EA:  VLDR            S10, [R0]
16F0EE:  VMOV.F32        S2, #-1.0
16F0F2:  VADD.F32        S6, S6, S8
16F0F6:  VADD.F32        S2, S10, S2
16F0FA:  VCMP.F32        S2, #0.0
16F0FE:  VMRS            APSR_nzcv, FPSCR
16F102:  IT LS
16F104:  VMOVLS.F32      S2, S4
16F108:  VADD.F32        S2, S6, S2
16F10C:  VCMP.F32        S0, S2
16F110:  VMRS            APSR_nzcv, FPSCR
16F114:  IT GE
16F116:  VMOVGE.F32      S2, S0
16F11A:  VMOV            R3, S2
16F11E:  STRD.W          R2, R3, [R8]
16F122:  ADD             SP, SP, #0x20 ; ' '
16F124:  POP.W           {R8,R9,R11}
16F128:  POP             {R4-R7,PC}
