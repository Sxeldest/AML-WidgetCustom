; =========================================================
; Game Engine Function: png_get_pixel_aspect_ratio
; Address            : 0x1F32B8 - 0x1F32EA
; =========================================================

1F32B8:  CMP             R0, #0
1F32BA:  VLDR            S0, =0.0
1F32BE:  IT NE
1F32C0:  CMPNE           R1, #0
1F32C2:  BEQ             loc_1F32E4
1F32C4:  LDRB            R0, [R1,#8]
1F32C6:  LSLS            R0, R0, #0x18
1F32C8:  BPL             loc_1F32E4
1F32CA:  LDR.W           R0, [R1,#0xC0]
1F32CE:  CBZ             R0, loc_1F32E4
1F32D0:  VLDR            S0, [R1,#0xC4]
1F32D4:  VMOV            S2, R0
1F32D8:  VCVT.F32.U32    S2, S2
1F32DC:  VCVT.F32.U32    S0, S0
1F32E0:  VDIV.F32        S0, S0, S2
1F32E4:  VMOV            R0, S0
1F32E8:  BX              LR
