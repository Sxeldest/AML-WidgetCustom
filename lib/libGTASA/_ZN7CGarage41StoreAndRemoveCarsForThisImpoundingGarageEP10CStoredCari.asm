; =========================================================
; Game Engine Function: _ZN7CGarage41StoreAndRemoveCarsForThisImpoundingGarageEP10CStoredCari
; Address            : 0x312B2C - 0x312CD6
; =========================================================

312B2C:  PUSH            {R4-R7,LR}
312B2E:  ADD             R7, SP, #0xC
312B30:  PUSH.W          {R8-R11}
312B34:  SUB             SP, SP, #0x14
312B36:  MOV             R6, R0
312B38:  LDR             R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x312B42)
312B3A:  MOV.W           R10, #0
312B3E:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
312B40:  STRH.W          R10, [R1,#0x52]
312B44:  STRH.W          R10, [R1,#0x12]
312B48:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
312B4A:  STRH.W          R10, [R1,#0x92]
312B4E:  STRH.W          R10, [R1,#0xD2]
312B52:  LDR             R4, [R0]; CPools::ms_pVehiclePool
312B54:  LDR             R0, [R4,#8]
312B56:  CMP             R0, #0
312B58:  BEQ.W           loc_312CB6
312B5C:  MOVW            R3, #0xA2C
312B60:  SUB.W           R11, R0, #1
312B64:  MULS            R3, R0
312B66:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x312B6E)
312B68:  CMP             R2, #4
312B6A:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
312B6C:  IT GE
312B6E:  MOVGE           R2, #4
312B70:  MOV.W           R12, #0
312B74:  LDR.W           LR, [R0]; CWorld::PlayerInFocus ...
312B78:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x312B82)
312B7A:  SUBW            R8, R3, #0xA2C
312B7E:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
312B80:  LDR             R0, [R0]; CWorld::Players ...
312B82:  STR             R0, [SP,#0x30+var_20]
312B84:  LDR             R0, [R4,#4]
312B86:  LDRSB.W         R0, [R0,R11]
312B8A:  CMP             R0, #0
312B8C:  BLT.W           loc_312C9E
312B90:  LDR.W           R9, [R4]
312B94:  ADDS.W          R5, R9, R8
312B98:  BEQ.W           loc_312C9E
312B9C:  LDR             R3, [R5,#0x14]
312B9E:  VLDR            S2, [R6,#8]
312BA2:  ADD.W           R0, R3, #0x30 ; '0'
312BA6:  CMP             R3, #0
312BA8:  IT EQ
312BAA:  ADDEQ           R0, R5, #4
312BAC:  VLDR            S0, [R0,#8]
312BB0:  VCMPE.F32       S2, S0
312BB4:  VMRS            APSR_nzcv, FPSCR
312BB8:  BGT             loc_312C9E
312BBA:  VLDR            S2, [R6,#0x1C]
312BBE:  VCMPE.F32       S2, S0
312BC2:  VMRS            APSR_nzcv, FPSCR
312BC6:  BLT             loc_312C9E
312BC8:  VLDR            S0, [R0]
312BCC:  VLDR            S4, [R6]
312BD0:  VLDR            S2, [R0,#4]
312BD4:  VLDR            S6, [R6,#4]
312BD8:  VSUB.F32        S0, S0, S4
312BDC:  VLDR            S8, [R6,#0xC]
312BE0:  VSUB.F32        S2, S2, S6
312BE4:  VLDR            S10, [R6,#0x10]
312BE8:  VMUL.F32        S6, S0, S8
312BEC:  VMUL.F32        S4, S2, S10
312BF0:  VADD.F32        S4, S6, S4
312BF4:  VCMPE.F32       S4, #0.0
312BF8:  VMRS            APSR_nzcv, FPSCR
312BFC:  BLT             loc_312C9E
312BFE:  VLDR            S6, [R6,#0x20]
312C02:  VCMPE.F32       S4, S6
312C06:  VMRS            APSR_nzcv, FPSCR
312C0A:  BGT             loc_312C9E
312C0C:  VLDR            S4, [R6,#0x14]
312C10:  VLDR            S6, [R6,#0x18]
312C14:  VMUL.F32        S0, S0, S4
312C18:  VMUL.F32        S2, S2, S6
312C1C:  VADD.F32        S0, S0, S2
312C20:  VCMPE.F32       S0, #0.0
312C24:  VMRS            APSR_nzcv, FPSCR
312C28:  BLT             loc_312C9E
312C2A:  VLDR            S2, [R6,#0x24]
312C2E:  VCMPE.F32       S0, S2
312C32:  VMRS            APSR_nzcv, FPSCR
312C36:  BGT             loc_312C9E
312C38:  LDRB.W          R0, [R5,#0x4A8]
312C3C:  CMP             R0, #2
312C3E:  BEQ             loc_312C9E
312C40:  CMP             R12, R2
312C42:  STRD.W          R2, R1, [SP,#0x30+var_30]
312C46:  STRD.W          LR, R12, [SP,#0x30+var_28]
312C4A:  BGE             loc_312C72
312C4C:  MOV             R0, R6; this
312C4E:  MOV             R1, R5; CEntity *
312C50:  MOV.W           R2, #0x3F800000; float
312C54:  BLX             j__ZN7CGarage32EntityHasASphereWayOutsideGarageEP7CEntityf; CGarage::EntityHasASphereWayOutsideGarage(CEntity *,float)
312C58:  CBNZ            R0, loc_312C6E
312C5A:  LDR             R1, [SP,#0x30+var_24]
312C5C:  LDR             R0, [SP,#0x30+var_2C]
312C5E:  ADD.W           R0, R0, R1,LSL#6; this
312C62:  MOV             R1, R5; CVehicle *
312C64:  BLX             j__ZN10CStoredCar8StoreCarEP8CVehicle; CStoredCar::StoreCar(CVehicle *)
312C68:  LDR             R0, [SP,#0x30+var_24]
312C6A:  ADDS            R0, #1
312C6C:  STR             R0, [SP,#0x30+var_24]
312C6E:  LDR.W           LR, [SP,#0x30+var_28]
312C72:  LDR.W           R0, [LR]; CWorld::PlayerInFocus
312C76:  MOV.W           R2, #0x194
312C7A:  LDR             R1, [SP,#0x30+var_20]
312C7C:  SMLABB.W        R0, R0, R2, R1; this
312C80:  MOV             R1, R5; CVehicle *
312C82:  BLX             j__ZN11CPlayerInfo24CancelPlayerEnteringCarsEP8CVehicle; CPlayerInfo::CancelPlayerEnteringCars(CVehicle *)
312C86:  MOV             R0, R5; this
312C88:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
312C8C:  LDR.W           R0, [R9,R8]
312C90:  LDR             R1, [R0,#4]
312C92:  MOV             R0, R5
312C94:  BLX             R1
312C96:  LDRD.W          R2, R1, [SP,#0x30+var_30]
312C9A:  LDRD.W          LR, R12, [SP,#0x30+var_28]
312C9E:  SUB.W           R11, R11, #1
312CA2:  SUBW            R8, R8, #0xA2C
312CA6:  ADDS.W          R0, R11, #1
312CAA:  BNE.W           loc_312B84
312CAE:  CMP.W           R12, #4
312CB2:  BLT             loc_312CBA
312CB4:  B               loc_312CCE
312CB6:  MOV.W           R12, #0
312CBA:  ADD.W           R0, R1, R12,LSL#6
312CBE:  SUB.W           R1, R12, #1
312CC2:  ADDS            R0, #0x12
312CC4:  ADDS            R1, #1
312CC6:  STRH.W          R10, [R0],#0x40
312CCA:  CMP             R1, #3
312CCC:  BLT             loc_312CC4
312CCE:  ADD             SP, SP, #0x14
312CD0:  POP.W           {R8-R11}
312CD4:  POP             {R4-R7,PC}
