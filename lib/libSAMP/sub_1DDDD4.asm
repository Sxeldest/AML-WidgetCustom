; =========================================================
; Game Engine Function: sub_1DDDD4
; Address            : 0x1DDDD4 - 0x1DDFD0
; =========================================================

1DDDD4:  PUSH            {R4-R11,LR}
1DDDD8:  ADD             R11, SP, #0x1C
1DDDDC:  SUB             SP, SP, #4
1DDDE0:  VPUSH           {D8-D13}
1DDDE4:  LDR             R6, [R1,#0xFC]
1DDDE8:  MOV             R5, R2
1DDDEC:  VLDR            S2, =31416.0
1DDDF0:  MOV             R4, R0
1DDDF4:  VLDR            S0, [R6,#0xC]
1DDDF8:  VCVT.F32.U32    S0, S0
1DDDFC:  VLDR            S4, [R5,#0x70]
1DDE00:  VDIV.F32        S2, S2, S0
1DDE04:  VMUL.F32        S4, S4, S0
1DDE08:  VMOV            R0, S2; x
1DDE0C:  VCVT.S32.F32    S2, S4
1DDE10:  VMOV            R1, S2
1DDE14:  ADD             R7, R1, #1
1DDE18:  STR             R7, [R4,#0x18]
1DDE1C:  VLDR            S2, [R5,#0x74]
1DDE20:  VMUL.F32        S0, S2, S0
1DDE24:  VCVT.S32.F32    S16, S0
1DDE28:  BL              cosf
1DDE2C:  MOV             R1, R0
1DDE30:  VMOV            R0, S16
1DDE34:  VMOV.F32        S18, #1.0
1DDE38:  ADD             R0, R7, R0
1DDE3C:  STR             R0, [R4,#0x1C]
1DDE40:  LDR             R0, [R5,#0x7C]
1DDE44:  VLDR            S20, [R5,#0x80]
1DDE48:  STR             R0, [R4,#0x6C]
1DDE4C:  VLDR            S0, [R5,#0x78]
1DDE50:  VSUB.F32        S0, S18, S0
1DDE54:  VMOV            R0, S0
1DDE58:  BL              j_lpCoeffCalc
1DDE5C:  VCMPE.F32       S20, #0.0
1DDE60:  STR             R0, [R4,#0x70]
1DDE64:  VMRS            APSR_nzcv, FPSCR
1DDE68:  VMOV.F32        S22, #-1.0
1DDE6C:  VMOV.F32        S0, S18
1DDE70:  MOV             R7, #0
1DDE74:  VLDR            S16, [R5,#0xB8]
1DDE78:  MOVW            R0, #:lower16:(aZnst6Ndk14Fs10_79+4); "t6__ndk14__fs10filesystem10hash_valueER"...
1DDE7C:  STR             R7, [R4,#0x24]!
1DDE80:  MOVT            R0, #:upper16:(aZnst6Ndk14Fs10_79+4); "t6__ndk14__fs10filesystem10hash_valueER"...
1DDE84:  MOV             R8, R6
1DDE88:  MOV             R10, R4
1DDE8C:  STR             R7, [R4,#4]
1DDE90:  STR             R7, [R4,#8]
1DDE94:  STR             R7, [R4,#0xC]
1DDE98:  STR             R7, [R4,#0x10]
1DDE9C:  STR             R7, [R4,#0x14]
1DDEA0:  STR             R7, [R4,#0x18]
1DDEA4:  STR             R7, [R4,#0x1C]
1DDEA8:  STR             R7, [R4,#0x20]
1DDEAC:  STR             R7, [R4,#0x28]
1DDEB0:  STR             R7, [R4,#0x2C]
1DDEB4:  STR             R7, [R4,#0x30]
1DDEB8:  STR             R7, [R4,#0x34]
1DDEBC:  STR             R7, [R4,#0x38]
1DDEC0:  STR             R7, [R4,#0x3C]
1DDEC4:  STR             R7, [R4,#0x40]
1DDEC8:  VMOVGT.F32      S0, S22
1DDECC:  STR             R7, [R4,#0x44]
1DDED0:  STR             R7, [R10,#0x24]!
1DDED4:  LDR             R9, [R8,R0]!
1DDED8:  MOV             R0, #0
1DDEDC:  VMOV            R1, S0
1DDEE0:  BL              j_aluCart2LUTpos
1DDEE4:  VMOV            S0, R9
1DDEE8:  VABS.F32        S26, S20
1DDEEC:  VCVT.F32.U32    S0, S0
1DDEF0:  LDR             R1, [R8]
1DDEF4:  CMP             R1, #0
1DDEF8:  VDIV.F32        S0, S18, S0
1DDEFC:  VSQRT.F32       S24, S0
1DDF00:  BEQ             loc_1DDF50
1DDF04:  ADD             R2, R6, #0xDC
1DDF08:  MOVW            R12, #:lower16:(aZn3fmt2v86deta_55+0x25); "NS1_13specs_checkerINS1_21dynamic_specs"...
1DDF0C:  ADD             R2, R2, #0x24000
1DDF10:  MOVT            R12, #:upper16:(aZn3fmt2v86deta_55+0x25); "NS1_13specs_checkerINS1_21dynamic_specs"...
1DDF14:  ADD             R3, R0, R0,LSL#3
1DDF18:  LDR             R5, [R2,R7,LSL#2]
1DDF1C:  ADD             R7, R7, #1
1DDF20:  ADD             R3, R6, R3,LSL#2
1DDF24:  CMP             R7, R1
1DDF28:  ADD             R3, R3, R5,LSL#2
1DDF2C:  ADD             R3, R3, R12
1DDF30:  VLDR            S0, [R3]
1DDF34:  ADD             R3, R4, R5,LSL#2
1DDF38:  VSUB.F32        S0, S0, S24
1DDF3C:  VMUL.F32        S0, S0, S26
1DDF40:  VADD.F32        S0, S0, S24
1DDF44:  VMUL.F32        S0, S0, S16
1DDF48:  VSTR            S0, [R3]
1DDF4C:  BCC             loc_1DDF14
1DDF50:  VCMPE.F32       S20, #0.0
1DDF54:  MOV             R0, #0
1DDF58:  VMRS            APSR_nzcv, FPSCR
1DDF5C:  MOV             R4, #0
1DDF60:  VMOVGT.F32      S22, S18
1DDF64:  VMOV            R1, S22
1DDF68:  BL              j_aluCart2LUTpos
1DDF6C:  LDR             R1, [R8]
1DDF70:  CMP             R1, #0
1DDF74:  BEQ             loc_1DDFC4
1DDF78:  ADD             R2, R6, #0xDC
1DDF7C:  MOVW            R3, #:lower16:(aZn3fmt2v86deta_55+0x25); "NS1_13specs_checkerINS1_21dynamic_specs"...
1DDF80:  ADD             R2, R2, #0x24000
1DDF84:  MOVT            R3, #:upper16:(aZn3fmt2v86deta_55+0x25); "NS1_13specs_checkerINS1_21dynamic_specs"...
1DDF88:  ADD             R5, R0, R0,LSL#3
1DDF8C:  LDR             R7, [R2,R4,LSL#2]
1DDF90:  ADD             R4, R4, #1
1DDF94:  ADD             R5, R6, R5,LSL#2
1DDF98:  CMP             R4, R1
1DDF9C:  ADD             R5, R5, R7,LSL#2
1DDFA0:  ADD             R7, R10, R7,LSL#2
1DDFA4:  ADD             R5, R5, R3
1DDFA8:  VLDR            S0, [R5]
1DDFAC:  VSUB.F32        S0, S0, S24
1DDFB0:  VMUL.F32        S0, S0, S26
1DDFB4:  VADD.F32        S0, S0, S24
1DDFB8:  VMUL.F32        S0, S0, S16
1DDFBC:  VSTR            S0, [R7]
1DDFC0:  BCC             loc_1DDF88
1DDFC4:  VPOP            {D8-D13}
1DDFC8:  ADD             SP, SP, #4
1DDFCC:  POP             {R4-R11,PC}
