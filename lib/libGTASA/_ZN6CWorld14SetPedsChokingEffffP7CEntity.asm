; =========================================================
; Game Engine Function: _ZN6CWorld14SetPedsChokingEffffP7CEntity
; Address            : 0x42AB70 - 0x42AC9E
; =========================================================

42AB70:  PUSH            {R4-R7,LR}
42AB72:  ADD             R7, SP, #0xC
42AB74:  PUSH.W          {R8-R11}
42AB78:  SUB             SP, SP, #4
42AB7A:  VPUSH           {D8-D12}
42AB7E:  SUB             SP, SP, #0x18
42AB80:  LDR             R6, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x42AB86)
42AB82:  ADD             R6, PC; _ZN6CPools11ms_pPedPoolE_ptr
42AB84:  LDR             R6, [R6]; CPools::ms_pPedPool ...
42AB86:  LDR             R6, [R6]; CPools::ms_pPedPool
42AB88:  LDR             R5, [R6,#8]
42AB8A:  CMP             R5, #0
42AB8C:  BEQ.W           loc_42AC90
42AB90:  VMOV            S22, R0
42AB94:  MOVW            R0, #0x7CC
42AB98:  MULS            R0, R5
42AB9A:  VMOV.F32        S24, #5.0
42AB9E:  MOVW            R11, #0xF838
42ABA2:  MOVW            R8, #0xFBFE
42ABA6:  MOVW            R9, #0xFBCC
42ABAA:  VMOV            S16, R3
42ABAE:  SUBS            R5, #1
42ABB0:  VMOV            S18, R2
42ABB4:  ADD.W           R10, SP, #0x60+var_50
42ABB8:  VMOV            S20, R1
42ABBC:  SUB.W           R4, R0, #0x384
42ABC0:  MOVT            R11, #0xFFFF
42ABC4:  MOVT            R8, #0xFFFF
42ABC8:  MOVT            R9, #0xFFFF
42ABCC:  B               loc_42AC5E
42ABCE:  LDRB.W          R2, [R0,R8]
42ABD2:  LSLS            R2, R2, #0x1C
42ABD4:  BMI             loc_42AC86
42ABD6:  LDRB            R2, [R1,R4]
42ABD8:  CMP             R2, #2
42ABDA:  BEQ             loc_42AC86
42ABDC:  LDR.W           R3, [R0,R9]
42ABE0:  ADD             R1, R11
42ABE2:  ADD             R1, R4
42ABE4:  ADD.W           R2, R3, #0x30 ; '0'
42ABE8:  CMP             R3, #0
42ABEA:  IT EQ
42ABEC:  ADDEQ.W         R2, R1, #0x384
42ABF0:  VLDR            S0, [R2,#8]
42ABF4:  VSUB.F32        S0, S0, S18
42ABF8:  VABS.F32        S0, S0
42ABFC:  VCMPE.F32       S0, S24
42AC00:  VMRS            APSR_nzcv, FPSCR
42AC04:  BGE             loc_42AC86
42AC06:  VLDR            S0, [R2]
42AC0A:  VSUB.F32        S0, S0, S22
42AC0E:  VABS.F32        S2, S0
42AC12:  VCMPE.F32       S2, S16
42AC16:  VMRS            APSR_nzcv, FPSCR
42AC1A:  BGE             loc_42AC86
42AC1C:  VLDR            S2, [R2,#4]
42AC20:  VSUB.F32        S2, S2, S20
42AC24:  VABS.F32        S4, S2
42AC28:  VCMPE.F32       S4, S16
42AC2C:  VMRS            APSR_nzcv, FPSCR
42AC30:  BGE             loc_42AC86
42AC32:  SUB.W           R0, R0, #0x7C8
42AC36:  MOV             R1, R10
42AC38:  ADD.W           R0, R0, #0x380
42AC3C:  VSTR            S2, [SP,#0x60+var_4C]
42AC40:  STR             R0, [SP,#0x60+var_54]
42AC42:  VSTR            S0, [SP,#0x60+var_50]
42AC46:  BLX             j__ZN4CPed17GetLocalDirectionERK9CVector2D; CPed::GetLocalDirection(CVector2D const&)
42AC4A:  MOVS            R1, #3
42AC4C:  MOVS            R2, #0x11
42AC4E:  STRD.W          R1, R0, [SP,#0x60+var_60]
42AC52:  MOVS            R3, #1
42AC54:  LDR             R0, [SP,#0x60+var_54]
42AC56:  LDR             R1, [R7,#arg_0]
42AC58:  BLX             j__ZN7CWeapon19GenerateDamageEventEP4CPedP7CEntity11eWeaponTypei14ePedPieceTypesi; CWeapon::GenerateDamageEvent(CPed *,CEntity *,eWeaponType,int,ePedPieceTypes,int)
42AC5C:  B               loc_42AC86
42AC5E:  LDR             R0, [R6,#4]
42AC60:  LDRSB           R0, [R0,R5]
42AC62:  CMP             R0, #0
42AC64:  BLT             loc_42AC86
42AC66:  LDR             R1, [R6]
42AC68:  ADDS            R0, R1, R4
42AC6A:  CMP.W           R0, #0x448
42AC6E:  ITT NE
42AC70:  LDRNE           R2, [R0,#4]
42AC72:  CMPNE           R2, #0x37 ; '7'
42AC74:  BEQ             loc_42AC86
42AC76:  LDRB.W          R2, [R0,#0x3D]
42AC7A:  LSLS            R2, R2, #0x1F
42AC7C:  ITT EQ
42AC7E:  LDREQ.W         R2, [R0,#0x2F0]
42AC82:  CMPEQ           R2, #0
42AC84:  BEQ             loc_42ABCE
42AC86:  SUBS            R5, #1
42AC88:  SUBW            R4, R4, #0x7CC
42AC8C:  ADDS            R0, R5, #1
42AC8E:  BNE             loc_42AC5E
42AC90:  ADD             SP, SP, #0x18
42AC92:  VPOP            {D8-D12}
42AC96:  ADD             SP, SP, #4
42AC98:  POP.W           {R8-R11}
42AC9C:  POP             {R4-R7,PC}
