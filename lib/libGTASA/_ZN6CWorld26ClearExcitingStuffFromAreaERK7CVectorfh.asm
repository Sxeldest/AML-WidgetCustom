; =========================================================
; Game Engine Function: _ZN6CWorld26ClearExcitingStuffFromAreaERK7CVectorfh
; Address            : 0x42BDA8 - 0x42C0BA
; =========================================================

42BDA8:  PUSH            {R4-R7,LR}
42BDAA:  ADD             R7, SP, #0xC
42BDAC:  PUSH.W          {R8-R11}
42BDB0:  SUB             SP, SP, #4
42BDB2:  VPUSH           {D8-D11}
42BDB6:  SUB             SP, SP, #0x18
42BDB8:  MOV             R10, R0
42BDBA:  LDR             R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x42BDC8)
42BDBC:  STR             R2, [SP,#0x58+var_54]
42BDBE:  VMOV            S16, R1
42BDC2:  LDR             R2, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x42BDCA)
42BDC4:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
42BDC6:  ADD             R2, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
42BDC8:  LDR             R0, [R0]; CPools::ms_pPedPool ...
42BDCA:  LDR             R2, [R2]; CPools::ms_pVehiclePool ...
42BDCC:  LDR.W           R9, [R0]; CPools::ms_pPedPool
42BDD0:  LDR             R0, [R2]; CPools::ms_pVehiclePool
42BDD2:  STR             R0, [SP,#0x58+var_44]
42BDD4:  STR             R1, [SP,#0x58+var_50]
42BDD6:  LDR.W           R8, [R9,#8]
42BDDA:  CMP.W           R8, #1
42BDDE:  BLT             loc_42BE5C
42BDE0:  VMUL.F32        S18, S16, S16
42BDE4:  MOVS            R5, #0
42BDE6:  MOVS            R4, #0
42BDE8:  LDR.W           R0, [R9,#4]
42BDEC:  LDRSB           R0, [R0,R4]
42BDEE:  CMP             R0, #0
42BDF0:  BLT             loc_42BE52
42BDF2:  LDR.W           R0, [R9]
42BDF6:  ADDS            R6, R0, R5
42BDF8:  BEQ             loc_42BE52
42BDFA:  MOV             R0, R6; this
42BDFC:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
42BE00:  CBNZ            R0, loc_42BE52
42BE02:  MOV             R0, R6; this
42BE04:  BLX             j__ZN4CPed12CanBeDeletedEv; CPed::CanBeDeleted(void)
42BE08:  CBZ             R0, loc_42BE52
42BE0A:  LDR             R0, [R6,#0x14]
42BE0C:  VLDR            D16, [R10]
42BE10:  ADD.W           R1, R0, #0x30 ; '0'
42BE14:  CMP             R0, #0
42BE16:  IT EQ
42BE18:  ADDEQ           R1, R6, #4
42BE1A:  VLDR            D17, [R1]
42BE1E:  VSUB.F32        D16, D17, D16
42BE22:  VMUL.F32        D0, D16, D16
42BE26:  VADD.F32        S0, S0, S1
42BE2A:  VCMPE.F32       S0, S18
42BE2E:  VMRS            APSR_nzcv, FPSCR
42BE32:  BGE             loc_42BE52
42BE34:  MOV.W           R0, #0xFFFFFFFF; int
42BE38:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
42BE3C:  BLX             j__ZN10CPedGroups12GetPedsGroupEPK4CPed; CPedGroups::GetPedsGroup(CPed const*)
42BE40:  CBZ             R0, loc_42BE4C
42BE42:  ADDS            R0, #8; this
42BE44:  MOV             R1, R6; CPed *
42BE46:  BLX             j__ZNK19CPedGroupMembership10IsFollowerEPK4CPed; CPedGroupMembership::IsFollower(CPed const*)
42BE4A:  CBNZ            R0, loc_42BE52
42BE4C:  MOV             R0, R6; this
42BE4E:  BLX             j__ZN11CPopulation9RemovePedEP4CPed; CPopulation::RemovePed(CPed *)
42BE52:  ADDS            R4, #1
42BE54:  ADDW            R5, R5, #0x7CC
42BE58:  CMP             R8, R4
42BE5A:  BNE             loc_42BDE8
42BE5C:  STR.W           R10, [SP,#0x58+var_4C]
42BE60:  LDR             R0, [SP,#0x58+var_44]
42BE62:  LDR             R1, [R0,#8]
42BE64:  CMP             R1, #1
42BE66:  MOV             R0, R1
42BE68:  STR             R0, [SP,#0x58+var_48]
42BE6A:  BLT.W           loc_42BFE4
42BE6E:  VMUL.F32        S18, S16, S16
42BE72:  MOV.W           R9, #0
42BE76:  LDR             R0, [SP,#0x58+var_44]
42BE78:  LDR             R0, [R0,#4]
42BE7A:  LDRSB.W         R0, [R0,R9]
42BE7E:  CMP             R0, #0
42BE80:  BLT.W           loc_42BFD8
42BE84:  LDR             R0, [SP,#0x58+var_44]
42BE86:  MOVW            R1, #0xA2C
42BE8A:  LDR             R0, [R0]
42BE8C:  MLA.W           R6, R9, R1, R0
42BE90:  CMP             R6, #0
42BE92:  BEQ.W           loc_42BFD8
42BE96:  MOV.W           R0, #0xFFFFFFFF; int
42BE9A:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
42BE9E:  BLX             j__ZN10CPedGroups12GetPedsGroupEPK4CPed; CPedGroups::GetPedsGroup(CPed const*)
42BEA2:  MOV             R4, R0
42BEA4:  LDRB.W          R0, [R6,#0x48C]
42BEA8:  ADDW            R10, R6, #0x48C
42BEAC:  CBZ             R0, loc_42BEE0
42BEAE:  ADD.W           R8, R6, #0x468
42BEB2:  ADD.W           R5, R4, #8
42BEB6:  MOV.W           R11, #0
42BEBA:  CMP             R4, #0
42BEBC:  ITT NE
42BEBE:  LDRNE.W         R1, [R8,R11,LSL#2]; CPed *
42BEC2:  CMPNE           R1, #0
42BEC4:  BEQ             loc_42BED6
42BEC6:  MOV             R0, R5; this
42BEC8:  BLX             j__ZNK19CPedGroupMembership10IsFollowerEPK4CPed; CPedGroupMembership::IsFollower(CPed const*)
42BECC:  CMP             R0, #0
42BECE:  BNE.W           loc_42BFD8
42BED2:  LDRB.W          R0, [R10]
42BED6:  ADD.W           R11, R11, #1
42BEDA:  UXTB            R1, R0
42BEDC:  CMP             R11, R1
42BEDE:  BLT             loc_42BEBA
42BEE0:  MOV.W           R0, #0xFFFFFFFF; int
42BEE4:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
42BEE8:  LDR.W           R0, [R0,#0x588]
42BEEC:  CMP             R0, R6
42BEEE:  ITT EQ
42BEF0:  LDREQ.W         R0, [R6,#0x5A0]
42BEF4:  CMPEQ           R0, #5
42BEF6:  BEQ             loc_42BFD8
42BEF8:  MOV             R5, R6
42BEFA:  LDR             R1, [SP,#0x58+var_4C]
42BEFC:  LDR.W           R0, [R5,#0x14]!
42BF00:  SUB.W           R4, R5, #0x10
42BF04:  VLDR            D16, [R1]
42BF08:  CMP             R0, #0
42BF0A:  MOV             R1, R4
42BF0C:  IT NE
42BF0E:  ADDNE.W         R1, R0, #0x30 ; '0'
42BF12:  VLDR            D17, [R1]
42BF16:  VSUB.F32        D16, D17, D16
42BF1A:  VMUL.F32        D0, D16, D16
42BF1E:  VADD.F32        S0, S0, S1
42BF22:  VCMPE.F32       S0, S18
42BF26:  VMRS            APSR_nzcv, FPSCR
42BF2A:  BGE             loc_42BFD8
42BF2C:  LDRB.W          R0, [R6,#0x42C]
42BF30:  LSLS            R0, R0, #0x1C
42BF32:  BMI             loc_42BFD8
42BF34:  MOV             R0, R6; this
42BF36:  BLX             j__ZNK8CVehicle12CanBeDeletedEv; CVehicle::CanBeDeleted(void)
42BF3A:  CMP             R0, #0
42BF3C:  BEQ             loc_42BFD8
42BF3E:  LDR             R0, [R5]
42BF40:  CMP             R0, #0
42BF42:  IT NE
42BF44:  ADDNE.W         R4, R0, #0x30 ; '0'
42BF48:  MOV             R0, R4; this
42BF4A:  BLX             j__ZN8CGarages26IsPointWithinHideOutGarageER7CVector; CGarages::IsPointWithinHideOutGarage(CVector &)
42BF4E:  CMP             R0, #0
42BF50:  BNE             loc_42BFD8
42BF52:  LDR.W           R0, [R6,#0x464]; this
42BF56:  CBZ             R0, loc_42BF70
42BF58:  ADDW            R4, R6, #0x464
42BF5C:  BLX             j__ZN11CPopulation9RemovePedEP4CPed; CPopulation::RemovePed(CPed *)
42BF60:  LDR             R0, [R4]; this
42BF62:  CMP             R0, #0
42BF64:  ITT NE
42BF66:  MOVNE           R1, R4; CEntity **
42BF68:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
42BF6C:  MOVS            R0, #0
42BF6E:  STR             R0, [R4]
42BF70:  LDRB.W          R0, [R10]
42BF74:  CBZ             R0, loc_42BF9C
42BF76:  ADD.W           R8, R6, #0x468
42BF7A:  MOVS            R5, #0
42BF7C:  LDR.W           R4, [R8,R5,LSL#2]
42BF80:  CBZ             R4, loc_42BF94
42BF82:  MOV             R0, R6; this
42BF84:  MOV             R1, R4; CPed *
42BF86:  BLX             j__ZN8CVehicle15RemovePassengerEP4CPed; CVehicle::RemovePassenger(CPed *)
42BF8A:  MOV             R0, R4; this
42BF8C:  BLX             j__ZN11CPopulation9RemovePedEP4CPed; CPopulation::RemovePed(CPed *)
42BF90:  LDRB.W          R0, [R10]
42BF94:  ADDS            R5, #1
42BF96:  UXTB            R1, R0; CVehicle *
42BF98:  CMP             R5, R1
42BF9A:  BLT             loc_42BF7C
42BF9C:  MOV             R0, R6; this
42BF9E:  BLX             j__ZN8CCarCtrl24IsThisVehicleInterestingEP8CVehicle; CCarCtrl::IsThisVehicleInteresting(CVehicle *)
42BFA2:  CMP             R0, #0
42BFA4:  ITT NE
42BFA6:  MOVNE           R0, R6; this
42BFA8:  BLXNE           j__ZN8CGarages33StoreCarInNearestImpoundingGarageEP8CVehicle; CGarages::StoreCarInNearestImpoundingGarage(CVehicle *)
42BFAC:  MOV             R0, R6; this
42BFAE:  BLX             j__ZN8CCarCtrl32RemoveFromInterestingVehicleListEP8CVehicle; CCarCtrl::RemoveFromInterestingVehicleList(CVehicle *)
42BFB2:  LDR             R0, [R6]
42BFB4:  LDR             R1, [R0,#0x10]
42BFB6:  MOV             R0, R6
42BFB8:  BLX             R1
42BFBA:  LDRB.W          R0, [R6,#0x3A]
42BFBE:  AND.W           R0, R0, #7
42BFC2:  SUBS            R0, #2
42BFC4:  UXTB            R0, R0
42BFC6:  CMP             R0, #2
42BFC8:  ITT LS
42BFCA:  MOVLS           R0, R6; this
42BFCC:  BLXLS           j__ZN9CPhysical20RemoveFromMovingListEv; CPhysical::RemoveFromMovingList(void)
42BFD0:  LDR             R0, [R6]
42BFD2:  LDR             R1, [R0,#4]
42BFD4:  MOV             R0, R6
42BFD6:  BLX             R1
42BFD8:  LDR             R0, [SP,#0x58+var_48]
42BFDA:  ADD.W           R9, R9, #1
42BFDE:  CMP             R9, R0
42BFE0:  BNE.W           loc_42BE76
42BFE4:  LDR.W           R10, [SP,#0x58+var_4C]
42BFE8:  LDM.W           R10, {R0-R2}
42BFEC:  LDR.W           R9, [SP,#0x58+var_50]
42BFF0:  MOV             R3, R9
42BFF2:  BLX             j__ZN7CObject26DeleteAllTempObjectsInAreaE7CVectorf; CObject::DeleteAllTempObjectsInArea(CVector,float)
42BFF6:  LDR             R0, =(gFireManager_ptr - 0x42C000)
42BFF8:  LDM.W           R10, {R1-R3}
42BFFC:  ADD             R0, PC; gFireManager_ptr
42BFFE:  VSTR            S16, [SP,#0x58+var_58]
42C002:  LDR             R0, [R0]; gFireManager
42C004:  BLX             j__ZN12CFireManager15ExtinguishPointE7CVectorf; CFireManager::ExtinguishPoint(CVector,float)
42C008:  LDR             R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x42C00E)
42C00A:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
42C00C:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
42C00E:  LDR             R4, [R0]; CPools::ms_pVehiclePool
42C010:  LDR.W           R8, [R4,#8]
42C014:  CMP.W           R8, #1
42C018:  BLT             loc_42C08C
42C01A:  VMUL.F32        S16, S16, S16
42C01E:  VLDR            S18, [R10]
42C022:  VLDR            S20, [R10,#4]
42C026:  MOVS            R6, #0
42C028:  VLDR            S22, [R10,#8]
42C02C:  MOVS            R5, #0
42C02E:  LDR             R0, [R4,#4]
42C030:  LDRSB           R0, [R0,R5]
42C032:  CMP             R0, #0
42C034:  BLT             loc_42C082
42C036:  LDR             R0, [R4]
42C038:  ADDS            R0, R0, R6; this
42C03A:  BEQ             loc_42C082
42C03C:  LDR             R1, [R0,#0x14]
42C03E:  ADD.W           R2, R1, #0x30 ; '0'
42C042:  CMP             R1, #0
42C044:  IT EQ
42C046:  ADDEQ           R2, R0, #4
42C048:  VLDR            S0, [R2]
42C04C:  VLDR            S2, [R2,#4]
42C050:  VSUB.F32        S0, S18, S0
42C054:  VLDR            S4, [R2,#8]
42C058:  VSUB.F32        S2, S20, S2
42C05C:  VSUB.F32        S4, S22, S4
42C060:  VMUL.F32        S0, S0, S0
42C064:  VMUL.F32        S2, S2, S2
42C068:  VMUL.F32        S4, S4, S4
42C06C:  VADD.F32        S0, S0, S2
42C070:  VADD.F32        S0, S0, S4
42C074:  VCMPE.F32       S0, S16
42C078:  VMRS            APSR_nzcv, FPSCR
42C07C:  IT LT
42C07E:  BLXLT           j__ZN8CVehicle17ExtinguishCarFireEv; CVehicle::ExtinguishCarFire(void)
42C082:  ADDS            R5, #1
42C084:  ADDW            R6, R6, #0xA2C
42C088:  CMP             R8, R5
42C08A:  BNE             loc_42C02E
42C08C:  LDM.W           R10, {R0-R2}
42C090:  MOV             R3, R9
42C092:  BLX             j__ZN10CExplosion25RemoveAllExplosionsInAreaE7CVectorf; CExplosion::RemoveAllExplosionsInArea(CVector,float)
42C096:  LDR             R0, [SP,#0x58+var_54]; this
42C098:  CBZ             R0, loc_42C0A2
42C09A:  BLX             j__ZN15CProjectileInfo20RemoveAllProjectilesEv; CProjectileInfo::RemoveAllProjectiles(void)
42C09E:  BLX             j__ZN8CShadows13TidyUpShadowsEv; CShadows::TidyUpShadows(void)
42C0A2:  MOV             R0, R10
42C0A4:  MOV             R1, R9
42C0A6:  ADD             SP, SP, #0x18
42C0A8:  VPOP            {D8-D11}
42C0AC:  ADD             SP, SP, #4
42C0AE:  POP.W           {R8-R11}
42C0B2:  POP.W           {R4-R7,LR}
42C0B6:  B.W             j_j__ZN8CPickups24RemoveUnnecessaryPickupsERK7CVectorf; j_CPickups::RemoveUnnecessaryPickups(CVector const&,float)
