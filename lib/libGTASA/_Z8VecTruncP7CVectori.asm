; =========================================================
; Game Engine Function: _Z8VecTruncP7CVectori
; Address            : 0x3D3044 - 0x3D3146
; =========================================================

3D3044:  PUSH            {R4-R7,LR}
3D3046:  ADD             R7, SP, #0xC
3D3048:  PUSH.W          {R11}
3D304C:  VPUSH           {D8-D14}
3D3050:  SUB             SP, SP, #0x10
3D3052:  MOV             R6, R1
3D3054:  MOV             R4, R0
3D3056:  ADDS            R0, R6, #1
3D3058:  MOVS            R5, #0x41200000
3D305E:  VMOV            S0, R0
3D3062:  MOV             R0, R5; x
3D3064:  VCVT.F32.S32    S0, S0
3D3068:  VMOV            R1, S0; y
3D306C:  BLX             powf
3D3070:  VLDR            S0, [R4]
3D3074:  VMOV.F32        S16, #5.0
3D3078:  VMOV            S20, R0
3D307C:  ADD             R1, SP, #0x58+iptr; iptr
3D307E:  VCMPE.F32       S0, #0.0
3D3082:  VMRS            APSR_nzcv, FPSCR
3D3086:  VMOV.F32        S18, #-5.0
3D308A:  VMUL.F32        S0, S0, S20
3D308E:  VMOV.F32        S22, #10.0
3D3092:  VMOV.F32        S2, S16
3D3096:  IT LT
3D3098:  VMOVLT.F32      S2, S18
3D309C:  VADD.F32        S0, S2, S0
3D30A0:  VDIV.F32        S0, S0, S22
3D30A4:  VMOV            R0, S0; x
3D30A8:  BLX             modff
3D30AC:  VMOV            S0, R6
3D30B0:  MOV             R0, R5; x
3D30B2:  VMOV.F32        S2, S16
3D30B6:  VCVT.F32.S32    S0, S0
3D30BA:  VLDR            S24, [SP,#0x58+iptr]
3D30BE:  VMOV            R1, S0; y
3D30C2:  VLDR            S0, [R4,#4]
3D30C6:  VCMPE.F32       S0, #0.0
3D30CA:  VMRS            APSR_nzcv, FPSCR
3D30CE:  VMUL.F32        S0, S20, S0
3D30D2:  IT LT
3D30D4:  VMOVLT.F32      S2, S18
3D30D8:  VADD.F32        S26, S0, S2
3D30DC:  BLX             powf
3D30E0:  VDIV.F32        S0, S26, S22
3D30E4:  ADD             R1, SP, #0x58+var_50; iptr
3D30E6:  VMOV            S28, R0
3D30EA:  VMOV            R0, S0; x
3D30EE:  VDIV.F32        S2, S24, S28
3D30F2:  VSTR            S2, [R4]
3D30F6:  BLX             modff
3D30FA:  VLDR            S2, [R4,#8]
3D30FE:  ADD             R1, SP, #0x58+var_4C; iptr
3D3100:  VLDR            S0, [SP,#0x58+var_50]
3D3104:  VCMPE.F32       S2, #0.0
3D3108:  VMRS            APSR_nzcv, FPSCR
3D310C:  VMUL.F32        S2, S20, S2
3D3110:  VDIV.F32        S0, S0, S28
3D3114:  IT LT
3D3116:  VMOVLT.F32      S16, S18
3D311A:  VADD.F32        S2, S2, S16
3D311E:  VSTR            S0, [R4,#4]
3D3122:  VDIV.F32        S2, S2, S22
3D3126:  VMOV            R0, S2; x
3D312A:  BLX             modff
3D312E:  VLDR            S0, [SP,#0x58+var_4C]
3D3132:  VDIV.F32        S0, S0, S28
3D3136:  VSTR            S0, [R4,#8]
3D313A:  ADD             SP, SP, #0x10
3D313C:  VPOP            {D8-D14}
3D3140:  POP.W           {R11}
3D3144:  POP             {R4-R7,PC}
