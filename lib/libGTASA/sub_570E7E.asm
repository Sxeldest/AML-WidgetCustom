; =========================================================
; Game Engine Function: sub_570E7E
; Address            : 0x570E7E - 0x570EE4
; =========================================================

570E7E:  VMUL.F32        S2, S6, S2
570E82:  VSTR            S2, [R1,#0x84]
570E86:  VSTR            S6, [R1,#0x88]
570E8A:  BCS             loc_570EB0
570E8C:  VLDR            S4, =-0.05
570E90:  B               loc_570EC0
570E92:  VLDR            S4, =1.2
570E96:  VLDR            S6, =-0.2
570E9A:  VDIV.F32        S2, S2, S4
570E9E:  VMOV.F32        S4, #-0.25
570EA2:  VSTR            S2, [R1,#0x88]
570EA6:  VMUL.F32        S4, S2, S4
570EAA:  VMIN.F32        D2, D2, D3
570EAE:  B               loc_570EC0
570EB0:  VLDR            S2, =-0.3
570EB4:  VLDR            S4, =-0.2
570EB8:  VMUL.F32        S2, S6, S2
570EBC:  VMIN.F32        D2, D1, D2
570EC0:  VMOV.F32        S6, #0.25
570EC4:  LDRB.W          R2, [R1,#0x74]
570EC8:  VMOV.F32        S2, #0.5
570ECC:  CMP             R2, #0x34 ; '4'
570ECE:  IT EQ
570ED0:  VMOVEQ.F32      S2, S6
570ED4:  VSTR            S4, [R1,#0x8C]
570ED8:  VMUL.F32        S0, S0, S2
570EDC:  VSTR            S0, [R1,#0x7C]
570EE0:  B.W             sub_19F4D8
