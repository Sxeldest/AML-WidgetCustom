; =========================================================
; Game Engine Function: _Z6FTruncfi
; Address            : 0x3D2FBA - 0x3D3044
; =========================================================

3D2FBA:  PUSH            {R4-R7,LR}
3D2FBC:  ADD             R7, SP, #0xC
3D2FBE:  PUSH.W          {R11}
3D2FC2:  SUB             SP, SP, #8
3D2FC4:  MOV             R4, R1
3D2FC6:  MOV             R6, R0
3D2FC8:  ADDS            R0, R4, #1
3D2FCA:  MOVS            R5, #0x41200000
3D2FD0:  VMOV            S0, R0
3D2FD4:  MOV             R0, R5; x
3D2FD6:  VCVT.F32.S32    S0, S0
3D2FDA:  VMOV            R1, S0; y
3D2FDE:  BLX             powf
3D2FE2:  VMOV            S2, R6
3D2FE6:  ADD             R1, SP, #0x18+iptr; iptr
3D2FE8:  VMOV            S6, R0
3D2FEC:  VCMPE.F32       S2, #0.0
3D2FF0:  VMRS            APSR_nzcv, FPSCR
3D2FF4:  VMOV.F32        S4, #-5.0
3D2FF8:  VMUL.F32        S2, S6, S2
3D2FFC:  VMOV.F32        S0, #5.0
3D3000:  IT LT
3D3002:  VMOVLT.F32      S0, S4
3D3006:  VMOV.F32        S4, #10.0
3D300A:  VADD.F32        S0, S0, S2
3D300E:  VDIV.F32        S0, S0, S4
3D3012:  VMOV            R0, S0; x
3D3016:  BLX             modff
3D301A:  VMOV            S0, R4
3D301E:  MOV             R0, R5; x
3D3020:  VCVT.F32.S32    S0, S0
3D3024:  VMOV            R1, S0; y
3D3028:  BLX             powf
3D302C:  VMOV            S0, R0
3D3030:  VLDR            S2, [SP,#0x18+iptr]
3D3034:  VDIV.F32        S0, S2, S0
3D3038:  VMOV            R0, S0
3D303C:  ADD             SP, SP, #8
3D303E:  POP.W           {R11}
3D3042:  POP             {R4-R7,PC}
