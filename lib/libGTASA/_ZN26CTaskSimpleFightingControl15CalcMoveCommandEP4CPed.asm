; =========================================================
; Game Engine Function: _ZN26CTaskSimpleFightingControl15CalcMoveCommandEP4CPed
; Address            : 0x4DBA28 - 0x4DBC56
; =========================================================

4DBA28:  PUSH            {R4-R7,LR}
4DBA2A:  ADD             R7, SP, #0xC
4DBA2C:  PUSH.W          {R8-R11}
4DBA30:  SUB             SP, SP, #4
4DBA32:  VPUSH           {D8-D11}
4DBA36:  SUB             SP, SP, #0x40; float *
4DBA38:  MOV             R4, R0
4DBA3A:  MOV             R5, R1
4DBA3C:  LDR             R6, [R4,#0xC]
4DBA3E:  MOVW            R10, #0xFFFF
4DBA42:  CMP             R6, #0
4DBA44:  BEQ.W           loc_4DBBF0
4DBA48:  LDR             R0, [R5,#0x14]
4DBA4A:  ADD.W           R11, R5, #4
4DBA4E:  LDR             R1, [R6,#0x14]
4DBA50:  CMP             R0, #0
4DBA52:  MOV             R2, R11
4DBA54:  IT NE
4DBA56:  ADDNE.W         R2, R0, #0x30 ; '0'
4DBA5A:  ADD.W           R0, R1, #0x30 ; '0'
4DBA5E:  CMP             R1, #0
4DBA60:  VLDR            S0, [R2]
4DBA64:  VLDR            S2, [R2,#4]
4DBA68:  VLDR            S16, [R2,#8]
4DBA6C:  IT EQ
4DBA6E:  ADDEQ           R0, R6, #4
4DBA70:  VLDR            S4, [R0]
4DBA74:  VLDR            S6, [R0,#4]
4DBA78:  VSUB.F32        S22, S4, S0
4DBA7C:  VLDR            S18, [R0,#8]
4DBA80:  VSUB.F32        S20, S6, S2
4DBA84:  VMOV            R0, S22
4DBA88:  VMOV            R1, S20; x
4DBA8C:  EOR.W           R0, R0, #0x80000000; y
4DBA90:  BLX             atan2f
4DBA94:  ADDW            R1, R5, #0x55C
4DBA98:  VMOV            S0, R0
4DBA9C:  VLDR            S2, [R1]
4DBAA0:  VSUB.F32        S0, S0, S2
4DBAA4:  VLDR            S2, =3.1416
4DBAA8:  VCMPE.F32       S0, S2
4DBAAC:  VMRS            APSR_nzcv, FPSCR
4DBAB0:  BLE             loc_4DBAB8
4DBAB2:  VLDR            S2, =-6.2832
4DBAB6:  B               loc_4DBACA
4DBAB8:  VLDR            S2, =-3.1416
4DBABC:  VCMPE.F32       S0, S2
4DBAC0:  VMRS            APSR_nzcv, FPSCR
4DBAC4:  BGE             loc_4DBACE
4DBAC6:  VLDR            S2, =6.2832
4DBACA:  VADD.F32        S0, S0, S2
4DBACE:  LDR             R0, =(FIGHTING_MAX_HEADING_DIFF_ptr - 0x4DBAD8)
4DBAD0:  VABS.F32        S0, S0
4DBAD4:  ADD             R0, PC; FIGHTING_MAX_HEADING_DIFF_ptr
4DBAD6:  LDR             R0, [R0]; FIGHTING_MAX_HEADING_DIFF
4DBAD8:  VLDR            S2, [R0]
4DBADC:  VCMPE.F32       S0, S2
4DBAE0:  VMRS            APSR_nzcv, FPSCR
4DBAE4:  BLE             loc_4DBB14
4DBAE6:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x4DBAF4)
4DBAE8:  MOV.W           R10, #0
4DBAEC:  VLDR            S0, =50.0
4DBAF0:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
4DBAF2:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
4DBAF4:  VLDR            S2, [R0]
4DBAF8:  LDR             R0, [R4,#0x1C]
4DBAFA:  VDIV.F32        S0, S2, S0
4DBAFE:  VLDR            S2, =1000.0
4DBB02:  VMUL.F32        S0, S0, S2
4DBB06:  VCVT.U32.F32    S0, S0
4DBB0A:  VMOV            R1, S0
4DBB0E:  ADD             R0, R1
4DBB10:  STR             R0, [R4,#0x1C]
4DBB12:  B               loc_4DBBF0
4DBB14:  LDRB.W          R0, [R6,#0x3A]
4DBB18:  AND.W           R0, R0, #7
4DBB1C:  CMP             R0, #2
4DBB1E:  BEQ             loc_4DBB60
4DBB20:  VSUB.F32        S0, S18, S16
4DBB24:  CMP             R0, #3
4DBB26:  VMUL.F32        S2, S20, S20
4DBB2A:  VMUL.F32        S4, S22, S22
4DBB2E:  VMUL.F32        S0, S0, S0
4DBB32:  VADD.F32        S2, S4, S2
4DBB36:  VADD.F32        S0, S2, S0
4DBB3A:  VSQRT.F32       S16, S0
4DBB3E:  BNE             loc_4DBBD6
4DBB40:  BLX             rand
4DBB44:  VLDR            S0, [R4,#0x14]
4DBB48:  VLDR            S2, =0.1
4DBB4C:  VSUB.F32        S0, S16, S0
4DBB50:  VCMPE.F32       S0, S2
4DBB54:  VMRS            APSR_nzcv, FPSCR
4DBB58:  BLE             loc_4DBC02
4DBB5A:  MOV.W           R10, #3
4DBB5E:  B               loc_4DBBF0
4DBB60:  VMOV            R0, S18; this
4DBB64:  ADD.W           R9, SP, #0x80+var_70
4DBB68:  MOV             R8, SP
4DBB6A:  MOV             R1, R6; float
4DBB6C:  MOV             R2, R9; CEntity *
4DBB6E:  MOV             R3, R8; CVector *
4DBB70:  BLX             j__ZN20CPedGeometryAnalyser30ComputeEntityBoundingBoxPlanesEfR7CEntityP7CVectorPf; CPedGeometryAnalyser::ComputeEntityBoundingBoxPlanes(float,CEntity &,CVector *,float *)
4DBB74:  LDR             R2, [R5,#0x14]; CEntity *
4DBB76:  MOV             R0, R11
4DBB78:  LDR             R1, [R4,#0xC]; CVector *
4DBB7A:  CMP             R2, #0
4DBB7C:  IT NE
4DBB7E:  ADDNE.W         R0, R2, #0x30 ; '0'; this
4DBB82:  BLX             j__ZN20CPedGeometryAnalyser20ComputeEntityHitSideERK7CVectorR7CEntity; CPedGeometryAnalyser::ComputeEntityHitSide(CVector const&,CEntity &)
4DBB86:  ADD.W           R2, R0, R0,LSL#1
4DBB8A:  LDR             R1, [R5,#0x14]
4DBB8C:  ADD.W           R0, R8, R0,LSL#2
4DBB90:  ADD.W           R2, R9, R2,LSL#2
4DBB94:  CMP             R1, #0
4DBB96:  VLDR            S0, [R2]
4DBB9A:  VLDR            S2, [R2,#4]
4DBB9E:  VLDR            S4, [R2,#8]
4DBBA2:  IT NE
4DBBA4:  ADDNE.W         R11, R1, #0x30 ; '0'
4DBBA8:  VLDR            S6, [R11]
4DBBAC:  VLDR            S8, [R11,#4]
4DBBB0:  VMUL.F32        S0, S6, S0
4DBBB4:  VLDR            S10, [R11,#8]
4DBBB8:  VMUL.F32        S2, S8, S2
4DBBBC:  VMUL.F32        S4, S10, S4
4DBBC0:  VADD.F32        S0, S0, S2
4DBBC4:  VLDR            S2, [R0]
4DBBC8:  VADD.F32        S0, S0, S4
4DBBCC:  VADD.F32        S0, S2, S0
4DBBD0:  VLDR            S2, =0.7
4DBBD4:  B               loc_4DBBE2
4DBBD6:  VLDR            S0, [R4,#0x14]
4DBBDA:  VLDR            S2, =0.3
4DBBDE:  VSUB.F32        S0, S16, S0
4DBBE2:  VCMPE.F32       S0, S2
4DBBE6:  VMRS            APSR_nzcv, FPSCR
4DBBEA:  IT GT
4DBBEC:  MOVGT.W         R10, #3
4DBBF0:  SXTH.W          R0, R10
4DBBF4:  ADD             SP, SP, #0x40 ; '@'
4DBBF6:  VPOP            {D8-D11}
4DBBFA:  ADD             SP, SP, #4
4DBBFC:  POP.W           {R8-R11}
4DBC00:  POP             {R4-R7,PC}
4DBC02:  VLDR            S2, =-0.1
4DBC06:  AND.W           R0, R0, #0xF
4DBC0A:  VCMPE.F32       S0, S2
4DBC0E:  VMRS            APSR_nzcv, FPSCR
4DBC12:  BLE             loc_4DBC1E
4DBC14:  CMP             R0, #0
4DBC16:  IT EQ
4DBC18:  MOVEQ.W         R10, #7
4DBC1C:  B               loc_4DBBF0
4DBC1E:  VLDR            S0, =0.8
4DBC22:  VCMPE.F32       S16, S0
4DBC26:  VMRS            APSR_nzcv, FPSCR
4DBC2A:  BGE             loc_4DBC36
4DBC2C:  CMP             R0, #0
4DBC2E:  IT EQ
4DBC30:  MOVEQ.W         R10, #9
4DBC34:  B               loc_4DBBF0
4DBC36:  BLX             rand
4DBC3A:  TST.W           R0, #0x3F
4DBC3E:  BEQ             loc_4DBC50
4DBC40:  BLX             rand
4DBC44:  TST.W           R0, #0x3F
4DBC48:  IT EQ
4DBC4A:  MOVEQ.W         R10, #0xA
4DBC4E:  B               loc_4DBBF0
4DBC50:  MOV.W           R10, #8
4DBC54:  B               loc_4DBBF0
