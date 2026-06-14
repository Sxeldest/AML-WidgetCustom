; =========================================================
; Game Engine Function: _ZN16CPedIntelligence32FindRespectedFriendInInformRangeEv
; Address            : 0x4BCD48 - 0x4BCE04
; =========================================================

4BCD48:  PUSH            {R4-R7,LR}
4BCD4A:  ADD             R7, SP, #0xC
4BCD4C:  PUSH.W          {R8,R9,R11}
4BCD50:  MOV             R4, R0
4BCD52:  MOVS            R1, #0; int
4BCD54:  LDR             R0, [R4]
4BCD56:  MOVS            R6, #0
4BCD58:  ADDW            R0, R0, #0x4EC; this
4BCD5C:  BLX             j__ZNK13CAcquaintance16GetAcquaintancesEi; CAcquaintance::GetAcquaintances(int)
4BCD60:  MOV             R9, R0
4BCD62:  MOV.W           R8, #0
4BCD66:  CMP             R6, #0xF
4BCD68:  BGT             loc_4BCDFA
4BCD6A:  LDR.W           R0, [R4,#0xC4]
4BCD6E:  CMP             R6, R0
4BCD70:  BGE             loc_4BCDFA
4BCD72:  ADD.W           R0, R4, R6,LSL#2
4BCD76:  ADDS            R6, #1
4BCD78:  LDR.W           R5, [R0,#0x130]
4BCD7C:  CBZ             R5, loc_4BCD8C
4BCD7E:  LDR.W           R0, [R5,#0x59C]; this
4BCD82:  BLX             j__ZN8CPedType10GetPedFlagEi; CPedType::GetPedFlag(int)
4BCD86:  TST.W           R0, R9
4BCD8A:  BNE             loc_4BCD94
4BCD8C:  SUBS            R0, R6, #1
4BCD8E:  CMP             R0, #0xF
4BCD90:  BLT             loc_4BCD6A
4BCD92:  B               loc_4BCDFA
4BCD94:  LDR             R0, [R4]
4BCD96:  LDR             R1, [R5,#0x14]
4BCD98:  LDR             R2, [R0,#0x14]
4BCD9A:  ADD.W           R3, R1, #0x30 ; '0'
4BCD9E:  CMP             R1, #0
4BCDA0:  IT EQ
4BCDA2:  ADDEQ           R3, R5, #4
4BCDA4:  ADD.W           R1, R2, #0x30 ; '0'
4BCDA8:  CMP             R2, #0
4BCDAA:  VLDR            S0, [R3]
4BCDAE:  IT EQ
4BCDB0:  ADDEQ           R1, R0, #4
4BCDB2:  VLDR            D16, [R3,#4]
4BCDB6:  VLDR            S2, [R1]
4BCDBA:  MOVS            R0, #0
4BCDBC:  VLDR            D17, [R1,#4]
4BCDC0:  VSUB.F32        S0, S2, S0
4BCDC4:  VLDR            S4, [R4,#0xC8]
4BCDC8:  VSUB.F32        D16, D17, D16
4BCDCC:  VMUL.F32        S4, S4, S4
4BCDD0:  VMUL.F32        D1, D16, D16
4BCDD4:  VMUL.F32        S0, S0, S0
4BCDD8:  VADD.F32        S0, S0, S2
4BCDDC:  VADD.F32        S0, S0, S3
4BCDE0:  VCMPE.F32       S0, S4
4BCDE4:  VMRS            APSR_nzcv, FPSCR
4BCDE8:  VCMPE.F32       S0, S4
4BCDEC:  IT LT
4BCDEE:  MOVLT           R0, #1
4BCDF0:  VMRS            APSR_nzcv, FPSCR
4BCDF4:  ORR.W           R8, R8, R0
4BCDF8:  BGE             loc_4BCD66
4BCDFA:  AND.W           R0, R8, #1
4BCDFE:  POP.W           {R8,R9,R11}
4BCE02:  POP             {R4-R7,PC}
