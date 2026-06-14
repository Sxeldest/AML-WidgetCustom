; =========================================================
; Game Engine Function: _ZN22CAETwinLoopSoundEntity19UpdateTwinLoopSoundE7CVectorff
; Address            : 0x3AAB78 - 0x3AABEE
; =========================================================

3AAB78:  PUSH            {R4-R7,LR}
3AAB7A:  ADD             R7, SP, #0xC
3AAB7C:  PUSH.W          {R8}
3AAB80:  VPUSH           {D8-D9}
3AAB84:  MOV             R4, R0
3AAB86:  VLDR            S16, [R7,#arg_4]
3AAB8A:  LDR.W           R0, [R4,#0xA0]
3AAB8E:  MOV             R8, R3
3AAB90:  VLDR            S18, [R7,#arg_0]
3AAB94:  MOV             R6, R2
3AAB96:  MOV             R5, R1
3AAB98:  CBZ             R0, loc_3AABBC
3AAB9A:  MOV             R1, R5
3AAB9C:  MOV             R2, R6
3AAB9E:  MOV             R3, R8
3AABA0:  BLX             j__ZN8CAESound11SetPositionE7CVector; CAESound::SetPosition(CVector)
3AABA4:  LDRB.W          R0, [R4,#0x98]
3AABA8:  CMP             R0, #0
3AABAA:  ITT NE
3AABAC:  LDRNE.W         R0, [R4,#0xA0]
3AABB0:  VSTRNE          S18, [R0,#0x14]
3AABB4:  LDR.W           R0, [R4,#0xA0]
3AABB8:  VSTR            S16, [R0,#0x1C]
3AABBC:  LDR.W           R0, [R4,#0xA4]
3AABC0:  CBZ             R0, loc_3AABE4
3AABC2:  MOV             R1, R5
3AABC4:  MOV             R2, R6
3AABC6:  MOV             R3, R8
3AABC8:  BLX             j__ZN8CAESound11SetPositionE7CVector; CAESound::SetPosition(CVector)
3AABCC:  LDRB.W          R0, [R4,#0x98]
3AABD0:  CMP             R0, #0
3AABD2:  ITT EQ
3AABD4:  LDREQ.W         R0, [R4,#0xA4]
3AABD8:  VSTREQ          S18, [R0,#0x14]
3AABDC:  LDR.W           R0, [R4,#0xA4]
3AABE0:  VSTR            S16, [R0,#0x1C]
3AABE4:  VPOP            {D8-D9}
3AABE8:  POP.W           {R8}
3AABEC:  POP             {R4-R7,PC}
