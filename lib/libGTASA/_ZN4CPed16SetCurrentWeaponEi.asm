; =========================================================
; Game Engine Function: _ZN4CPed16SetCurrentWeaponEi
; Address            : 0x4A5118 - 0x4A51AC
; =========================================================

4A5118:  PUSH            {R4,R5,R7,LR}
4A511A:  ADD             R7, SP, #8
4A511C:  MOV             R5, R1
4A511E:  MOV             R4, R0
4A5120:  ADDS            R0, R5, #1
4A5122:  IT EQ
4A5124:  POPEQ           {R4,R5,R7,PC}
4A5126:  LDRSB.W         R1, [R4,#0x71C]
4A512A:  CMP             R1, #0
4A512C:  RSB.W           R0, R1, R1,LSL#3
4A5130:  ADD.W           R0, R4, R0,LSL#2
4A5134:  LDR.W           R0, [R0,#0x5A4]
4A5138:  BEQ             loc_4A515C
4A513A:  CBNZ            R0, loc_4A515C
4A513C:  MOVS            R0, #0
4A513E:  MOVS            R1, #1
4A5140:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
4A5144:  LDR             R1, [R0,#0xC]; int
4A5146:  MOV             R0, R4; this
4A5148:  BLX             j__ZN4CPed17RemoveWeaponModelEi; CPed::RemoveWeaponModel(int)
4A514C:  LDRSB.W         R0, [R4,#0x71C]
4A5150:  RSB.W           R0, R0, R0,LSL#3
4A5154:  ADD.W           R0, R4, R0,LSL#2
4A5158:  LDR.W           R0, [R0,#0x5A4]
4A515C:  CBZ             R0, loc_4A516C
4A515E:  MOVS            R1, #1
4A5160:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
4A5164:  LDR             R1, [R0,#0xC]; int
4A5166:  MOV             R0, R4; this
4A5168:  BLX             j__ZN4CPed17RemoveWeaponModelEi; CPed::RemoveWeaponModel(int)
4A516C:  LDR.W           R0, [R4,#0x444]
4A5170:  STRB.W          R5, [R4,#0x71C]
4A5174:  CMP             R0, #0
4A5176:  IT NE
4A5178:  STRBNE.W        R5, [R0,#0x20]
4A517C:  RSB.W           R0, R5, R5,LSL#3
4A5180:  ADD.W           R0, R4, R0,LSL#2
4A5184:  LDR.W           R0, [R0,#0x5A4]
4A5188:  CBZ             R0, locret_4A51AA
4A518A:  LDRSB.W         R0, [R4,#0x71C]
4A518E:  MOVS            R1, #1
4A5190:  RSB.W           R0, R0, R0,LSL#3
4A5194:  ADD.W           R0, R4, R0,LSL#2
4A5198:  LDR.W           R0, [R0,#0x5A4]
4A519C:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
4A51A0:  LDR             R1, [R0,#0xC]; int
4A51A2:  MOV             R0, R4; this
4A51A4:  POP.W           {R4,R5,R7,LR}
4A51A8:  B               _ZN4CPed14AddWeaponModelEi; CPed::AddWeaponModel(int)
4A51AA:  POP             {R4,R5,R7,PC}
