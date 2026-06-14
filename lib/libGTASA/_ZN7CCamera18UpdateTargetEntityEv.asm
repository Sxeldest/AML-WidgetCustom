; =========================================================
; Game Engine Function: _ZN7CCamera18UpdateTargetEntityEv
; Address            : 0x3DDC60 - 0x3DE046
; =========================================================

3DDC60:  PUSH            {R4-R7,LR}
3DDC62:  ADD             R7, SP, #0xC
3DDC64:  PUSH.W          {R8,R9,R11}
3DDC68:  MOV             R9, R0
3DDC6A:  MOVS            R0, #0
3DDC6C:  STRB.W          R0, [R9,#0x25]
3DDC70:  ADDW            R4, R9, #0x8DC
3DDC74:  LDR.W           R0, [R9,#0x8DC]
3DDC78:  CBZ             R0, loc_3DDCBA
3DDC7A:  LDRB.W          R1, [R0,#0x3A]
3DDC7E:  AND.W           R1, R1, #7
3DDC82:  CMP             R1, #2
3DDC84:  BNE             loc_3DDCBA
3DDC86:  VLDR            S0, [R0,#0x48]
3DDC8A:  VLDR            S2, [R0,#0x4C]
3DDC8E:  VMUL.F32        S0, S0, S0
3DDC92:  VLDR            S4, [R0,#0x50]
3DDC96:  VMUL.F32        S2, S2, S2
3DDC9A:  VMUL.F32        S4, S4, S4
3DDC9E:  VADD.F32        S0, S0, S2
3DDCA2:  VLDR            S2, =0.3
3DDCA6:  VADD.F32        S0, S0, S4
3DDCAA:  VCMPE.F32       S0, S2
3DDCAE:  VMRS            APSR_nzcv, FPSCR
3DDCB2:  ITT GT
3DDCB4:  MOVGT           R0, #1
3DDCB6:  STRBGT.W        R0, [R9,#0x25]
3DDCBA:  LDR.W           R0, [R9,#0xAC]
3DDCBE:  CMP             R0, #2
3DDCC0:  BNE             loc_3DDD0A
3DDCC2:  LDR.W           R0, [R9,#0xBBC]
3DDCC6:  SUBS            R0, #7
3DDCC8:  CMP             R0, #1
3DDCCA:  BHI             loc_3DDD18
3DDCCC:  MOV.W           R0, #0xFFFFFFFF; int
3DDCD0:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3DDCD4:  LDR.W           R0, [R0,#0x44C]
3DDCD8:  MOVS            R5, #0
3DDCDA:  MOVS            R1, #0; bool
3DDCDC:  CMP             R0, #0x3F ; '?'
3DDCDE:  MOV.W           R0, #0xFFFFFFFF; int
3DDCE2:  IT EQ
3DDCE4:  MOVEQ           R5, #1
3DDCE6:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3DDCEA:  CBNZ            R0, loc_3DDD0C
3DDCEC:  LDR             R0, [R4]; this
3DDCEE:  CMP             R0, #0
3DDCF0:  ITT NE
3DDCF2:  MOVNE           R1, R4; CEntity **
3DDCF4:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
3DDCF8:  MOV.W           R0, #0xFFFFFFFF; int
3DDCFC:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3DDD00:  MOV             R1, R4; CEntity **
3DDD02:  STR             R0, [R4]
3DDD04:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
3DDD08:  B               loc_3DDD0C
3DDD0A:  MOVS            R5, #0
3DDD0C:  CMP             R5, #0
3DDD0E:  ITT EQ
3DDD10:  LDRBEQ.W        R0, [R9,#0x29]
3DDD14:  CMPEQ           R0, #0
3DDD16:  BEQ             loc_3DDD1E
3DDD18:  LDRB.W          R0, [R9,#0x56]
3DDD1C:  CBZ             R0, loc_3DDD2C
3DDD1E:  LDR             R0, [R4]
3DDD20:  CBZ             R0, loc_3DDD2C
3DDD22:  LDRB.W          R0, [R9,#0x32]
3DDD26:  CMP             R0, #0
3DDD28:  BEQ.W           loc_3DDFC0
3DDD2C:  MOV.W           R0, #0xFFFFFFFF; int
3DDD30:  MOVS            R1, #0; bool
3DDD32:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3DDD36:  CBZ             R0, loc_3DDD74
3DDD38:  BLX             j__ZN10CGameLogic17IsCoopGameGoingOnEv; CGameLogic::IsCoopGameGoingOn(void)
3DDD3C:  CMP             R0, #0
3DDD3E:  BNE             loc_3DDDC8
3DDD40:  MOV.W           R0, #0xFFFFFFFF; int
3DDD44:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3DDD48:  LDR.W           R0, [R0,#0x440]
3DDD4C:  ADDS            R0, #4; this
3DDD4E:  BLX             j__ZNK12CTaskManager21GetSimplestActiveTaskEv; CTaskManager::GetSimplestActiveTask(void)
3DDD52:  CBZ             R0, loc_3DDDC8
3DDD54:  MOV.W           R0, #0xFFFFFFFF; int
3DDD58:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3DDD5C:  LDR.W           R0, [R0,#0x440]
3DDD60:  ADDS            R0, #4; this
3DDD62:  BLX             j__ZNK12CTaskManager21GetSimplestActiveTaskEv; CTaskManager::GetSimplestActiveTask(void)
3DDD66:  LDR             R1, [R0]
3DDD68:  LDR             R1, [R1,#0x14]
3DDD6A:  BLX             R1
3DDD6C:  MOVW            R1, #0x3FE
3DDD70:  CMP             R0, R1
3DDD72:  BNE             loc_3DDDC8
3DDD74:  LDR             R0, [R4]; this
3DDD76:  CMP             R0, #0
3DDD78:  ITT NE
3DDD7A:  MOVNE           R1, R4; CEntity **
3DDD7C:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
3DDD80:  MOV.W           R0, #0xFFFFFFFF; int
3DDD84:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3DDD88:  MOV             R1, R4; CEntity **
3DDD8A:  STR             R0, [R4]
3DDD8C:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
3DDD90:  MOV.W           R0, #0xFFFFFFFF; int
3DDD94:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3DDD98:  LDR.W           R0, [R0,#0x44C]
3DDD9C:  CMP             R0, #0x3B ; ';'
3DDD9E:  BEQ             loc_3DDDC2
3DDDA0:  MOV.W           R0, #0xFFFFFFFF; int
3DDDA4:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3DDDA8:  LDR.W           R0, [R0,#0x44C]
3DDDAC:  CMP             R0, #0x39 ; '9'
3DDDAE:  BEQ             loc_3DDDC2
3DDDB0:  MOV.W           R0, #0xFFFFFFFF; int
3DDDB4:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3DDDB8:  LDR.W           R0, [R0,#0x44C]
3DDDBC:  CMP             R0, #0x35 ; '5'
3DDDBE:  BNE.W           loc_3DE000
3DDDC2:  MOV.W           R8, #1
3DDDC6:  B               loc_3DDDEA
3DDDC8:  LDR             R0, [R4]; this
3DDDCA:  CMP             R0, #0
3DDDCC:  ITT NE
3DDDCE:  MOVNE           R1, R4; CEntity **
3DDDD0:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
3DDDD4:  MOV.W           R0, #0xFFFFFFFF; int
3DDDD8:  MOVS            R1, #0; bool
3DDDDA:  MOV.W           R8, #0
3DDDDE:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3DDDE2:  MOV             R1, R4; CEntity **
3DDDE4:  STR             R0, [R4]
3DDDE6:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
3DDDEA:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x3DDDF4)
3DDDEC:  MOV.W           R5, #0x194
3DDDF0:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
3DDDF2:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
3DDDF4:  LDR             R2, [R0]; CWorld::PlayerInFocus
3DDDF6:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x3DDDFC)
3DDDF8:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
3DDDFA:  SMULBB.W        R1, R2, R5
3DDDFE:  LDR             R0, [R0]; CWorld::Players ...
3DDE00:  LDR             R1, [R0,R1]; CPed *
3DDE02:  CBZ             R1, loc_3DDE20
3DDE04:  LDR.W           R0, [R1,#0x590]; this
3DDE08:  CBZ             R0, loc_3DDE20
3DDE0A:  BLX             j__ZNK8CVehicle15CanPedOpenLocksEPK4CPed; CVehicle::CanPedOpenLocks(CPed const*)
3DDE0E:  LDR             R1, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x3DDE18)
3DDE10:  MOVS            R6, #0
3DDE12:  CMP             R0, #0
3DDE14:  ADD             R1, PC; _ZN6CWorld13PlayerInFocusE_ptr
3DDE16:  LDR             R1, [R1]; CWorld::PlayerInFocus ...
3DDE18:  LDR             R2, [R1]; CWorld::PlayerInFocus
3DDE1A:  IT EQ
3DDE1C:  MOVEQ           R6, #1
3DDE1E:  B               loc_3DDE22
3DDE20:  MOVS            R6, #1
3DDE22:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x3DDE2C)
3DDE24:  SMULBB.W        R1, R2, R5
3DDE28:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
3DDE2A:  LDR             R0, [R0]; CWorld::Players ...
3DDE2C:  LDR             R1, [R0,R1]
3DDE2E:  LDR.W           R0, [R1,#0x44C]
3DDE32:  EOR.W           R3, R0, #0x3B ; ';'
3DDE36:  ORRS            R3, R6
3DDE38:  IT NE
3DDE3A:  MOVNE           R3, #1
3DDE3C:  ORRS.W          R3, R3, R8
3DDE40:  BNE             loc_3DDEAE
3DDE42:  LDR.W           R3, [R9,#0xB0]
3DDE46:  CBZ             R3, loc_3DDEAE
3DDE48:  LDR             R0, [R4]; this
3DDE4A:  CBZ             R0, loc_3DDE6A
3DDE4C:  MOV             R1, R4; CEntity **
3DDE4E:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
3DDE52:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x3DDE5C)
3DDE54:  MOV.W           R1, #0x194
3DDE58:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
3DDE5A:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
3DDE5C:  LDR             R2, [R0]; CWorld::PlayerInFocus
3DDE5E:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x3DDE64)
3DDE60:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
3DDE62:  SMULBB.W        R1, R2, R1
3DDE66:  LDR             R0, [R0]; CWorld::Players ...
3DDE68:  LDR             R1, [R0,R1]
3DDE6A:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x3DDE78)
3DDE6C:  MOV.W           R5, #0x194
3DDE70:  SMULBB.W        R2, R2, R5
3DDE74:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
3DDE76:  LDR             R3, [R0]; CWorld::Players ...
3DDE78:  LDR.W           R0, [R1,#0x590]
3DDE7C:  STR             R0, [R4]
3DDE7E:  LDR             R1, [R3,R2]
3DDE80:  LDR.W           R1, [R1,#0x590]
3DDE84:  CBNZ            R1, loc_3DDE90
3DDE86:  MOV.W           R0, #0xFFFFFFFF; int
3DDE8A:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3DDE8E:  STR             R0, [R4]
3DDE90:  MOV             R1, R4; CEntity **
3DDE92:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
3DDE96:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x3DDE9E)
3DDE98:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x3DDEA0)
3DDE9A:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
3DDE9C:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
3DDE9E:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
3DDEA0:  LDR             R1, [R1]; CWorld::Players ...
3DDEA2:  LDR             R0, [R0]; CWorld::PlayerInFocus
3DDEA4:  SMULBB.W        R0, R0, R5
3DDEA8:  LDR             R1, [R1,R0]
3DDEAA:  LDR.W           R0, [R1,#0x44C]
3DDEAE:  CMP             R0, #0x39 ; '9'
3DDEB0:  BNE             loc_3DDF44
3DDEB2:  CMP             R6, #0
3DDEB4:  BNE             loc_3DDF4A
3DDEB6:  CMP.W           R8, #0
3DDEBA:  BNE             loc_3DDF08
3DDEBC:  LDR.W           R0, [R9,#0xB0]
3DDEC0:  CBZ             R0, loc_3DDF08
3DDEC2:  LDR             R0, [R4]; this
3DDEC4:  CBZ             R0, loc_3DDEE4
3DDEC6:  MOV             R1, R4; CEntity **
3DDEC8:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
3DDECC:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x3DDED8)
3DDECE:  MOV.W           R2, #0x194
3DDED2:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x3DDEDA)
3DDED4:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
3DDED6:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
3DDED8:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
3DDEDA:  LDR             R1, [R1]; CWorld::Players ...
3DDEDC:  LDR             R0, [R0]; CWorld::PlayerInFocus
3DDEDE:  SMULBB.W        R0, R0, R2
3DDEE2:  LDR             R1, [R1,R0]
3DDEE4:  LDR.W           R0, [R1,#0x590]; this
3DDEE8:  MOV             R1, R4; CEntity **
3DDEEA:  STR             R0, [R4]
3DDEEC:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
3DDEF0:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x3DDEFC)
3DDEF2:  MOV.W           R2, #0x194
3DDEF6:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x3DDEFE)
3DDEF8:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
3DDEFA:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
3DDEFC:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
3DDEFE:  LDR             R1, [R1]; CWorld::Players ...
3DDF00:  LDR             R0, [R0]; CWorld::PlayerInFocus
3DDF02:  SMULBB.W        R0, R0, R2
3DDF06:  LDR             R1, [R1,R0]
3DDF08:  LDR.W           R0, [R1,#0x590]
3DDF0C:  CBNZ            R0, loc_3DDF4A
3DDF0E:  LDR             R0, [R4]; this
3DDF10:  CMP             R0, #0
3DDF12:  ITT NE
3DDF14:  MOVNE           R1, R4; CEntity **
3DDF16:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
3DDF1A:  MOV.W           R0, #0xFFFFFFFF; int
3DDF1E:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3DDF22:  MOV             R1, R4; CEntity **
3DDF24:  STR             R0, [R4]
3DDF26:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
3DDF2A:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x3DDF36)
3DDF2C:  MOV.W           R2, #0x194
3DDF30:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x3DDF38)
3DDF32:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
3DDF34:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
3DDF36:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
3DDF38:  LDR             R1, [R1]; CWorld::Players ...
3DDF3A:  LDR             R0, [R0]; CWorld::PlayerInFocus
3DDF3C:  SMULBB.W        R0, R0, R2
3DDF40:  LDR             R1, [R1,R0]
3DDF42:  B               loc_3DDF4A
3DDF44:  CBNZ            R6, loc_3DDF4A
3DDF46:  CMP             R0, #0x35 ; '5'
3DDF48:  BEQ             loc_3DDEB6
3DDF4A:  LDR.W           R0, [R1,#0x44C]
3DDF4E:  CMP             R0, #0x3D ; '='
3DDF50:  BNE             loc_3DDF8A
3DDF52:  LDR             R0, [R4]; this
3DDF54:  CMP             R0, #0
3DDF56:  ITT NE
3DDF58:  MOVNE           R1, R4; CEntity **
3DDF5A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
3DDF5E:  MOV.W           R0, #0xFFFFFFFF; int
3DDF62:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3DDF66:  MOV             R1, R4; CEntity **
3DDF68:  STR             R0, [R4]
3DDF6A:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
3DDF6E:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x3DDF7A)
3DDF70:  MOV.W           R2, #0x194
3DDF74:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x3DDF7C)
3DDF76:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
3DDF78:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
3DDF7A:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
3DDF7C:  LDR             R1, [R1]; CWorld::Players ...
3DDF7E:  LDR             R0, [R0]; CWorld::PlayerInFocus
3DDF80:  SMULBB.W        R0, R0, R2
3DDF84:  LDR             R0, [R1,R0]
3DDF86:  LDR.W           R0, [R0,#0x44C]
3DDF8A:  CMP             R0, #0x3A ; ':'
3DDF8C:  BNE             loc_3DDFAA
3DDF8E:  LDR             R0, [R4]; this
3DDF90:  CMP             R0, #0
3DDF92:  ITT NE
3DDF94:  MOVNE           R1, R4; CEntity **
3DDF96:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
3DDF9A:  MOV.W           R0, #0xFFFFFFFF; int
3DDF9E:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3DDFA2:  MOV             R1, R4; CEntity **
3DDFA4:  STR             R0, [R4]
3DDFA6:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
3DDFAA:  LDR             R0, [R4]
3DDFAC:  LDRB.W          R0, [R0,#0x3A]
3DDFB0:  AND.W           R0, R0, #7
3DDFB4:  CMP             R0, #2
3DDFB6:  ITT EQ
3DDFB8:  LDREQ.W         R0, [R9,#0xB0]
3DDFBC:  CMPEQ           R0, #0
3DDFBE:  BEQ             loc_3DDFC6
3DDFC0:  POP.W           {R8,R9,R11}
3DDFC4:  POP             {R4-R7,PC}
3DDFC6:  MOV.W           R0, #0xFFFFFFFF; int
3DDFCA:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3DDFCE:  LDR.W           R0, [R0,#0x44C]
3DDFD2:  CMP             R0, #0x3F ; '?'
3DDFD4:  BNE             loc_3DDFC0
3DDFD6:  LDR             R0, [R4]; this
3DDFD8:  CMP             R0, #0
3DDFDA:  ITT NE
3DDFDC:  MOVNE           R1, R4; CEntity **
3DDFDE:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
3DDFE2:  MOV.W           R0, #0xFFFFFFFF; int
3DDFE6:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3DDFEA:  STR             R0, [R4]
3DDFEC:  MOV             R1, R4; CEntity **
3DDFEE:  POP.W           {R8,R9,R11}
3DDFF2:  POP.W           {R4-R7,LR}
3DDFF6:  B.W             j_j__ZN7CEntity17RegisterReferenceEPPS_; j_CEntity::RegisterReference(CEntity**)
3DDFFA:  ALIGN 4
3DDFFC:  DCFS 0.3
3DE000:  LDRB.W          R1, [R9,#0x57]
3DE004:  LDR.W           R0, [R9,#0x8DC]
3DE008:  ADD.W           R2, R1, R1,LSL#5
3DE00C:  ADD.W           R3, R9, R2,LSL#4
3DE010:  LDR.W           R2, [R3,#0x364]
3DE014:  CMP             R0, R2
3DE016:  BEQ             loc_3DE040
3DE018:  CBZ             R2, loc_3DE02C
3DE01A:  ADD.W           R1, R3, #0x364; CEntity **
3DE01E:  MOV             R0, R2; this
3DE020:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
3DE024:  LDRB.W          R1, [R9,#0x57]
3DE028:  LDR.W           R0, [R9,#0x8DC]; this
3DE02C:  ADD.W           R1, R1, R1,LSL#5
3DE030:  ADD.W           R1, R9, R1,LSL#4
3DE034:  STR.W           R0, [R1,#0x364]
3DE038:  ADD.W           R1, R1, #0x364; CEntity **
3DE03C:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
3DE040:  MOV.W           R8, #0
3DE044:  B               loc_3DDDEA
