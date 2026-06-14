; =========================================================
; Game Engine Function: _ZN11CTheScripts25IsEntityWithinSearchLightEiP7CEntity
; Address            : 0x357DDC - 0x357ECE
; =========================================================

357DDC:  PUSH            {R4,R5,R7,LR}
357DDE:  ADD             R7, SP, #8
357DE0:  VPUSH           {D8-D10}
357DE4:  SUB             SP, SP, #0x20
357DE6:  MOV             R4, R1
357DE8:  MOVS            R1, #2; int
357DEA:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
357DEE:  CMP             R0, #0
357DF0:  BLT             loc_357EC0
357DF2:  LDR             R1, =(_ZN11CTheScripts22ScriptSearchLightArrayE_ptr - 0x357DFE)
357DF4:  RSB.W           R0, R0, R0,LSL#5
357DF8:  LDR             R2, [R4,#0x14]
357DFA:  ADD             R1, PC; _ZN11CTheScripts22ScriptSearchLightArrayE_ptr
357DFC:  ADD.W           R3, R2, #0x30 ; '0'
357E00:  CMP             R2, #0
357E02:  LDR             R1, [R1]; CTheScripts::ScriptSearchLightArray ...
357E04:  IT EQ
357E06:  ADDEQ           R3, R4, #4
357E08:  VLDR            S16, [R3]
357E0C:  ADD.W           R5, R1, R0,LSL#2
357E10:  VLDR            S18, [R3,#4]
357E14:  VLDR            S20, [R3,#8]
357E18:  LDR             R0, [R5,#0x6C]
357E1A:  VLDR            D16, [R5,#0x64]
357E1E:  STR             R0, [SP,#0x40+var_28]
357E20:  LDR             R0, [R5,#0x78]
357E22:  VSTR            D16, [SP,#0x40+var_30]
357E26:  STR             R0, [SP,#0x40+var_38]
357E28:  ADD             R0, SP, #0x40+var_30; this
357E2A:  VLDR            D16, [R5,#0x70]
357E2E:  VSTR            D16, [SP,#0x40+var_40]
357E32:  BLX             j__ZN7CVector15NormaliseAndMagEv; CVector::NormaliseAndMag(void)
357E36:  MOV             R4, R0
357E38:  MOV             R0, SP; this
357E3A:  BLX             j__ZN7CVector15NormaliseAndMagEv; CVector::NormaliseAndMag(void)
357E3E:  VLDR            S0, [R5,#0x58]
357E42:  VLDR            S2, [R5,#0x5C]
357E46:  VSUB.F32        S0, S16, S0
357E4A:  VLDR            S4, [R5,#0x60]
357E4E:  VSUB.F32        S2, S18, S2
357E52:  VLDR            S6, [SP,#0x40+var_40]
357E56:  VLDR            S8, [SP,#0x40+var_40+4]
357E5A:  VSUB.F32        S4, S20, S4
357E5E:  VLDR            S12, [SP,#0x40+var_30]
357E62:  VLDR            S14, [SP,#0x40+var_30+4]
357E66:  VLDR            S10, [SP,#0x40+var_38]
357E6A:  VLDR            S1, [SP,#0x40+var_28]
357E6E:  VMUL.F32        S6, S0, S6
357E72:  VMUL.F32        S8, S2, S8
357E76:  VMUL.F32        S2, S2, S14
357E7A:  VMUL.F32        S0, S0, S12
357E7E:  VMUL.F32        S10, S4, S10
357E82:  VMUL.F32        S4, S4, S1
357E86:  VADD.F32        S6, S6, S8
357E8A:  VADD.F32        S0, S0, S2
357E8E:  VADD.F32        S2, S6, S10
357E92:  VMOV            S6, R0
357E96:  VADD.F32        S0, S0, S4
357E9A:  VMOV            S4, R4
357E9E:  VDIV.F32        S2, S2, S6
357EA2:  VDIV.F32        S0, S0, S4
357EA6:  VMUL.F32        S2, S2, S2
357EAA:  VMUL.F32        S0, S0, S0
357EAE:  VMOV.F32        S4, #1.0
357EB2:  VADD.F32        S0, S0, S2
357EB6:  VCMPE.F32       S0, S4
357EBA:  VMRS            APSR_nzcv, FPSCR
357EBE:  BLE             loc_357EC4
357EC0:  MOVS            R0, #0
357EC2:  B               loc_357EC6
357EC4:  MOVS            R0, #1
357EC6:  ADD             SP, SP, #0x20 ; ' '
357EC8:  VPOP            {D8-D10}
357ECC:  POP             {R4,R5,R7,PC}
