; =========================================================
; Game Engine Function: _ZN19CAEAudioEnvironment29GetDirectionalMikeAttenuationERK7CVector
; Address            : 0x392054 - 0x3920CA
; =========================================================

392054:  PUSH            {R7,LR}
392056:  MOV             R7, SP
392058:  SUB             SP, SP, #0x10
39205A:  VLDR            D16, [R0]
39205E:  LDR             R0, [R0,#8]
392060:  STR             R0, [SP,#0x18+var_10]
392062:  MOV             R0, SP; this
392064:  VSTR            D16, [SP,#0x18+var_18]
392068:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
39206C:  VLDR            S0, =0.0
392070:  VLDR            S2, [SP,#0x18+var_18]
392074:  VLDR            S6, [SP,#0x18+var_10]
392078:  VMUL.F32        S2, S2, S0
39207C:  VLDR            S4, [SP,#0x18+var_18+4]
392080:  VMUL.F32        S6, S6, S0
392084:  VADD.F32        S2, S2, S4
392088:  VLDR            S4, =0.707
39208C:  VADD.F32        S2, S2, S6
392090:  VCMPE.F32       S2, S4
392094:  VMRS            APSR_nzcv, FPSCR
392098:  BGE             loc_3920C2
39209A:  VLDR            S0, =-0.707
39209E:  VCMPE.F32       S2, S0
3920A2:  VMRS            APSR_nzcv, FPSCR
3920A6:  BLE             loc_3920BE
3920A8:  VSUB.F32        S0, S4, S2
3920AC:  VLDR            S2, =1.414
3920B0:  VDIV.F32        S0, S0, S2
3920B4:  VMOV.F32        S2, #-6.0
3920B8:  VMUL.F32        S0, S0, S2
3920BC:  B               loc_3920C2
3920BE:  VMOV.F32        S0, #-6.0
3920C2:  VMOV            R0, S0
3920C6:  ADD             SP, SP, #0x10
3920C8:  POP             {R7,PC}
