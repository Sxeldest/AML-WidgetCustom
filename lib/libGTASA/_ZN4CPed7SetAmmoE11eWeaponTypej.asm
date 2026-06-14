; =========================================================
; Game Engine Function: _ZN4CPed7SetAmmoE11eWeaponTypej
; Address            : 0x4A5212 - 0x4A5268
; =========================================================

4A5212:  PUSH            {R4,R5,R7,LR}
4A5214:  ADD             R7, SP, #8
4A5216:  MOV             R5, R0
4A5218:  MOV             R0, R1
4A521A:  MOVS            R1, #1
4A521C:  MOV             R4, R2
4A521E:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
4A5222:  LDR             R0, [R0,#0x14]
4A5224:  ADDS            R1, R0, #1
4A5226:  IT EQ
4A5228:  POPEQ           {R4,R5,R7,PC}
4A522A:  RSB.W           R0, R0, R0,LSL#3
4A522E:  MOV             R1, #0x1869F
4A5236:  CMP             R4, R1
4A5238:  ADD.W           R0, R5, R0,LSL#2
4A523C:  LDR.W           R3, [R0,#0x5AC]
4A5240:  LDR.W           R2, [R0,#0x5A8]
4A5244:  IT LT
4A5246:  MOVLT           R1, R4
4A5248:  CMP             R1, R3
4A524A:  IT LT
4A524C:  MOVLT           R3, R1
4A524E:  CMP             R2, #3
4A5250:  STR.W           R3, [R0,#0x5AC]
4A5254:  STR.W           R1, [R0,#0x5B0]
4A5258:  BNE             locret_4A5266
4A525A:  CMP             R4, #1
4A525C:  ITTT GE
4A525E:  ADDGE.W         R0, R0, #0x5A8
4A5262:  MOVGE           R1, #0
4A5264:  STRGE           R1, [R0]
4A5266:  POP             {R4,R5,R7,PC}
