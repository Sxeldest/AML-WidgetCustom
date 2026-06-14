; =========================================================
; Game Engine Function: _ZN19CTaskSimpleCarDrive14ProcessBoppingEP4CPedh
; Address            : 0x4FAB5C - 0x4FAC84
; =========================================================

4FAB5C:  PUSH            {R4-R7,LR}
4FAB5E:  ADD             R7, SP, #0xC
4FAB60:  PUSH.W          {R8,R9,R11}
4FAB64:  MOV             R6, R1
4FAB66:  MOV             R9, R0
4FAB68:  LDR.W           R0, [R6,#0x590]
4FAB6C:  MOV             R5, R2
4FAB6E:  LDR.W           R4, [R0,#0x464]
4FAB72:  MOVS            R0, #0; int
4FAB74:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
4FAB78:  CMP             R4, R0
4FAB7A:  ITT NE
4FAB7C:  LDRNE.W         R0, [R6,#0x59C]
4FAB80:  CMPNE           R0, #6
4FAB82:  BEQ             loc_4FAC7E
4FAB84:  LDR.W           R0, [R6,#0x440]
4FAB88:  MOV.W           R1, #0x338; int
4FAB8C:  ADDS            R0, #4; this
4FAB8E:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
4FAB92:  CMP             R0, #0
4FAB94:  BNE             loc_4FAC7E
4FAB96:  LDR.W           R0, [R6,#0x590]
4FAB9A:  LDR.W           R1, [R0,#0x5A0]
4FAB9E:  CMP             R1, #0
4FABA0:  BNE             loc_4FAC7E
4FABA2:  LDR.W           R0, [R0,#0x5A4]
4FABA6:  CMP             R0, #2
4FABA8:  ITT NE
4FABAA:  LDRBNE.W        R0, [R6,#0x448]
4FABAE:  CMPNE           R0, #2
4FABB0:  BEQ             loc_4FAC7E
4FABB2:  LDR.W           R0, [R9,#0x20]
4FABB6:  ADDS            R1, R0, #1
4FABB8:  BEQ             loc_4FABF4
4FABBA:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4FABC4)
4FABBC:  LDR.W           R8, [R9,#0x28]
4FABC0:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4FABC2:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
4FABC4:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
4FABC6:  SUBS            R0, R1, R0
4FABC8:  MOV             R1, R8
4FABCA:  BLX             __aeabi_idivmod
4FABCE:  VMOV            S0, R8
4FABD2:  VMOV            S2, R1
4FABD6:  ADD.W           R1, R0, R0,LSR#31
4FABDA:  VCVT.F32.S32    S0, S0
4FABDE:  BIC.W           R1, R1, #1
4FABE2:  VCVT.F32.S32    S2, S2
4FABE6:  SUBS            R0, R0, R1
4FABE8:  STR.W           R0, [R9,#0x30]
4FABEC:  VDIV.F32        S0, S2, S0
4FABF0:  VSTR            S0, [R9,#0x2C]
4FABF4:  LDR             R0, =(TheCamera_ptr - 0x4FABFC)
4FABF6:  LDR             R1, [R6,#0x14]
4FABF8:  ADD             R0, PC; TheCamera_ptr
4FABFA:  ADD.W           R2, R1, #0x30 ; '0'
4FABFE:  CMP             R1, #0
4FAC00:  LDR             R0, [R0]; TheCamera
4FAC02:  LDR             R3, [R0,#(dword_951FBC - 0x951FA8)]
4FAC04:  IT EQ
4FAC06:  ADDEQ           R2, R6, #4
4FAC08:  VLDR            S0, [R2]
4FAC0C:  ADD.W           R1, R3, #0x30 ; '0'
4FAC10:  CMP             R3, #0
4FAC12:  VLDR            S2, [R2,#4]
4FAC16:  VLDR            S4, [R2,#8]
4FAC1A:  IT EQ
4FAC1C:  ADDEQ           R1, R0, #4
4FAC1E:  VLDR            S6, [R1]
4FAC22:  MOV             R0, R9; this
4FAC24:  VLDR            S8, [R1,#4]
4FAC28:  MOV             R2, R5; unsigned __int8
4FAC2A:  VSUB.F32        S0, S0, S6
4FAC2E:  VLDR            S10, [R1,#8]
4FAC32:  VSUB.F32        S2, S2, S8
4FAC36:  MOV             R1, R6; CPed *
4FAC38:  VSUB.F32        S4, S4, S10
4FAC3C:  VMUL.F32        S0, S0, S0
4FAC40:  VMUL.F32        S2, S2, S2
4FAC44:  VMUL.F32        S4, S4, S4
4FAC48:  VADD.F32        S0, S0, S2
4FAC4C:  VADD.F32        S0, S0, S4
4FAC50:  VMOV            R8, S0
4FAC54:  MOV             R3, R8; float
4FAC56:  BLX             j__ZN19CTaskSimpleCarDrive18ProcessHeadBoppingEP4CPedhf; CTaskSimpleCarDrive::ProcessHeadBopping(CPed *,uchar,float)
4FAC5A:  MOV             R0, R9; this
4FAC5C:  MOV             R1, R6; CPed *
4FAC5E:  MOV             R2, R5; unsigned __int8
4FAC60:  MOV             R3, R8; float
4FAC62:  BLX             j__ZN19CTaskSimpleCarDrive17ProcessArmBoppingEP4CPedhf; CTaskSimpleCarDrive::ProcessArmBopping(CPed *,uchar,float)
4FAC66:  LDR.W           R0, [R9,#0x20]
4FAC6A:  ADDS            R0, #1
4FAC6C:  BEQ             loc_4FAC7E
4FAC6E:  LDRB.W          R0, [R9,#0x5C]
4FAC72:  LSLS            R0, R0, #0x1E
4FAC74:  ITT EQ
4FAC76:  MOVEQ.W         R0, #0xFFFFFFFF
4FAC7A:  STREQ.W         R0, [R9,#0x20]
4FAC7E:  POP.W           {R8,R9,R11}
4FAC82:  POP             {R4-R7,PC}
