; =========================================================
; Game Engine Function: _ZN30CTaskComplexFollowPedFootsteps18CreateFirstSubTaskEP4CPed
; Address            : 0x545C38 - 0x545CB6
; =========================================================

545C38:  MOV             R12, R1
545C3A:  LDR             R1, [R0,#0xC]
545C3C:  CBZ             R1, loc_545CAA
545C3E:  PUSH            {R7,LR}
545C40:  MOV             R7, SP
545C42:  LDR.W           R3, [R12,#0x14]
545C46:  LDR.W           LR, [R1,#0x14]
545C4A:  ADD.W           R2, R3, #0x30 ; '0'
545C4E:  CMP             R3, #0
545C50:  IT EQ
545C52:  ADDEQ.W         R2, R12, #4
545C56:  ADD.W           R3, LR, #0x30 ; '0'
545C5A:  CMP.W           LR, #0
545C5E:  VLDR            S0, [R2]
545C62:  IT EQ
545C64:  ADDEQ           R3, R1, #4
545C66:  VLDR            D16, [R2,#4]
545C6A:  VLDR            S2, [R3]
545C6E:  MOVS            R1, #0xCB
545C70:  VLDR            D17, [R3,#4]
545C74:  VSUB.F32        S0, S2, S0
545C78:  LDR             R2, [R0]
545C7A:  VSUB.F32        D16, D17, D16
545C7E:  LDR             R3, [R2,#0x34]
545C80:  MOV             R2, R12
545C82:  VMUL.F32        D1, D16, D16
545C86:  VMUL.F32        S0, S0, S0
545C8A:  VADD.F32        S0, S0, S2
545C8E:  VADD.F32        S0, S0, S3
545C92:  VLDR            S2, =1.4
545C96:  VCMPE.F32       S0, S2
545C9A:  VMRS            APSR_nzcv, FPSCR
545C9E:  IT GT
545CA0:  MOVWGT          R1, #0x38B
545CA4:  POP.W           {R7,LR}
545CA8:  BX              R3
545CAA:  LDR             R1, [R0]
545CAC:  MOV             R2, R12
545CAE:  LDR             R3, [R1,#0x34]
545CB0:  MOVW            R1, #0x516
545CB4:  BX              R3
