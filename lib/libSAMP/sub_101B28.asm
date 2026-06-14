; =========================================================
; Game Engine Function: sub_101B28
; Address            : 0x101B28 - 0x101B96
; =========================================================

101B28:  PUSH            {R4,R6,R7,LR}
101B2A:  ADD             R7, SP, #8
101B2C:  VLDR            S0, =-3000.0
101B30:  VMOV            S4, R1
101B34:  VLDR            S2, =3000.0
101B38:  VMOV            S6, R2
101B3C:  VCMP.F32        S4, S0
101B40:  MOV.W           LR, #0
101B44:  VMRS            APSR_nzcv, FPSCR
101B48:  VCMP.F32        S4, S2
101B4C:  MOV.W           R4, #0
101B50:  IT MI
101B52:  MOVMI.W         LR, #1
101B56:  VMRS            APSR_nzcv, FPSCR
101B5A:  IT GT
101B5C:  MOVGT           R4, #1
101B5E:  ORR.W           LR, LR, R4
101B62:  VCMP.F32        S6, S2
101B66:  MOVS            R4, #0
101B68:  VMRS            APSR_nzcv, FPSCR
101B6C:  IT GT
101B6E:  MOVGT           R4, #1
101B70:  VCMP.F32        S6, S0
101B74:  MOV.W           R12, #0
101B78:  ORR.W           R4, R4, LR
101B7C:  VMRS            APSR_nzcv, FPSCR
101B80:  IT MI
101B82:  MOVMI.W         R12, #1
101B86:  ORR.W           R4, R4, R12
101B8A:  STRB.W          R4, [R0,#0x272]
101B8E:  POP.W           {R4,R6,R7,LR}
101B92:  B.W             sub_F8AD8
