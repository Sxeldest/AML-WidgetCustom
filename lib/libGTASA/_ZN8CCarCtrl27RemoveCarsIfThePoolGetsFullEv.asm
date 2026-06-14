; =========================================================
; Game Engine Function: _ZN8CCarCtrl27RemoveCarsIfThePoolGetsFullEv
; Address            : 0x2ECA1C - 0x2ECBD6
; =========================================================

2ECA1C:  PUSH            {R4-R7,LR}
2ECA1E:  ADD             R7, SP, #0xC
2ECA20:  PUSH.W          {R8-R11}
2ECA24:  SUB             SP, SP, #4
2ECA26:  VPUSH           {D8}
2ECA2A:  SUB             SP, SP, #0x10
2ECA2C:  LDR             R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x2ECA32)
2ECA2E:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
2ECA30:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
2ECA32:  LDR             R0, [R0]; CTimer::m_FrameCounter
2ECA34:  AND.W           R0, R0, #7
2ECA38:  CMP             R0, #3
2ECA3A:  BNE.W           loc_2ECBC8
2ECA3E:  LDR             R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x2ECA44)
2ECA40:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
2ECA42:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
2ECA44:  LDR.W           R9, [R0]; CPools::ms_pVehiclePool
2ECA48:  LDR.W           R0, [R9,#8]
2ECA4C:  CMP             R0, #1
2ECA4E:  BLT             loc_2ECACA
2ECA50:  LDR.W           R5, [R9,#4]
2ECA54:  CMP             R0, #4
2ECA56:  BCC             loc_2ECAB0
2ECA58:  BIC.W           R6, R0, #3
2ECA5C:  CBZ             R6, loc_2ECAB0
2ECA5E:  VMOV.I32        Q8, #0
2ECA62:  ADD             R3, SP, #0x38+var_2C
2ECA64:  VMOV.I16        D18, #1
2ECA68:  MOV             R2, R6
2ECA6A:  VMOV.I32        Q10, #0xFF
2ECA6E:  MOV             R1, R5
2ECA70:  LDR.W           R4, [R1],#4
2ECA74:  SUBS            R2, #4
2ECA76:  STR             R4, [SP,#0x38+var_2C]
2ECA78:  VLD1.32         {D19[0]}, [R3@32]
2ECA7C:  VMOVL.U8        Q11, D19
2ECA80:  VSHR.U16        D19, D22, #7
2ECA84:  VEOR            D19, D19, D18
2ECA88:  VMOVL.U16       Q11, D19
2ECA8C:  VAND            Q11, Q11, Q10
2ECA90:  VADD.I32        Q8, Q8, Q11
2ECA94:  BNE             loc_2ECA70
2ECA96:  VEXT.8          Q9, Q8, Q8, #8
2ECA9A:  CMP             R0, R6
2ECA9C:  VADD.I32        Q8, Q8, Q9
2ECAA0:  VDUP.32         Q9, D16[1]
2ECAA4:  VADD.I32        Q8, Q8, Q9
2ECAA8:  VMOV.32         R3, D16[0]
2ECAAC:  BNE             loc_2ECAB4
2ECAAE:  B               loc_2ECACC
2ECAB0:  MOVS            R6, #0
2ECAB2:  MOVS            R3, #0
2ECAB4:  ADDS            R1, R5, R6
2ECAB6:  SUBS            R2, R0, R6
2ECAB8:  MOVS            R6, #1
2ECABA:  LDRB.W          R5, [R1],#1
2ECABE:  SUBS            R2, #1
2ECAC0:  EOR.W           R5, R6, R5,LSR#7
2ECAC4:  ADD             R3, R5
2ECAC6:  BNE             loc_2ECABA
2ECAC8:  B               loc_2ECACC
2ECACA:  MOVS            R3, #0
2ECACC:  SUBS            R1, R0, R3
2ECACE:  CMP             R1, #7
2ECAD0:  BGT             loc_2ECBC8
2ECAD2:  CMP             R0, #0
2ECAD4:  BEQ             loc_2ECBC8
2ECAD6:  MOVW            R1, #0xA2C
2ECADA:  SUBS            R6, R0, #1
2ECADC:  MUL.W           R4, R0, R1
2ECAE0:  MOVS            R0, #0
2ECAE2:  STR             R0, [SP,#0x38+var_30]
2ECAE4:  LDR             R0, =(apCarsToKeep_ptr - 0x2ECAF6)
2ECAE6:  MOVW            R8, #0xFA00
2ECAEA:  VLDR            S16, =1.0e7
2ECAEE:  MOVT            R8, #0xFFFF
2ECAF2:  ADD             R0, PC; apCarsToKeep_ptr
2ECAF4:  LDR.W           R10, [R0]; apCarsToKeep
2ECAF8:  LDR             R0, =(TheCamera_ptr - 0x2ECAFE)
2ECAFA:  ADD             R0, PC; TheCamera_ptr
2ECAFC:  LDR             R0, [R0]; TheCamera
2ECAFE:  STR             R0, [SP,#0x38+var_34]
2ECB00:  LDR.W           R0, [R9,#4]
2ECB04:  LDRSB           R0, [R0,R6]
2ECB06:  CMP             R0, #0
2ECB08:  BLT             loc_2ECB9C
2ECB0A:  LDR.W           R0, [R9]
2ECB0E:  ADD.W           R11, R0, R4
2ECB12:  SUBW            R5, R11, #0xA2C
2ECB16:  CMP             R5, #0
2ECB18:  BEQ             loc_2ECB9C
2ECB1A:  LDR.W           R0, [R10]
2ECB1E:  CMP             R5, R0
2ECB20:  ITT NE
2ECB22:  LDRNE.W         R0, [R10,#(dword_7967A8 - 0x7967A4)]
2ECB26:  CMPNE           R5, R0
2ECB28:  BEQ             loc_2ECB9C
2ECB2A:  LDRB.W          R0, [R11,R8]
2ECB2E:  LSLS            R0, R0, #0x1C
2ECB30:  BMI             loc_2ECB9C
2ECB32:  MOV             R0, R5; this
2ECB34:  BLX             j__ZNK8CVehicle12CanBeDeletedEv; CVehicle::CanBeDeleted(void)
2ECB38:  CBZ             R0, loc_2ECB9C
2ECB3A:  MOV             R0, R5; this
2ECB3C:  BLX             j__ZN7CCranes33IsThisCarBeingTargettedByAnyCraneEP8CVehicle; CCranes::IsThisCarBeingTargettedByAnyCrane(CVehicle *)
2ECB40:  CMP             R0, #1
2ECB42:  BEQ             loc_2ECB9C
2ECB44:  SUBW            R0, R11, #0xA28
2ECB48:  LDR             R3, [SP,#0x38+var_34]
2ECB4A:  LDR             R1, [R0,#0x10]
2ECB4C:  LDR             R2, [R3,#0x14]
2ECB4E:  CMP             R1, #0
2ECB50:  IT NE
2ECB52:  ADDNE.W         R0, R1, #0x30 ; '0'
2ECB56:  ADD.W           R1, R2, #0x30 ; '0'
2ECB5A:  CMP             R2, #0
2ECB5C:  VLDR            S0, [R0]
2ECB60:  IT EQ
2ECB62:  ADDEQ           R1, R3, #4; CEntity *
2ECB64:  VLDR            D16, [R0,#4]
2ECB68:  VLDR            S2, [R1]
2ECB6C:  VLDR            D17, [R1,#4]
2ECB70:  VSUB.F32        S0, S2, S0
2ECB74:  VSUB.F32        D16, D17, D16
2ECB78:  VMUL.F32        D1, D16, D16
2ECB7C:  VMUL.F32        S0, S0, S0
2ECB80:  VADD.F32        S0, S0, S2
2ECB84:  VADD.F32        S0, S0, S3
2ECB88:  VSQRT.F32       S0, S0
2ECB8C:  VCMPE.F32       S0, S16
2ECB90:  VMRS            APSR_nzcv, FPSCR
2ECB94:  ITT LT
2ECB96:  VMOVLT.F32      S16, S0
2ECB9A:  STRLT           R5, [SP,#0x38+var_30]
2ECB9C:  SUBS            R6, #1
2ECB9E:  SUBW            R4, R4, #0xA2C
2ECBA2:  ADDS            R0, R6, #1
2ECBA4:  BNE             loc_2ECB00
2ECBA6:  LDR             R4, [SP,#0x38+var_30]
2ECBA8:  CBZ             R4, loc_2ECBC8
2ECBAA:  MOV             R0, R4; this
2ECBAC:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
2ECBB0:  LDR             R0, [R4]
2ECBB2:  LDR             R1, [R0,#4]
2ECBB4:  MOV             R0, R4
2ECBB6:  ADD             SP, SP, #0x10
2ECBB8:  VPOP            {D8}
2ECBBC:  ADD             SP, SP, #4
2ECBBE:  POP.W           {R8-R11}
2ECBC2:  POP.W           {R4-R7,LR}
2ECBC6:  BX              R1
2ECBC8:  ADD             SP, SP, #0x10
2ECBCA:  VPOP            {D8}
2ECBCE:  ADD             SP, SP, #4
2ECBD0:  POP.W           {R8-R11}
2ECBD4:  POP             {R4-R7,PC}
