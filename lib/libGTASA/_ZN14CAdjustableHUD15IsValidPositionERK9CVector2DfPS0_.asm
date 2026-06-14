; =========================================================
; Game Engine Function: _ZN14CAdjustableHUD15IsValidPositionERK9CVector2DfPS0_
; Address            : 0x285BB4 - 0x285CA0
; =========================================================

285BB4:  PUSH            {R4,R5,R7,LR}
285BB6:  ADD             R7, SP, #8
285BB8:  VMOV.F32        S0, #0.5
285BBC:  VLDR            S4, =1000000.0
285BC0:  VMOV            S2, R2
285BC4:  MOVS            R4, #0
285BC6:  MOV.W           R12, #0
285BCA:  VMUL.F32        S2, S2, S0
285BCE:  LDR.W           R2, [R0,#0x490]
285BD2:  CMP             R12, R2
285BD4:  BEQ             loc_285C80
285BD6:  ADD.W           LR, R0, R4
285BDA:  LDRB.W          R2, [LR,#0x8D]
285BDE:  CMP             R2, #0
285BE0:  ITTT NE
285BE2:  LDRNE           R2, [R0]
285BE4:  LDRNE.W         R5, [LR,#0x88]
285BE8:  TSTNE           R5, R2
285BEA:  BEQ             loc_285C80
285BEC:  VLDR            S10, [LR,#0x70]
285BF0:  MOVS            R2, #0
285BF2:  VLDR            S6, [LR,#0x74]
285BF6:  MOVS            R5, #0
285BF8:  VLDR            S8, [LR,#0x7C]
285BFC:  VLDR            S12, [LR,#0x78]
285C00:  VADD.F32        S6, S6, S8
285C04:  VLDR            S14, [R1]
285C08:  VADD.F32        S8, S10, S12
285C0C:  VLDR            S1, [R1,#4]
285C10:  VSUB.F32        S10, S12, S10
285C14:  VMUL.F32        S6, S6, S0
285C18:  VMUL.F32        S8, S8, S0
285C1C:  VSUB.F32        S1, S6, S1
285C20:  VSUB.F32        S14, S8, S14
285C24:  VMUL.F32        S1, S1, S1
285C28:  VMUL.F32        S14, S14, S14
285C2C:  VADD.F32        S12, S14, S1
285C30:  VABS.F32        S14, S10
285C34:  VSQRT.F32       S10, S12
285C38:  VMUL.F32        S12, S14, S0
285C3C:  VADD.F32        S12, S2, S12
285C40:  VCMPE.F32       S10, S12
285C44:  VMRS            APSR_nzcv, FPSCR
285C48:  VCMPE.F32       S10, S4
285C4C:  VMOV.F32        S12, S10
285C50:  IT GE
285C52:  MOVGE           R2, #1
285C54:  VMRS            APSR_nzcv, FPSCR
285C58:  IT GE
285C5A:  MOVGE           R5, #1
285C5C:  ORRS            R2, R5
285C5E:  IT NE
285C60:  VMOVNE.F32      S12, S4
285C64:  BNE             loc_285C7C
285C66:  CMP             R3, #0
285C68:  VMOV.F32        S4, S12
285C6C:  ITTT NE
285C6E:  VSTRNE          S8, [R3]
285C72:  VSTRNE          S6, [R3,#4]
285C76:  VMOVNE.F32      S4, S10
285C7A:  B               loc_285C80
285C7C:  VMOV.F32        S4, S12
285C80:  ADDS            R4, #0x28 ; '('
285C82:  ADD.W           R12, R12, #1
285C86:  CMP.W           R4, #0x2F8
285C8A:  BNE             loc_285BCE
285C8C:  VLDR            S0, =1000000.0
285C90:  MOVS            R0, #0
285C92:  VCMP.F32        S4, S0
285C96:  VMRS            APSR_nzcv, FPSCR
285C9A:  IT EQ
285C9C:  MOVEQ           R0, #1
285C9E:  POP             {R4,R5,R7,PC}
