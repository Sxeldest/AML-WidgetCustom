; =========================================================
; Game Engine Function: _ZN24CTaskComplexGangFollower23CalculateOffsetPositionER7CVector
; Address            : 0x516B7C - 0x516C66
; =========================================================

516B7C:  PUSH            {R4,R5,R7,LR}
516B7E:  ADD             R7, SP, #8
516B80:  SUB             SP, SP, #0x10
516B82:  MOV             R5, R0
516B84:  MOV             R4, R1
516B86:  LDR             R1, [R5,#0x10]
516B88:  LDR.W           R0, [R1,#0x450]
516B8C:  SUBS            R0, #4
516B8E:  CMP             R0, #3
516B90:  BHI             loc_516BA2
516B92:  AND.W           R0, R0, #0xF
516B96:  MOVS            R2, #0xD
516B98:  LSR.W           R0, R2, R0
516B9C:  AND.W           R2, R0, #1
516BA0:  B               loc_516BA4
516BA2:  MOVS            R2, #0
516BA4:  LDR             R3, [R1,#0x14]
516BA6:  ADD.W           R0, R3, #0x30 ; '0'
516BAA:  CMP             R3, #0
516BAC:  IT EQ
516BAE:  ADDEQ           R0, R1, #4
516BB0:  CBZ             R2, loc_516BE2
516BB2:  LDR             R0, =(_ZN35CTaskComplexFollowLeaderInFormation10ms_offsetsE_ptr - 0x516BBC)
516BB4:  LDRB.W          R2, [R5,#0x3C]
516BB8:  ADD             R0, PC; _ZN35CTaskComplexFollowLeaderInFormation10ms_offsetsE_ptr
516BBA:  LDR             R1, [R1,#0x14]; CMatrix *
516BBC:  LDR             R0, [R0]; CTaskComplexFollowLeaderInFormation::ms_offsets ...
516BBE:  ADD.W           R0, R0, R2,LSL#3
516BC2:  LDRD.W          R2, R0, [R0,#0x40]
516BC6:  STRD.W          R2, R0, [SP,#0x18+var_14]
516BCA:  MOVS            R0, #0
516BCC:  STR             R0, [SP,#0x18+var_C]
516BCE:  ADD.W           R0, R5, #0x20 ; ' '; this
516BD2:  ADD             R2, SP, #0x18+var_14; CVector *
516BD4:  BLX             j__ZN7CVector15FromMultiply3X3ERK7CMatrixRKS_; CVector::FromMultiply3X3(CMatrix const&,CVector const&)
516BD8:  LDRB.W          R0, [R5,#0x3D]
516BDC:  AND.W           R0, R0, #0xEF
516BE0:  B               loc_516C52
516BE2:  VLDR            S0, [R5,#0x14]
516BE6:  VMOV.F32        S4, #9.0
516BEA:  VLDR            S2, [R0]
516BEE:  VLDR            D16, [R5,#0x18]
516BF2:  VSUB.F32        S0, S2, S0
516BF6:  VLDR            D17, [R0,#4]
516BFA:  VSUB.F32        D16, D17, D16
516BFE:  LDRB.W          R1, [R5,#0x3D]
516C02:  VMUL.F32        D1, D16, D16
516C06:  VMUL.F32        S0, S0, S0
516C0A:  VADD.F32        S0, S0, S2
516C0E:  VADD.F32        S0, S0, S3
516C12:  VCMPE.F32       S0, S4
516C16:  VMRS            APSR_nzcv, FPSCR
516C1A:  BGT             loc_516C22
516C1C:  ANDS.W          R2, R1, #0x10
516C20:  BNE             loc_516C56
516C22:  LDR             R3, =(_ZN35CTaskComplexFollowLeaderInFormation10ms_offsetsE_ptr - 0x516C32)
516C24:  ADD.W           R2, R5, #0x14
516C28:  VLDR            D16, [R0]
516C2C:  LDR             R0, [R0,#8]
516C2E:  ADD             R3, PC; _ZN35CTaskComplexFollowLeaderInFormation10ms_offsetsE_ptr
516C30:  STR             R0, [R2,#8]
516C32:  VSTR            D16, [R2]
516C36:  LDRB.W          R0, [R5,#0x3C]
516C3A:  LDR             R2, [R3]; CTaskComplexFollowLeaderInFormation::ms_offsets ...
516C3C:  LDR.W           R3, [R2,R0,LSL#3]
516C40:  ADD.W           R0, R2, R0,LSL#3
516C44:  MOVS            R2, #0
516C46:  LDR             R0, [R0,#4]
516C48:  STRD.W          R3, R0, [R5,#0x20]
516C4C:  ORR.W           R0, R1, #0x10
516C50:  STR             R2, [R5,#0x28]
516C52:  STRB.W          R0, [R5,#0x3D]
516C56:  VLDR            D16, [R5,#0x20]
516C5A:  LDR             R0, [R5,#0x28]
516C5C:  STR             R0, [R4,#8]
516C5E:  VSTR            D16, [R4]
516C62:  ADD             SP, SP, #0x10
516C64:  POP             {R4,R5,R7,PC}
