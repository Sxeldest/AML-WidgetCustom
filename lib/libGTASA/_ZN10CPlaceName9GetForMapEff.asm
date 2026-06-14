; =========================================================
; Game Engine Function: _ZN10CPlaceName9GetForMapEff
; Address            : 0x4210F8 - 0x421196
; =========================================================

4210F8:  PUSH            {R7,LR}
4210FA:  MOV             R7, SP
4210FC:  VPUSH           {D8-D9}
421100:  SUB             SP, SP, #0x20
421102:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x421112)
421104:  MOV.W           LR, #0x194
421108:  LDR.W           R12, =(_ZN6CWorld7PlayersE_ptr - 0x421118)
42110C:  MOVS            R3, #0
42110E:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
421110:  VMOV            S16, R2
421114:  ADD             R12, PC; _ZN6CWorld7PlayersE_ptr
421116:  VMOV            S18, R1
42111A:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
42111C:  LDR.W           R12, [R12]; CWorld::Players ...
421120:  LDR             R0, [R0]; CWorld::PlayerInFocus
421122:  STRD.W          R3, R3, [SP,#0x38+var_28]
421126:  STR             R3, [SP,#0x38+var_20]
421128:  SMULBB.W        R0, R0, LR
42112C:  LDR.W           R0, [R12,R0]
421130:  CBZ             R0, loc_421176
421132:  LDRB.W          R1, [R0,#0x485]
421136:  LSLS            R1, R1, #0x1F
421138:  BNE             loc_42115A
42113A:  LDR             R1, [R0,#0x14]; CVector *
42113C:  ADD.W           R2, R1, #0x30 ; '0'
421140:  CMP             R1, #0
421142:  IT EQ
421144:  ADDEQ           R2, R0, #4
421146:  LDR             R0, [R2,#8]
421148:  VLDR            D16, [R2]
42114C:  STR             R0, [SP,#0x38+var_20]
42114E:  ADD             R0, SP, #0x38+var_28; this
421150:  VSTR            D16, [SP,#0x38+var_28]
421154:  BLX             j__ZN17CEntryExitManager33GetPositionRelativeToOutsideWorldER7CVector; CEntryExitManager::GetPositionRelativeToOutsideWorld(CVector &)
421158:  B               loc_421176
42115A:  LDR.W           R0, [R0,#0x590]
42115E:  LDR             R1, [R0,#0x14]
421160:  ADD.W           R2, R1, #0x30 ; '0'
421164:  CMP             R1, #0
421166:  IT EQ
421168:  ADDEQ           R2, R0, #4; unsigned __int8
42116A:  VLDR            D16, [R2]
42116E:  LDR             R0, [R2,#8]
421170:  STR             R0, [SP,#0x38+var_20]
421172:  VSTR            D16, [SP,#0x38+var_28]
421176:  LDR             R0, [SP,#0x38+var_20]
421178:  MOVS            R1, #0; CVector *
42117A:  VSTR            S18, [SP,#0x38+var_34]
42117E:  VSTR            S16, [SP,#0x38+var_30]
421182:  STR             R0, [SP,#0x38+var_2C]
421184:  ADD             R0, SP, #0x38+var_34; this
421186:  BLX             j__ZN9CTheZones27FindSmallestZoneForPositionEPK7CVectorh; CTheZones::FindSmallestZoneForPosition(CVector const*,uchar)
42118A:  BLX             j__ZN5CZone17GetTranslatedNameEv; CZone::GetTranslatedName(void)
42118E:  ADD             SP, SP, #0x20 ; ' '
421190:  VPOP            {D8-D9}
421194:  POP             {R7,PC}
