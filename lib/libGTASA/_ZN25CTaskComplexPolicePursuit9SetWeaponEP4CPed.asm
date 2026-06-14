; =========================================================
; Game Engine Function: _ZN25CTaskComplexPolicePursuit9SetWeaponEP4CPed
; Address            : 0x53DD8A - 0x53DE4A
; =========================================================

53DD8A:  PUSH            {R4,R6,R7,LR}
53DD8C:  ADD             R7, SP, #8
53DD8E:  MOV.W           R0, #0xFFFFFFFF; int
53DD92:  MOV             R4, R1
53DD94:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
53DD98:  LDR             R0, [R0,#0x2C]
53DD9A:  CMP             R0, #2
53DD9C:  BLT             loc_53DDB2
53DD9E:  LDRSB.W         R0, [R4,#0x71C]
53DDA2:  RSB.W           R0, R0, R0,LSL#3
53DDA6:  ADD.W           R0, R4, R0,LSL#2
53DDAA:  LDR.W           R0, [R0,#0x5A4]
53DDAE:  CBNZ            R0, locret_53DDC4
53DDB0:  B               loc_53DE24
53DDB2:  CMP             R0, #1
53DDB4:  BNE             locret_53DDC4
53DDB6:  MOV.W           R0, #0xFFFFFFFF; int
53DDBA:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
53DDBE:  LDR.W           R0, [R0,#0x56C]
53DDC2:  CBZ             R0, loc_53DDC6
53DDC4:  POP             {R4,R6,R7,PC}
53DDC6:  LDR.W           R0, [R4,#0x44C]
53DDCA:  CMP             R0, #0x31 ; '1'
53DDCC:  IT EQ
53DDCE:  POPEQ           {R4,R6,R7,PC}
53DDD0:  MOV             R0, R4
53DDD2:  MOVS            R1, #3
53DDD4:  BLX             j__ZN4CPed23DoWeHaveWeaponAvailableE11eWeaponType; CPed::DoWeHaveWeaponAvailable(eWeaponType)
53DDD8:  CMP             R0, #1
53DDDA:  BNE             loc_53DE24
53DDDC:  MOV.W           R0, #0xFFFFFFFF; int
53DDE0:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
53DDE4:  LDRSB.W         R1, [R0,#0x71C]
53DDE8:  RSB.W           R1, R1, R1,LSL#3
53DDEC:  ADD.W           R0, R0, R1,LSL#2
53DDF0:  MOVS            R1, #1
53DDF2:  LDR.W           R0, [R0,#0x5A4]
53DDF6:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
53DDFA:  LDR             R0, [R0]
53DDFC:  CMP             R0, #1
53DDFE:  BEQ             loc_53DE24
53DE00:  MOV.W           R0, #0xFFFFFFFF; int
53DE04:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
53DE08:  LDRSB.W         R1, [R0,#0x71C]
53DE0C:  RSB.W           R1, R1, R1,LSL#3
53DE10:  ADD.W           R0, R0, R1,LSL#2
53DE14:  MOVS            R1, #1
53DE16:  LDR.W           R0, [R0,#0x5A4]
53DE1A:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
53DE1E:  LDR             R0, [R0]
53DE20:  CMP             R0, #2
53DE22:  BNE             loc_53DE3E
53DE24:  MOV             R0, R4
53DE26:  MOVS            R1, #0x19
53DE28:  BLX             j__ZN4CPed23DoWeHaveWeaponAvailableE11eWeaponType; CPed::DoWeHaveWeaponAvailable(eWeaponType)
53DE2C:  CMP             R0, #1
53DE2E:  MOV             R0, R4
53DE30:  ITE EQ
53DE32:  MOVEQ           R1, #0x19
53DE34:  MOVNE           R1, #0x16
53DE36:  POP.W           {R4,R6,R7,LR}
53DE3A:  B.W             j_j__ZN4CPed16SetCurrentWeaponE11eWeaponType; j_CPed::SetCurrentWeapon(eWeaponType)
53DE3E:  MOV             R0, R4
53DE40:  MOVS            R1, #3
53DE42:  POP.W           {R4,R6,R7,LR}
53DE46:  B.W             j_j__ZN4CPed16SetCurrentWeaponE11eWeaponType; j_CPed::SetCurrentWeapon(eWeaponType)
