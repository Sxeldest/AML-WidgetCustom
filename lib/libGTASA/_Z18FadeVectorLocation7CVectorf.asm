; =========================================================
; Game Engine Function: _Z18FadeVectorLocation7CVectorf
; Address            : 0x5A3064 - 0x5A30E6
; =========================================================

5A3064:  LDR             R2, =(TheCamera_ptr - 0x5A3072)
5A3066:  VMOV            S0, R1
5A306A:  VMOV            S6, R0
5A306E:  ADD             R2, PC; TheCamera_ptr
5A3070:  LDR.W           R12, [R2]; TheCamera
5A3074:  LDR.W           R2, [R12,#(dword_951FBC - 0x951FA8)]
5A3078:  ADD.W           R1, R2, #0x30 ; '0'
5A307C:  CMP             R2, #0
5A307E:  IT EQ
5A3080:  ADDEQ.W         R1, R12, #4
5A3084:  VLDR            S2, [R1]
5A3088:  VLDR            S4, [R1,#4]
5A308C:  VSUB.F32        S2, S2, S6
5A3090:  VSUB.F32        S0, S4, S0
5A3094:  VMOV            S4, R3
5A3098:  VMUL.F32        S2, S2, S2
5A309C:  VMUL.F32        S0, S0, S0
5A30A0:  VADD.F32        S0, S2, S0
5A30A4:  VLDR            S2, =100.0
5A30A8:  VADD.F32        S6, S4, S2
5A30AC:  VSQRT.F32       S0, S0
5A30B0:  VCMPE.F32       S0, S6
5A30B4:  VMRS            APSR_nzcv, FPSCR
5A30B8:  ITTT GE
5A30BA:  VMOVGE.F32      S0, #1.0
5A30BE:  VMOVGE          R0, S0
5A30C2:  BXGE            LR
5A30C4:  VCMPE.F32       S0, S4
5A30C8:  VMRS            APSR_nzcv, FPSCR
5A30CC:  ITTT LE
5A30CE:  VLDRLE          S0, =0.0
5A30D2:  VMOVLE          R0, S0
5A30D6:  BXLE            LR
5A30D8:  VSUB.F32        S0, S0, S4
5A30DC:  VDIV.F32        S0, S0, S2
5A30E0:  VMOV            R0, S0
5A30E4:  BX              LR
