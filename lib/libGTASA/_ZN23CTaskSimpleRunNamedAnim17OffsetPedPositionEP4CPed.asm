; =========================================================
; Game Engine Function: _ZN23CTaskSimpleRunNamedAnim17OffsetPedPositionEP4CPed
; Address            : 0x4D6FC8 - 0x4D7034
; =========================================================

4D6FC8:  PUSH            {R4,R5,R7,LR}
4D6FCA:  ADD             R7, SP, #8
4D6FCC:  SUB             SP, SP, #0x10
4D6FCE:  MOV             R5, R1
4D6FD0:  MOV             R4, R0
4D6FD2:  MOV             R0, R5; this
4D6FD4:  BLX             j__ZN7CEntity13UpdateRpHAnimEv; CEntity::UpdateRpHAnim(void)
4D6FD8:  LDR             R0, [R5,#0x1C]
4D6FDA:  ADD.W           R2, R4, #0x50 ; 'P'
4D6FDE:  ORR.W           R0, R0, #0x800000
4D6FE2:  STR             R0, [R5,#0x1C]
4D6FE4:  LDR             R1, [R5,#0x14]; CVector *
4D6FE6:  ADD             R0, SP, #0x18+var_14; CMatrix *
4D6FE8:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
4D6FEC:  LDR             R0, [R5,#0x14]
4D6FEE:  VLDR            S0, [SP,#0x18+var_14]
4D6FF2:  ADD.W           R1, R0, #0x30 ; '0'
4D6FF6:  CMP             R0, #0
4D6FF8:  IT EQ
4D6FFA:  ADDEQ           R1, R5, #4
4D6FFC:  VLDR            S2, [R1]
4D7000:  VLDR            S4, [R1,#4]
4D7004:  VADD.F32        S0, S0, S2
4D7008:  VLDR            S6, [R1,#8]
4D700C:  VSTR            S0, [R1]
4D7010:  VLDR            S0, [SP,#0x18+var_10]
4D7014:  VADD.F32        S0, S0, S4
4D7018:  VSTR            S0, [R1,#4]
4D701C:  VLDR            S0, [SP,#0x18+var_C]
4D7020:  VADD.F32        S0, S0, S6
4D7024:  VSTR            S0, [R1,#8]
4D7028:  LDRB            R0, [R4,#0xC]
4D702A:  AND.W           R0, R0, #0xBF
4D702E:  STRB            R0, [R4,#0xC]
4D7030:  ADD             SP, SP, #0x10
4D7032:  POP             {R4,R5,R7,PC}
