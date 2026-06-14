; =========================================================
; Game Engine Function: _ZN8CIdleCam12ProcessSlerpEPfS0_
; Address            : 0x3D3AB8 - 0x3D3CAC
; =========================================================

3D3AB8:  PUSH            {R4-R7,LR}
3D3ABA:  ADD             R7, SP, #0xC
3D3ABC:  PUSH.W          {R8-R11}
3D3AC0:  SUB             SP, SP, #4
3D3AC2:  VPUSH           {D8-D15}
3D3AC6:  MOV             R9, R1
3D3AC8:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3D3AD2)
3D3ACA:  MOV             R6, R0
3D3ACC:  MOV             R8, R2
3D3ACE:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3D3AD0:  LDR             R0, [R6]
3D3AD2:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
3D3AD4:  LDR             R2, [R0,#0x14]; float
3D3AD6:  VLDR            S0, [R1]
3D3ADA:  ADD.W           R3, R2, #0x30 ; '0'
3D3ADE:  LDRB.W          R1, [R0,#0x3A]
3D3AE2:  CMP             R2, #0
3D3AE4:  VCVT.F32.U32    S16, S0
3D3AE8:  IT EQ
3D3AEA:  ADDEQ           R3, R0, #4
3D3AEC:  AND.W           R1, R1, #7
3D3AF0:  VLDR            S20, [R3]
3D3AF4:  VLDR            S22, [R3,#4]
3D3AF8:  CMP             R1, #3
3D3AFA:  VLDR            S18, [R3,#8]
3D3AFE:  BNE             loc_3D3B20
3D3B00:  LDR.W           R0, [R0,#0x59C]
3D3B04:  VMOV.F32        S0, #0.5
3D3B08:  VLDR            S2, =0.1
3D3B0C:  CMP             R0, #5
3D3B0E:  IT EQ
3D3B10:  VMOVEQ.F32      S0, S2
3D3B14:  CMP             R0, #0x16
3D3B16:  IT EQ
3D3B18:  VMOVEQ.F32      S0, S2
3D3B1C:  VADD.F32        S18, S18, S0
3D3B20:  LDRD.W          R0, R1, [R6,#0x50]
3D3B24:  CMP             R1, R0
3D3B26:  ITTT GE
3D3B28:  VLDRGE          S20, [R6,#0x18]
3D3B2C:  VLDRGE          S22, [R6,#0x1C]
3D3B30:  VLDRGE          S18, [R6,#0x20]
3D3B34:  LDR.W           R0, [R6,#0x98]
3D3B38:  VLDR            S0, [R6,#4]
3D3B3C:  VLDR            S2, [R6,#8]
3D3B40:  VLDR            S26, [R0,#0x174]
3D3B44:  VLDR            S28, [R0,#0x178]
3D3B48:  VSUB.F32        S17, S0, S26
3D3B4C:  VLDR            S30, [R0,#0x17C]
3D3B50:  VSUB.F32        S19, S2, S28
3D3B54:  VLDR            S24, [R6,#0xC]
3D3B58:  VMOV            R0, S17; this
3D3B5C:  VMOV            R1, S19; float
3D3B60:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
3D3B64:  VMUL.F32        S4, S19, S19
3D3B68:  VMUL.F32        S6, S17, S17
3D3B6C:  VSUB.F32        S2, S20, S26
3D3B70:  VSUB.F32        S0, S22, S28
3D3B74:  VMOV            S20, R0
3D3B78:  VADD.F32        S4, S6, S4
3D3B7C:  VMUL.F32        S10, S2, S2
3D3B80:  VMUL.F32        S8, S0, S0
3D3B84:  VMOV            R4, S2
3D3B88:  VMOV            R5, S0
3D3B8C:  VSQRT.F32       S4, S4
3D3B90:  VADD.F32        S6, S10, S8
3D3B94:  VSUB.F32        S8, S24, S30
3D3B98:  VMOV            R2, S4; float
3D3B9C:  VSUB.F32        S10, S18, S30
3D3BA0:  VSQRT.F32       S6, S6
3D3BA4:  MOV             R0, R2; this
3D3BA6:  VMOV            R1, S8; float
3D3BAA:  VMOV            R10, S10
3D3BAE:  VMOV            R11, S6
3D3BB2:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
3D3BB6:  VMOV            S18, R0
3D3BBA:  MOV             R0, R4; this
3D3BBC:  MOV             R1, R5; float
3D3BBE:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
3D3BC2:  MOV             R4, R0
3D3BC4:  MOV             R0, R11; this
3D3BC6:  MOV             R1, R10; float
3D3BC8:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
3D3BCC:  VMOV            S22, R0
3D3BD0:  VLDR            S0, =3.1416
3D3BD4:  VMOV            S4, R4
3D3BD8:  VSUB.F32        S2, S22, S18
3D3BDC:  VADD.F32        S20, S20, S0
3D3BE0:  VADD.F32        S24, S4, S0
3D3BE4:  VCMPE.F32       S2, S0
3D3BE8:  VMRS            APSR_nzcv, FPSCR
3D3BEC:  BLE             loc_3D3BF4
3D3BEE:  VLDR            S2, =-6.2832
3D3BF2:  B               loc_3D3C06
3D3BF4:  VLDR            S4, =-3.1416
3D3BF8:  VCMPE.F32       S2, S4
3D3BFC:  VMRS            APSR_nzcv, FPSCR
3D3C00:  BGE             loc_3D3C0A
3D3C02:  VLDR            S2, =6.2832
3D3C06:  VADD.F32        S22, S22, S2
3D3C0A:  VSUB.F32        S2, S24, S20
3D3C0E:  VCMPE.F32       S2, S0
3D3C12:  VMRS            APSR_nzcv, FPSCR
3D3C16:  BLE             loc_3D3C1E
3D3C18:  VLDR            S2, =-6.2832
3D3C1C:  B               loc_3D3C30
3D3C1E:  VLDR            S4, =-3.1416
3D3C22:  VCMPE.F32       S2, S4
3D3C26:  VMRS            APSR_nzcv, FPSCR
3D3C2A:  BGE             loc_3D3C34
3D3C2C:  VLDR            S2, =6.2832
3D3C30:  VADD.F32        S24, S24, S2
3D3C34:  VLDR            S4, [R6,#0x34]
3D3C38:  VLDR            S2, [R6,#0x14]
3D3C3C:  VSUB.F32        S4, S16, S4
3D3C40:  VLDR            S6, =270.0
3D3C44:  VMOV.F32        S16, #1.0
3D3C48:  VDIV.F32        S2, S4, S2
3D3C4C:  VMIN.F32        D13, D1, D8
3D3C50:  VLDR            S4, =180.0
3D3C54:  VMUL.F32        S2, S26, S4
3D3C58:  VSUB.F32        S2, S6, S2
3D3C5C:  VMUL.F32        S0, S2, S0
3D3C60:  VDIV.F32        S0, S0, S4
3D3C64:  VMOV            R0, S0; x
3D3C68:  BLX             sinf
3D3C6C:  VMOV            S0, R0
3D3C70:  VMOV.F32        S2, #0.5
3D3C74:  VADD.F32        S0, S0, S16
3D3C78:  VSUB.F32        S4, S22, S18
3D3C7C:  VMOV            R0, S26
3D3C80:  VMUL.F32        S0, S0, S2
3D3C84:  VSUB.F32        S2, S24, S20
3D3C88:  VMUL.F32        S4, S4, S0
3D3C8C:  VMUL.F32        S0, S2, S0
3D3C90:  VADD.F32        S2, S18, S4
3D3C94:  VADD.F32        S0, S20, S0
3D3C98:  VSTR            S2, [R9]
3D3C9C:  VSTR            S0, [R8]
3D3CA0:  VPOP            {D8-D15}
3D3CA4:  ADD             SP, SP, #4
3D3CA6:  POP.W           {R8-R11}
3D3CAA:  POP             {R4-R7,PC}
