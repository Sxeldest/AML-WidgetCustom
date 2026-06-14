; =========================================================
; Game Engine Function: _ZN8CGarages19GivePlayerDetonatorEv
; Address            : 0x3121C8 - 0x31221A
; =========================================================

3121C8:  PUSH            {R4-R7,LR}
3121CA:  ADD             R7, SP, #0xC
3121CC:  PUSH.W          {R11}
3121D0:  MOV.W           R0, #0xFFFFFFFF; int
3121D4:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3121D8:  MOV             R4, R0
3121DA:  MOVS            R0, #0x28 ; '('
3121DC:  MOVS            R1, #1
3121DE:  MOVS            R5, #0x28 ; '('
3121E0:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
3121E4:  LDR             R6, [R0,#0x14]
3121E6:  MOV             R0, R4
3121E8:  MOVS            R1, #0x28 ; '('
3121EA:  MOVS            R2, #1
3121EC:  MOVS            R3, #1
3121EE:  BLX             j__ZN4CPed10GiveWeaponE11eWeaponTypejb; CPed::GiveWeapon(eWeaponType,uint,bool)
3121F2:  RSB.W           R0, R6, R6,LSL#3
3121F6:  MOVS            R1, #0
3121F8:  ADD.W           R0, R4, R0,LSL#2
3121FC:  STR.W           R1, [R0,#0x5A8]
312200:  LDR.W           R0, [R4,#0x444]
312204:  STRB.W          R6, [R0,#0x20]
312208:  LDR.W           R0, [R4,#0x710]
31220C:  CMP             R0, #0x37 ; '7'
31220E:  IT NE
312210:  STRNE.W         R5, [R4,#0x710]
312214:  POP.W           {R11}
312218:  POP             {R4-R7,PC}
