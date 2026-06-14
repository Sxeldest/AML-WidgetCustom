; =========================================================
; Game Engine Function: sub_10ADB8
; Address            : 0x10ADB8 - 0x10AEC6
; =========================================================

10ADB8:  PUSH            {R4-R7,LR}
10ADBA:  ADD             R7, SP, #0xC
10ADBC:  PUSH.W          {R8,R9,R11}
10ADC0:  VPUSH           {D8-D9}
10ADC4:  SUB             SP, SP, #8
10ADC6:  LDR             R5, =(dword_263080 - 0x10ADD2)
10ADC8:  MOV             R6, R0
10ADCA:  MOV             R8, R2
10ADCC:  MOV             R9, R1
10ADCE:  ADD             R5, PC; dword_263080
10ADD0:  LDR             R0, [R5,#(dword_263084 - 0x263080)]; this
10ADD2:  CBZ             R0, loc_10AE1C
10ADD4:  BLX             j__ZNSt6__ndk119__shared_weak_count4lockEv; std::__shared_weak_count::lock(void)
10ADD8:  STR             R0, [SP,#0x30+var_2C]
10ADDA:  CBZ             R0, loc_10AE1C
10ADDC:  LDR             R5, [R5]
10ADDE:  MOV             R4, R0
10ADE0:  STR             R5, [SP,#0x30+var_30]
10ADE2:  CBZ             R5, loc_10AE20
10ADE4:  BL              sub_10B314
10ADE8:  CBZ             R0, loc_10AE20
10ADEA:  BL              sub_10B380
10ADEE:  CBZ             R0, loc_10AE20
10ADF0:  BL              sub_10B4A0
10ADF4:  BL              sub_10B314
10ADF8:  LDR             R2, [R5]
10ADFA:  LDR.W           R1, [R0,#0x544]
10ADFE:  LDR             R2, [R2,#0x2C]
10AE00:  MOV             R0, R5
10AE02:  BLX             R2
10AE04:  LDR             R0, =(dword_238E84 - 0x10AE0C)
10AE06:  LDR             R1, [R5]
10AE08:  ADD             R0, PC; dword_238E84
10AE0A:  LDR             R2, [R1,#0x30]
10AE0C:  LDR             R1, [R0]
10AE0E:  MOV             R0, R5
10AE10:  BLX             R2
10AE12:  MOVS            R5, #0
10AE14:  MOVS            R0, #0
10AE16:  BL              sub_163C8C
10AE1A:  B               loc_10AE22
10AE1C:  MOVS            R5, #1
10AE1E:  B               loc_10AE4A
10AE20:  MOVS            R5, #1
10AE22:  ADDS            R0, R4, #4
10AE24:  DMB.W           ISH
10AE28:  LDREX.W         R1, [R0]
10AE2C:  SUBS            R2, R1, #1
10AE2E:  STREX.W         R3, R2, [R0]
10AE32:  CMP             R3, #0
10AE34:  BNE             loc_10AE28
10AE36:  DMB.W           ISH
10AE3A:  CBNZ            R1, loc_10AE4A
10AE3C:  LDR             R0, [R4]
10AE3E:  LDR             R1, [R0,#8]
10AE40:  MOV             R0, R4
10AE42:  BLX             R1
10AE44:  MOV             R0, R4; this
10AE46:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
10AE4A:  CBZ             R5, loc_10AEBA
10AE4C:  LDR             R4, =(off_263058 - 0x10AE52)
10AE4E:  ADD             R4, PC; off_263058
10AE50:  LDR             R0, [R4]
10AE52:  CBZ             R0, loc_10AEBA
10AE54:  BL              sub_10B314
10AE58:  CBZ             R0, loc_10AE68
10AE5A:  BL              sub_10B314
10AE5E:  LDR.W           R0, [R0,#0x544]
10AE62:  VMOV            S16, R0
10AE66:  B               loc_10AE6C
10AE68:  VLDR            S16, =0.0
10AE6C:  BL              sub_10B314
10AE70:  CBZ             R0, loc_10AE9E
10AE72:  BL              sub_10B314
10AE76:  LDR.W           R0, [R0,#0x548]
10AE7A:  VLDR            S0, =0.01
10AE7E:  VMOV            S2, R0
10AE82:  VMUL.F32        S18, S2, S0
10AE86:  BL              sub_10B314
10AE8A:  LDR.W           R1, [R0,#0x544]
10AE8E:  VMOV            S0, R1
10AE92:  VMUL.F32        S0, S18, S0
10AE96:  VMOV            R1, S0
10AE9A:  STR.W           R1, [R0,#0x544]
10AE9E:  LDR             R3, [R4]
10AEA0:  MOV             R0, R6
10AEA2:  MOV             R1, R9
10AEA4:  MOV             R2, R8
10AEA6:  BLX             R3
10AEA8:  BL              sub_10B314
10AEAC:  CBZ             R0, loc_10AEBA
10AEAE:  VMOV            R4, S16
10AEB2:  BL              sub_10B314
10AEB6:  STR.W           R4, [R0,#0x544]
10AEBA:  ADD             SP, SP, #8
10AEBC:  VPOP            {D8-D9}
10AEC0:  POP.W           {R8,R9,R11}
10AEC4:  POP             {R4-R7,PC}
