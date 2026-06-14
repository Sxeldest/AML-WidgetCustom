; =========================================================
; Game Engine Function: _ZN19CAEAudioEnvironment22GetDistanceAttenuationEf
; Address            : 0x391FF4 - 0x392046
; =========================================================

391FF4:  VLDR            S2, =128.0
391FF8:  VMOV            S0, R0
391FFC:  VCMPE.F32       S0, S2
392000:  VMRS            APSR_nzcv, FPSCR
392004:  ITTT GE
392006:  VLDRGE          S0, =-100.0
39200A:  VMOVGE          R0, S0
39200E:  BXGE            LR
392010:  PUSH            {R7,LR}
392012:  MOV             R7, SP
392014:  VMOV.F32        S2, #10.0
392018:  VMUL.F32        S0, S0, S2
39201C:  VMOV            R0, S0; x
392020:  BLX             floorf
392024:  VMOV            S0, R0
392028:  LDR             R1, =(unk_612A08 - 0x392032)
39202A:  VCVT.S32.F32    S0, S0
39202E:  ADD             R1, PC; unk_612A08
392030:  VMOV            R0, S0
392034:  ADD.W           R0, R1, R0,LSL#2
392038:  VLDR            S0, [R0]
39203C:  POP.W           {R7,LR}
392040:  VMOV            R0, S0
392044:  BX              LR
