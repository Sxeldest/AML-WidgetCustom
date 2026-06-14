; =========================================================
; Game Engine Function: _ZN11CTheScripts24IsPointWithinSearchLightER7CVectori
; Address            : 0x357CFC - 0x357DD6
; =========================================================

357CFC:  PUSH            {R4-R7,LR}
357CFE:  ADD             R7, SP, #0xC
357D00:  PUSH.W          {R11}
357D04:  SUB             SP, SP, #0x20
357D06:  MOV             R5, R0
357D08:  LDR             R0, =(_ZN11CTheScripts22ScriptSearchLightArrayE_ptr - 0x357D12)
357D0A:  RSB.W           R1, R1, R1,LSL#5
357D0E:  ADD             R0, PC; _ZN11CTheScripts22ScriptSearchLightArrayE_ptr
357D10:  LDR             R0, [R0]; CTheScripts::ScriptSearchLightArray ...
357D12:  ADD.W           R6, R0, R1,LSL#2
357D16:  LDR             R0, [R6,#0x6C]
357D18:  VLDR            D16, [R6,#0x64]
357D1C:  STR             R0, [SP,#0x30+var_18]
357D1E:  LDR             R0, [R6,#0x78]
357D20:  VSTR            D16, [SP,#0x30+var_20]
357D24:  STR             R0, [SP,#0x30+var_28]
357D26:  ADD             R0, SP, #0x30+var_20; this
357D28:  VLDR            D16, [R6,#0x70]
357D2C:  VSTR            D16, [SP,#0x30+var_30]
357D30:  BLX             j__ZN7CVector15NormaliseAndMagEv; CVector::NormaliseAndMag(void)
357D34:  MOV             R4, R0
357D36:  MOV             R0, SP; this
357D38:  BLX             j__ZN7CVector15NormaliseAndMagEv; CVector::NormaliseAndMag(void)
357D3C:  VLDR            S0, [R6,#0x58]
357D40:  VLDR            S6, [R5]
357D44:  VLDR            S2, [R6,#0x5C]
357D48:  VLDR            S8, [R5,#4]
357D4C:  VSUB.F32        S0, S6, S0
357D50:  VLDR            S4, [R6,#0x60]
357D54:  VSUB.F32        S2, S8, S2
357D58:  VLDR            S10, [R5,#8]
357D5C:  VLDR            S6, [SP,#0x30+var_30]
357D60:  VLDR            S8, [SP,#0x30+var_30+4]
357D64:  VSUB.F32        S4, S10, S4
357D68:  VLDR            S10, [SP,#0x30+var_20]
357D6C:  VLDR            S14, [SP,#0x30+var_20+4]
357D70:  VMUL.F32        S6, S0, S6
357D74:  VLDR            S12, [SP,#0x30+var_28]
357D78:  VMUL.F32        S0, S0, S10
357D7C:  VLDR            S1, [SP,#0x30+var_18]
357D80:  VMUL.F32        S8, S2, S8
357D84:  VMUL.F32        S2, S2, S14
357D88:  VMUL.F32        S10, S4, S12
357D8C:  VMUL.F32        S4, S4, S1
357D90:  VADD.F32        S6, S6, S8
357D94:  VADD.F32        S0, S0, S2
357D98:  VADD.F32        S2, S6, S10
357D9C:  VADD.F32        S0, S0, S4
357DA0:  VMOV            S6, R0
357DA4:  MOVS            R0, #0
357DA6:  VMOV            S4, R4
357DAA:  VDIV.F32        S2, S2, S6
357DAE:  VDIV.F32        S0, S0, S4
357DB2:  VMUL.F32        S2, S2, S2
357DB6:  VMUL.F32        S0, S0, S0
357DBA:  VMOV.F32        S4, #1.0
357DBE:  VADD.F32        S0, S0, S2
357DC2:  VCMPE.F32       S0, S4
357DC6:  VMRS            APSR_nzcv, FPSCR
357DCA:  IT LE
357DCC:  MOVLE           R0, #1
357DCE:  ADD             SP, SP, #0x20 ; ' '
357DD0:  POP.W           {R11}
357DD4:  POP             {R4-R7,PC}
