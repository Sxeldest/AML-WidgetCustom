; =========================================================
; Game Engine Function: _ZN4CPed9GrantAmmoE11eWeaponTypej
; Address            : 0x4A51C4 - 0x4A5212
; =========================================================

4A51C4:  PUSH            {R4,R5,R7,LR}
4A51C6:  ADD             R7, SP, #8
4A51C8:  MOV             R5, R0
4A51CA:  MOV             R0, R1
4A51CC:  MOVS            R1, #1
4A51CE:  MOV             R4, R2
4A51D0:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
4A51D4:  LDR             R0, [R0,#0x14]
4A51D6:  ADDS            R1, R0, #1
4A51D8:  IT EQ
4A51DA:  POPEQ           {R4,R5,R7,PC}
4A51DC:  RSB.W           R0, R0, R0,LSL#3
4A51E0:  MOV             R3, #0x1869F
4A51E8:  ADD.W           R0, R5, R0,LSL#2
4A51EC:  LDR.W           R2, [R0,#0x5B0]
4A51F0:  LDR.W           R1, [R0,#0x5A8]
4A51F4:  ADD             R2, R4
4A51F6:  CMP             R2, R3
4A51F8:  IT LT
4A51FA:  MOVLT           R3, R2
4A51FC:  CMP             R2, #1
4A51FE:  STR.W           R3, [R0,#0x5B0]
4A5202:  BLT             locret_4A5210
4A5204:  CMP             R1, #3
4A5206:  ITTT EQ
4A5208:  ADDEQ.W         R0, R0, #0x5A8
4A520C:  MOVEQ           R1, #0
4A520E:  STREQ           R1, [R0]
4A5210:  POP             {R4,R5,R7,PC}
