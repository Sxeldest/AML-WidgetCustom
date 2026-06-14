; =========================================================
; Game Engine Function: _ZN11CPlayerInfo14MakePlayerSafeEbf
; Address            : 0x40BF7C - 0x40C1A0
; =========================================================

40BF7C:  PUSH            {R4-R7,LR}
40BF7E:  ADD             R7, SP, #0xC
40BF80:  PUSH.W          {R8}
40BF84:  VPUSH           {D8}
40BF88:  SUB             SP, SP, #8
40BF8A:  MOV             R4, R0
40BF8C:  MOV             R8, R2
40BF8E:  LDR             R0, [R4]; this
40BF90:  MOV             R5, R1
40BF92:  BLX             j__ZN10CPlayerPed16GetPadFromPlayerEv; CPlayerPed::GetPadFromPlayer(void)
40BF96:  MOV             R6, R0
40BF98:  NOP
40BF9A:  CMP             R5, #1
40BF9C:  NOP
40BF9E:  BNE             loc_40C04E
40BFA0:  NOP
40BFA2:  NOP
40BFA4:  NOP
40BFA6:  BLX             j__ZN6CWorld32StopAllLawEnforcersInTheirTracksEv; CWorld::StopAllLawEnforcersInTheirTracks(void)
40BFAA:  LDRH.W          R0, [R6,#0x110]
40BFAE:  ORR.W           R0, R0, #0x20 ; ' '; this
40BFB2:  STRH.W          R0, [R6,#0x110]
40BFB6:  BLX             j__ZN4CPad15StopPadsShakingEv; CPad::StopPadsShaking(void)
40BFBA:  LDR             R0, [R4]
40BFBC:  LDR             R1, [R0,#0x44]
40BFBE:  ORR.W           R1, R1, #0x400000
40BFC2:  STR             R1, [R0,#0x44]
40BFC4:  LDR             R0, [R4]
40BFC6:  LDR             R1, [R0,#0x44]
40BFC8:  ORR.W           R1, R1, #0x40000
40BFCC:  STR             R1, [R0,#0x44]
40BFCE:  LDR             R0, [R4]
40BFD0:  LDR             R1, [R0,#0x44]
40BFD2:  ORR.W           R1, R1, #0x80000
40BFD6:  STR             R1, [R0,#0x44]
40BFD8:  LDR             R0, [R4]
40BFDA:  LDR             R1, [R0,#0x44]
40BFDC:  ORR.W           R1, R1, #0x800000
40BFE0:  STR             R1, [R0,#0x44]
40BFE2:  LDR             R0, [R4]
40BFE4:  LDR             R1, [R0,#0x44]
40BFE6:  ORR.W           R1, R1, #0x100000
40BFEA:  STR             R1, [R0,#0x44]
40BFEC:  LDR             R0, [R4]
40BFEE:  LDR             R1, [R0,#0x44]
40BFF0:  ORR.W           R1, R1, #0x200000
40BFF4:  STR             R1, [R0,#0x44]
40BFF6:  LDR             R0, [R4]
40BFF8:  LDR.W           R0, [R0,#0x444]
40BFFC:  LDRH            R1, [R0,#0x34]
40BFFE:  BIC.W           R1, R1, #0x10
40C002:  STRH            R1, [R0,#0x34]
40C004:  LDR             R0, [R4]; this
40C006:  BLX             j__ZN10CPlayerPed15ClearAdrenalineEv; CPlayerPed::ClearAdrenaline(void)
40C00A:  VLDR            S0, [R4,#0x1C]
40C00E:  MOVS            R1, #1; bool
40C010:  MOVS            R2, #0; bool
40C012:  VMOV            S16, R8
40C016:  VCMPE.F32       S0, #0.0
40C01A:  VMRS            APSR_nzcv, FPSCR
40C01E:  ITT LT
40C020:  MOVLT           R0, #0
40C022:  STRLT           R0, [R4,#0x1C]
40C024:  LDR             R0, [R4]
40C026:  LDR.W           R0, [R0,#0x440]; this
40C02A:  BLX             j__ZN16CPedIntelligence10ClearTasksEbb; CPedIntelligence::ClearTasks(bool,bool)
40C02E:  LDR             R1, [R4]
40C030:  LDRB.W          R0, [R1,#0x485]
40C034:  LSLS            R0, R0, #0x1F
40C036:  ITT NE
40C038:  LDRNE.W         R2, [R1,#0x590]
40C03C:  CMPNE           R2, #0
40C03E:  BNE             loc_40C0BE
40C040:  LDR             R2, [R1,#0x14]
40C042:  ADD.W           R0, R2, #0x30 ; '0'
40C046:  CMP             R2, #0
40C048:  IT EQ
40C04A:  ADDEQ           R0, R1, #4
40C04C:  B               loc_40C0CA
40C04E:  NOP
40C050:  NOP
40C052:  NOP
40C054:  LDRH.W          R0, [R6,#0x110]
40C058:  BIC.W           R0, R0, #0x20 ; ' '
40C05C:  STRH.W          R0, [R6,#0x110]
40C060:  LDR             R0, [R4]
40C062:  LDR             R1, [R0,#0x44]
40C064:  BIC.W           R1, R1, #0x400000
40C068:  STR             R1, [R0,#0x44]
40C06A:  LDR             R0, [R4]
40C06C:  LDR             R1, [R0,#0x44]
40C06E:  BIC.W           R1, R1, #0x40000
40C072:  STR             R1, [R0,#0x44]
40C074:  LDR             R0, [R4]
40C076:  LDR             R1, [R0,#0x44]
40C078:  BIC.W           R1, R1, #0x80000
40C07C:  STR             R1, [R0,#0x44]
40C07E:  LDR             R0, [R4]
40C080:  LDR             R1, [R0,#0x44]
40C082:  BIC.W           R1, R1, #0x800000
40C086:  STR             R1, [R0,#0x44]
40C088:  LDR             R0, [R4]
40C08A:  LDR             R1, [R0,#0x44]
40C08C:  BIC.W           R1, R1, #0x100000
40C090:  STR             R1, [R0,#0x44]
40C092:  LDR             R0, [R4]
40C094:  LDR             R1, [R0,#0x44]
40C096:  BIC.W           R1, R1, #0x200000
40C09A:  STR             R1, [R0,#0x44]
40C09C:  LDR             R0, [R4]
40C09E:  LDR.W           R0, [R0,#0x444]
40C0A2:  LDRH            R1, [R0,#0x34]
40C0A4:  ORR.W           R1, R1, #0x10; bool
40C0A8:  STRH            R1, [R0,#0x34]
40C0AA:  MOVS            R0, #(stderr+1); this
40C0AC:  ADD             SP, SP, #8
40C0AE:  VPOP            {D8}
40C0B2:  POP.W           {R8}
40C0B6:  POP.W           {R4-R7,LR}
40C0BA:  B.W             j_j__ZN6CWorld22SetAllCarsCanBeDamagedEb; j_CWorld::SetAllCarsCanBeDamaged(bool)
40C0BE:  LDR             R1, [R2,#0x14]
40C0C0:  ADD.W           R0, R1, #0x30 ; '0'
40C0C4:  CMP             R1, #0
40C0C6:  IT EQ
40C0C8:  ADDEQ           R0, R2, #4
40C0CA:  LDR             R6, =(gFireManager_ptr - 0x40C0D4)
40C0CC:  LDM.W           R0, {R1-R3}
40C0D0:  ADD             R6, PC; gFireManager_ptr
40C0D2:  VSTR            S16, [SP,#0x20+var_20]
40C0D6:  LDR             R0, [R6]; gFireManager
40C0D8:  BLX             j__ZN12CFireManager15ExtinguishPointE7CVectorf; CFireManager::ExtinguishPoint(CVector,float)
40C0DC:  LDR             R0, [R4]
40C0DE:  LDRB.W          R1, [R0,#0x485]
40C0E2:  LSLS            R1, R1, #0x1F
40C0E4:  ITT NE
40C0E6:  LDRNE.W         R1, [R0,#0x590]
40C0EA:  CMPNE           R1, #0
40C0EC:  BNE             loc_40C0FC
40C0EE:  LDR             R1, [R0,#0x14]
40C0F0:  ADD.W           R2, R1, #0x30 ; '0'
40C0F4:  CMP             R1, #0
40C0F6:  IT EQ
40C0F8:  ADDEQ           R2, R0, #4
40C0FA:  B               loc_40C108
40C0FC:  LDR             R0, [R1,#0x14]
40C0FE:  ADD.W           R2, R0, #0x30 ; '0'
40C102:  CMP             R0, #0
40C104:  IT EQ
40C106:  ADDEQ           R2, R1, #4
40C108:  LDM             R2, {R0-R2}
40C10A:  MOVS            R3, #0x457A0000
40C110:  BLX             j__ZN10CExplosion25RemoveAllExplosionsInAreaE7CVectorf; CExplosion::RemoveAllExplosionsInArea(CVector,float)
40C114:  BLX             j__ZN15CProjectileInfo20RemoveAllProjectilesEv; CProjectileInfo::RemoveAllProjectiles(void)
40C118:  MOVS            R0, #0; this
40C11A:  BLX             j__ZN6CWorld22SetAllCarsCanBeDamagedEb; CWorld::SetAllCarsCanBeDamaged(bool)
40C11E:  LDR             R0, [R4]
40C120:  LDRB.W          R1, [R0,#0x485]
40C124:  LSLS            R1, R1, #0x1F
40C126:  ITT NE
40C128:  LDRNE.W         R1, [R0,#0x590]
40C12C:  CMPNE           R1, #0
40C12E:  BNE             loc_40C13E
40C130:  LDR             R1, [R0,#0x14]
40C132:  ADD.W           R2, R1, #0x30 ; '0'
40C136:  CMP             R1, #0
40C138:  IT EQ
40C13A:  ADDEQ           R2, R0, #4
40C13C:  B               loc_40C14A
40C13E:  LDR             R0, [R1,#0x14]
40C140:  ADD.W           R2, R0, #0x30 ; '0'
40C144:  CMP             R0, #0
40C146:  IT EQ
40C148:  ADDEQ           R2, R1, #4
40C14A:  LDM             R2, {R0-R2}
40C14C:  MOV             R3, R8
40C14E:  BLX             j__ZN6CWorld27ExtinguishAllCarFiresInAreaE7CVectorf; CWorld::ExtinguishAllCarFiresInArea(CVector,float)
40C152:  LDR             R0, [R4]; this
40C154:  BLX             j__ZN10CPlayerPed17ClearWeaponTargetEv; CPlayerPed::ClearWeaponTarget(void)
40C158:  LDR             R0, =(_ZN4CHID20currentInstanceIndexE_ptr - 0x40C15E)
40C15A:  ADD             R0, PC; _ZN4CHID20currentInstanceIndexE_ptr
40C15C:  LDR             R0, [R0]; CHID::currentInstanceIndex ...
40C15E:  LDR             R0, [R0]; CHID::currentInstanceIndex
40C160:  CMP             R0, #1
40C162:  BNE             loc_40C170
40C164:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x40C16A)
40C166:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
40C168:  LDR             R0, [R0]; CWorld::Players ...
40C16A:  ADD.W           R0, R0, #0x194
40C16E:  B               loc_40C186
40C170:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x40C17C)
40C172:  MOV.W           R2, #0x194
40C176:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x40C17E)
40C178:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
40C17A:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
40C17C:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
40C17E:  LDR             R1, [R1]; CWorld::Players ...
40C180:  LDR             R0, [R0]; CWorld::PlayerInFocus
40C182:  SMLABB.W        R0, R0, R2, R1
40C186:  LDR             R0, [R0]
40C188:  LDR.W           R0, [R0,#0x444]
40C18C:  LDRH            R1, [R0,#0x34]
40C18E:  BIC.W           R1, R1, #8
40C192:  STRH            R1, [R0,#0x34]
40C194:  ADD             SP, SP, #8
40C196:  VPOP            {D8}
40C19A:  POP.W           {R8}
40C19E:  POP             {R4-R7,PC}
