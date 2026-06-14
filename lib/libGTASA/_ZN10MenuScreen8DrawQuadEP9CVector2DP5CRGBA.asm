; =========================================================
; Game Engine Function: _ZN10MenuScreen8DrawQuadEP9CVector2DP5CRGBA
; Address            : 0x298948 - 0x298AAC
; =========================================================

298948:  PUSH            {R4,R6,R7,LR}
29894A:  ADD             R7, SP, #8
29894C:  LDRB            R3, [R2,#3]
29894E:  LDRB.W          R12, [R2,#7]
298952:  LDRB.W          LR, [R2,#0xB]
298956:  VMOV            S0, R3
29895A:  LDRB            R4, [R2,#0xF]
29895C:  VLDR            S14, =480.0
298960:  VCVT.F32.U32    S0, S0
298964:  VLDR            S2, [R0,#8]
298968:  VMUL.F32        S0, S2, S0
29896C:  VMOV            S2, R12
298970:  VCVT.F32.U32    S2, S2
298974:  VCVT.U32.F32    S0, S0
298978:  VMOV            R3, S0
29897C:  STRB            R3, [R2,#3]
29897E:  VLDR            S0, [R0,#8]
298982:  VMUL.F32        S0, S0, S2
298986:  VMOV            S2, LR
29898A:  VCVT.F32.U32    S2, S2
29898E:  VCVT.U32.F32    S0, S0
298992:  VMOV            R3, S0
298996:  STRB            R3, [R2,#7]
298998:  VLDR            S0, [R0,#8]
29899C:  VMUL.F32        S0, S0, S2
2989A0:  VMOV            S2, R4
2989A4:  VCVT.F32.U32    S2, S2
2989A8:  VCVT.U32.F32    S0, S0
2989AC:  VMOV            R3, S0
2989B0:  STRB            R3, [R2,#0xB]
2989B2:  VLDR            S0, [R0,#8]
2989B6:  LDR             R0, =(RsGlobal_ptr - 0x2989C4)
2989B8:  VMUL.F32        S0, S0, S2
2989BC:  VLDR            S2, =-320.0
2989C0:  ADD             R0, PC; RsGlobal_ptr
2989C2:  LDR             R0, [R0]; RsGlobal
2989C4:  VCVT.U32.F32    S0, S0
2989C8:  VMOV            R3, S0
2989CC:  STRB            R3, [R2,#0xF]
2989CE:  VLDR            S0, [R1]
2989D2:  VLDR            S12, [R0,#8]
2989D6:  VLDR            S6, [R1,#8]
2989DA:  VADD.F32        S0, S0, S2
2989DE:  VLDR            S4, [R1,#4]
2989E2:  VLDR            S8, [R1,#0xC]
2989E6:  VADD.F32        S6, S6, S2
2989EA:  VLDR            S10, [R0,#4]
2989EE:  VCVT.F32.S32    S12, S12
2989F2:  VCVT.F32.S32    S10, S10
2989F6:  VMUL.F32        S0, S0, S12
2989FA:  VMUL.F32        S4, S4, S12
2989FE:  VMOV.F32        S12, #0.5
298A02:  VDIV.F32        S0, S0, S14
298A06:  VDIV.F32        S4, S4, S14
298A0A:  VMUL.F32        S10, S10, S12
298A0E:  VADD.F32        S0, S10, S0
298A12:  VSTR            S0, [R1]
298A16:  VSTR            S4, [R1,#4]
298A1A:  VLDR            S4, [R0,#8]
298A1E:  VLDR            S0, [R0,#4]
298A22:  VCVT.F32.S32    S4, S4
298A26:  VCVT.F32.S32    S0, S0
298A2A:  VMUL.F32        S6, S6, S4
298A2E:  VMUL.F32        S4, S8, S4
298A32:  VLDR            S8, [R1,#0x10]
298A36:  VMUL.F32        S0, S0, S12
298A3A:  VDIV.F32        S6, S6, S14
298A3E:  VDIV.F32        S4, S4, S14
298A42:  VADD.F32        S6, S0, S6
298A46:  VSTR            S6, [R1,#8]
298A4A:  VADD.F32        S6, S8, S2
298A4E:  VSTR            S4, [R1,#0xC]
298A52:  VLDR            S4, [R0,#8]
298A56:  MOV             R0, R1
298A58:  VCVT.F32.S32    S4, S4
298A5C:  VLDR            S10, [R1,#0x18]
298A60:  VLDR            S8, [R1,#0x14]
298A64:  VADD.F32        S2, S10, S2
298A68:  VLDR            S12, [R1,#0x1C]
298A6C:  VMUL.F32        S6, S6, S4
298A70:  VMUL.F32        S8, S8, S4
298A74:  VMUL.F32        S2, S2, S4
298A78:  VMUL.F32        S4, S12, S4
298A7C:  VDIV.F32        S6, S6, S14
298A80:  VDIV.F32        S2, S2, S14
298A84:  VDIV.F32        S8, S8, S14
298A88:  VDIV.F32        S4, S4, S14
298A8C:  VADD.F32        S6, S0, S6
298A90:  VADD.F32        S0, S0, S2
298A94:  VSTR            S6, [R1,#0x10]
298A98:  VSTR            S8, [R1,#0x14]
298A9C:  VSTR            S0, [R1,#0x18]
298AA0:  VSTR            S4, [R1,#0x1C]
298AA4:  MOV             R1, R2
298AA6:  POP.W           {R4,R6,R7,LR}
298AAA:  B               _ZN10MobileMenu8DrawQuadEP9CVector2DP5CRGBA; MobileMenu::DrawQuad(CVector2D *,CRGBA *)
