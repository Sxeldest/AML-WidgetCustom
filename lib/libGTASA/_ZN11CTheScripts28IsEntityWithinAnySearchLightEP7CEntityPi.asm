; =========================================================
; Game Engine Function: _ZN11CTheScripts28IsEntityWithinAnySearchLightEP7CEntityPi
; Address            : 0x357ED4 - 0x357FE6
; =========================================================

357ED4:  PUSH            {R4-R7,LR}
357ED6:  ADD             R7, SP, #0xC
357ED8:  PUSH.W          {R8-R10}
357EDC:  VPUSH           {D8-D11}
357EE0:  SUB             SP, SP, #0x20
357EE2:  MOV             R8, R1
357EE4:  LDR             R1, =(_ZN11CTheScripts22ScriptSearchLightArrayE_ptr - 0x357EF6)
357EE6:  MOV.W           R2, #0xFFFFFFFF
357EEA:  VMOV.F32        S22, #1.0
357EEE:  STR.W           R2, [R8]
357EF2:  ADD             R1, PC; _ZN11CTheScripts22ScriptSearchLightArrayE_ptr
357EF4:  LDR             R2, [R0,#0x14]
357EF6:  ADD.W           R9, SP, #0x58+var_48
357EFA:  LDR             R5, [R1]; CTheScripts::ScriptSearchLightArray ...
357EFC:  MOVS            R6, #0
357EFE:  ADD.W           R1, R2, #0x30 ; '0'
357F02:  CMP             R2, #0
357F04:  IT EQ
357F06:  ADDEQ           R1, R0, #4
357F08:  MOV             R10, SP
357F0A:  VLDR            S16, [R1]
357F0E:  VLDR            S18, [R1,#4]
357F12:  VLDR            S20, [R1,#8]
357F16:  LDRB            R0, [R5]; CTheScripts::ScriptSearchLightArray
357F18:  CMP             R0, #0
357F1A:  BEQ             loc_357FC0
357F1C:  VLDR            D16, [R5,#0x64]
357F20:  LDR             R0, [R5,#0x6C]
357F22:  STR             R0, [SP,#0x58+var_40]
357F24:  VSTR            D16, [SP,#0x58+var_48]
357F28:  LDR             R0, [R5,#0x78]
357F2A:  VLDR            D16, [R5,#0x70]
357F2E:  STR             R0, [SP,#0x58+var_50]
357F30:  MOV             R0, R9; this
357F32:  VSTR            D16, [SP,#0x58+var_58]
357F36:  BLX             j__ZN7CVector15NormaliseAndMagEv; CVector::NormaliseAndMag(void)
357F3A:  MOV             R4, R0
357F3C:  MOV             R0, R10; this
357F3E:  BLX             j__ZN7CVector15NormaliseAndMagEv; CVector::NormaliseAndMag(void)
357F42:  VLDR            S0, [R5,#0x58]
357F46:  VLDR            S2, [R5,#0x5C]
357F4A:  VSUB.F32        S0, S16, S0
357F4E:  VLDR            S4, [R5,#0x60]
357F52:  VSUB.F32        S2, S18, S2
357F56:  VLDR            S6, [SP,#0x58+var_58]
357F5A:  VLDR            S8, [SP,#0x58+var_58+4]
357F5E:  VSUB.F32        S4, S20, S4
357F62:  VLDR            S12, [SP,#0x58+var_48]
357F66:  VLDR            S14, [SP,#0x58+var_48+4]
357F6A:  VLDR            S10, [SP,#0x58+var_50]
357F6E:  VLDR            S1, [SP,#0x58+var_40]
357F72:  VMUL.F32        S6, S0, S6
357F76:  VMUL.F32        S8, S2, S8
357F7A:  VMUL.F32        S2, S2, S14
357F7E:  VMUL.F32        S0, S0, S12
357F82:  VMUL.F32        S10, S4, S10
357F86:  VMUL.F32        S4, S4, S1
357F8A:  VADD.F32        S6, S6, S8
357F8E:  VADD.F32        S0, S0, S2
357F92:  VADD.F32        S2, S6, S10
357F96:  VMOV            S6, R0
357F9A:  VADD.F32        S0, S0, S4
357F9E:  VMOV            S4, R4
357FA2:  VDIV.F32        S2, S2, S6
357FA6:  VDIV.F32        S0, S0, S4
357FAA:  VMUL.F32        S2, S2, S2
357FAE:  VMUL.F32        S0, S0, S0
357FB2:  VADD.F32        S0, S0, S2
357FB6:  VCMPE.F32       S0, S22
357FBA:  VMRS            APSR_nzcv, FPSCR
357FBE:  BLE             loc_357FCE
357FC0:  ADDS            R0, R6, #1
357FC2:  ADDS            R5, #0x7C ; '|'
357FC4:  CMP             R6, #7
357FC6:  MOV             R6, R0
357FC8:  BLT             loc_357F16
357FCA:  MOVS            R0, #0
357FCC:  B               loc_357FDA
357FCE:  LDRH            R0, [R5,#4]
357FD0:  ORR.W           R0, R6, R0,LSL#16
357FD4:  STR.W           R0, [R8]
357FD8:  MOVS            R0, #1
357FDA:  ADD             SP, SP, #0x20 ; ' '
357FDC:  VPOP            {D8-D11}
357FE0:  POP.W           {R8-R10}
357FE4:  POP             {R4-R7,PC}
