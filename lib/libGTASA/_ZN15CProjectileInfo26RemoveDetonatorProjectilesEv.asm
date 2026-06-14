; =========================================================
; Game Engine Function: _ZN15CProjectileInfo26RemoveDetonatorProjectilesEv
; Address            : 0x5D9C04 - 0x5D9CB6
; =========================================================

5D9C04:  PUSH            {R4-R7,LR}
5D9C06:  ADD             R7, SP, #0xC
5D9C08:  PUSH.W          {R8-R11}
5D9C0C:  SUB             SP, SP, #0x24
5D9C0E:  LDR             R0, =(gaProjectileInfo_ptr - 0x5D9C1A)
5D9C10:  MOV.W           R10, #0
5D9C14:  LDR             R1, =(gaProjectileInfo_ptr - 0x5D9C1C)
5D9C16:  ADD             R0, PC; gaProjectileInfo_ptr
5D9C18:  ADD             R1, PC; gaProjectileInfo_ptr
5D9C1A:  LDR             R5, [R0]; gaProjectileInfo
5D9C1C:  LDR             R0, =(_ZN15CProjectileInfo15ms_apProjectileE_ptr - 0x5D9C24)
5D9C1E:  LDR             R6, [R1]; gaProjectileInfo
5D9C20:  ADD             R0, PC; _ZN15CProjectileInfo15ms_apProjectileE_ptr
5D9C22:  LDR             R0, [R0]; CProjectileInfo::ms_apProjectile ...
5D9C24:  STR             R0, [SP,#0x40+var_20]
5D9C26:  LDR             R0, =(gaProjectileInfo_ptr - 0x5D9C2C)
5D9C28:  ADD             R0, PC; gaProjectileInfo_ptr
5D9C2A:  LDR             R0, [R0]; gaProjectileInfo
5D9C2C:  STR             R0, [SP,#0x40+var_24]
5D9C2E:  ADD.W           R0, R10, R10,LSL#3
5D9C32:  ADD.W           R8, R5, R0
5D9C36:  LDRB.W          R1, [R8,#0x10]
5D9C3A:  CBZ             R1, loc_5D9CA4
5D9C3C:  LDR             R1, [R6,R0]
5D9C3E:  CMP             R1, #0x27 ; '''
5D9C40:  BNE             loc_5D9CA4
5D9C42:  LDR             R1, [SP,#0x40+var_20]
5D9C44:  LDR.W           R11, [R1,R10]
5D9C48:  LDR.W           R1, [R11,#0x14]
5D9C4C:  ADD.W           R2, R1, #0x30 ; '0'
5D9C50:  CMP             R1, #0
5D9C52:  IT EQ
5D9C54:  ADDEQ.W         R2, R11, #4
5D9C58:  LDRD.W          R3, R4, [R2]; int
5D9C5C:  LDR             R1, [SP,#0x40+var_24]
5D9C5E:  LDR             R2, [R2,#8]
5D9C60:  ADD.W           R9, R1, R0
5D9C64:  STR             R4, [SP,#0x40+var_40]; int
5D9C66:  MOVS            R4, #0
5D9C68:  MOVS            R0, #1
5D9C6A:  LDR.W           R1, [R9,#4]; int
5D9C6E:  STRD.W          R2, R4, [SP,#0x40+var_3C]; int
5D9C72:  MOVS            R2, #0; int
5D9C74:  STR             R0, [SP,#0x40+var_34]; int
5D9C76:  MOVS            R0, #0xBF800000
5D9C7C:  STRD.W          R0, R4, [SP,#0x40+var_30]; float
5D9C80:  MOVS            R0, #0; int
5D9C82:  BLX.W           j__ZN10CExplosion12AddExplosionEP7CEntityS1_14eExplosionType7CVectorjhfh; CExplosion::AddExplosion(CEntity *,CEntity *,eExplosionType,CVector,uint,uchar,float,uchar)
5D9C86:  STRB.W          R4, [R8,#0x10]
5D9C8A:  LDR.W           R0, [R9,#0x20]; this
5D9C8E:  CBZ             R0, loc_5D9C98
5D9C90:  BLX.W           j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
5D9C94:  STR.W           R4, [R9,#0x20]
5D9C98:  LDR.W           R0, [R11,#0x1C]
5D9C9C:  ORR.W           R0, R0, #0x800
5D9CA0:  STR.W           R0, [R11,#0x1C]
5D9CA4:  ADD.W           R10, R10, #4
5D9CA8:  CMP.W           R10, #0x80
5D9CAC:  BNE             loc_5D9C2E
5D9CAE:  ADD             SP, SP, #0x24 ; '$'
5D9CB0:  POP.W           {R8-R11}
5D9CB4:  POP             {R4-R7,PC}
