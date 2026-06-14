; =========================================================
; Game Engine Function: _ZN22WaterCreatureManager_c14TryToExitGroupEP15WaterCreature_c
; Address            : 0x592B80 - 0x592C38
; =========================================================

592B80:  PUSH            {R7,LR}
592B82:  MOV             R7, SP
592B84:  SUB             SP, SP, #0x80
592B86:  MOVW            R3, #0x1A0C
592B8A:  LDR             R2, [R1,#0x1C]
592B8C:  LDR             R0, [R0,R3]
592B8E:  MOV.W           LR, #0
592B92:  CMP             R2, #0
592B94:  IT EQ
592B96:  MOVEQ           R2, R1
592B98:  MOV             R12, SP
592B9A:  B               loc_592BA4
592B9C:  STR.W           R3, [R12,LR,LSL#2]
592BA0:  ADD.W           LR, LR, #1
592BA4:  MOV             R3, R0
592BA6:  CBZ             R3, loc_592BB6
592BA8:  LDR             R0, [R3,#4]
592BAA:  CMP             R2, R3
592BAC:  ITT NE
592BAE:  LDRNE           R1, [R3,#0x1C]
592BB0:  CMPNE           R1, R2
592BB2:  BNE             loc_592BA4
592BB4:  B               loc_592B9C
592BB6:  CMP.W           LR, #1
592BBA:  BLT             loc_592C34
592BBC:  LDR             R0, =(TheCamera_ptr - 0x592BC6)
592BBE:  VLDR            S2, =3600.0
592BC2:  ADD             R0, PC; TheCamera_ptr
592BC4:  LDR             R0, [R0]; TheCamera
592BC6:  LDR             R2, [R0,#(dword_951FBC - 0x951FA8)]
592BC8:  ADD.W           R3, R2, #0x30 ; '0'
592BCC:  CMP             R2, #0
592BCE:  IT EQ
592BD0:  ADDEQ           R3, R0, #4
592BD2:  MOVS            R2, #0
592BD4:  VLDR            D16, [R3,#4]
592BD8:  VLDR            S0, [R3]
592BDC:  LDR.W           R0, [R12,R2,LSL#2]
592BE0:  LDR             R0, [R0,#8]
592BE2:  LDR             R1, [R0,#0x14]
592BE4:  ADD.W           R3, R1, #0x30 ; '0'
592BE8:  CMP             R1, #0
592BEA:  IT EQ
592BEC:  ADDEQ           R3, R0, #4
592BEE:  VLDR            S4, [R3]
592BF2:  VLDR            D17, [R3,#4]
592BF6:  VSUB.F32        S4, S4, S0
592BFA:  VSUB.F32        D17, D17, D16
592BFE:  VMUL.F32        D3, D17, D17
592C02:  VMUL.F32        S4, S4, S4
592C06:  VADD.F32        S4, S4, S6
592C0A:  VADD.F32        S4, S4, S7
592C0E:  VCMPE.F32       S4, S2
592C12:  VMRS            APSR_nzcv, FPSCR
592C16:  BLE             loc_592C34
592C18:  ADDS            R2, #1
592C1A:  CMP             R2, LR
592C1C:  BLT             loc_592BDC
592C1E:  CMP.W           LR, #1
592C22:  BLT             loc_592C34
592C24:  MOVS            R0, #0
592C26:  MOVS            R2, #1
592C28:  LDR.W           R1, [R12,R0,LSL#2]
592C2C:  ADDS            R0, #1
592C2E:  CMP             LR, R0
592C30:  STRB            R2, [R1,#0xD]
592C32:  BNE             loc_592C28
592C34:  ADD             SP, SP, #0x80
592C36:  POP             {R7,PC}
