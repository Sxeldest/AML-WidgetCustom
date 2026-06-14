; =========================================================
; Game Engine Function: _ZN30CTaskComplexFollowPedFootsteps17CreateNextSubTaskEP4CPed
; Address            : 0x545B70 - 0x545C34
; =========================================================

545B70:  PUSH            {R4,R5,R7,LR}
545B72:  ADD             R7, SP, #8
545B74:  MOV             R5, R0
545B76:  MOV             R4, R1
545B78:  LDR             R0, [R5,#0xC]
545B7A:  CMP             R0, #0
545B7C:  BEQ             loc_545C18
545B7E:  LDR             R0, [R5,#8]
545B80:  LDR             R1, [R0]
545B82:  LDR             R1, [R1,#0x14]
545B84:  BLX             R1
545B86:  CMP.W           R0, #0x1F4
545B8A:  BLT             loc_545BFC
545B8C:  BEQ             loc_545C24
545B8E:  CMP.W           R0, #0x384
545B92:  BEQ             loc_545C04
545B94:  MOVW            R1, #0x38B
545B98:  CMP             R0, R1
545B9A:  BNE             loc_545C18
545B9C:  LDR             R1, [R5,#0xC]
545B9E:  LDR             R2, [R4,#0x14]
545BA0:  LDR.W           R12, [R5]
545BA4:  LDR             R3, [R1,#0x14]
545BA6:  ADD.W           R0, R2, #0x30 ; '0'
545BAA:  CMP             R2, #0
545BAC:  IT EQ
545BAE:  ADDEQ           R0, R4, #4
545BB0:  ADD.W           R2, R3, #0x30 ; '0'
545BB4:  CMP             R3, #0
545BB6:  VLDR            S0, [R0]
545BBA:  IT EQ
545BBC:  ADDEQ           R2, R1, #4
545BBE:  VLDR            D16, [R0,#4]
545BC2:  VLDR            S2, [R2]
545BC6:  VLDR            D17, [R2,#4]
545BCA:  VSUB.F32        S0, S2, S0
545BCE:  LDR.W           R3, [R12,#0x34]
545BD2:  VSUB.F32        D16, D17, D16
545BD6:  VMUL.F32        D1, D16, D16
545BDA:  VMUL.F32        S0, S0, S0
545BDE:  VADD.F32        S0, S0, S2
545BE2:  VADD.F32        S0, S0, S3
545BE6:  VLDR            S2, =1.4
545BEA:  VCMPE.F32       S0, S2
545BEE:  VMRS            APSR_nzcv, FPSCR
545BF2:  BLE             loc_545C28
545BF4:  MOV             R0, R5
545BF6:  MOVW            R1, #0x38B
545BFA:  B               loc_545C2C
545BFC:  CMP             R0, #0xC8
545BFE:  BEQ             loc_545C18
545C00:  CMP             R0, #0xCB
545C02:  BNE             loc_545C18
545C04:  LDR             R0, [R5,#0x18]
545C06:  CMP             R0, #0
545C08:  ITT NE
545C0A:  LDRNE           R0, [R0]
545C0C:  CMPNE           R0, #0
545C0E:  BEQ             loc_545C24
545C10:  LDR             R0, [R5]
545C12:  MOV.W           R1, #0x384
545C16:  B               loc_545C1E
545C18:  LDR             R0, [R5]
545C1A:  MOVW            R1, #0x516
545C1E:  LDR             R3, [R0,#0x34]
545C20:  MOV             R0, R5
545C22:  B               loc_545C2C
545C24:  LDR             R0, [R5]
545C26:  LDR             R3, [R0,#0x34]
545C28:  MOV             R0, R5
545C2A:  MOVS            R1, #0xCB
545C2C:  MOV             R2, R4
545C2E:  POP.W           {R4,R5,R7,LR}
545C32:  BX              R3
