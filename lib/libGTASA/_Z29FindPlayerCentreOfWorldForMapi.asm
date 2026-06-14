; =========================================================
; Game Engine Function: _Z29FindPlayerCentreOfWorldForMapi
; Address            : 0x40BCE8 - 0x40BDB6
; =========================================================

40BCE8:  PUSH            {R7,LR}
40BCEA:  MOV             R7, SP
40BCEC:  LDR             R2, =(_ZN4CHID20currentInstanceIndexE_ptr - 0x40BCF2)
40BCEE:  ADD             R2, PC; _ZN4CHID20currentInstanceIndexE_ptr
40BCF0:  LDR             R2, [R2]; CHID::currentInstanceIndex ...
40BCF2:  LDR             R2, [R2]; CHID::currentInstanceIndex
40BCF4:  CMP             R2, #1
40BCF6:  BNE             loc_40BD04
40BCF8:  LDR             R2, =(_ZN6CWorld7PlayersE_ptr - 0x40BCFE)
40BCFA:  ADD             R2, PC; _ZN6CWorld7PlayersE_ptr
40BCFC:  LDR             R2, [R2]; CWorld::Players ...
40BCFE:  ADD.W           R2, R2, #0x194
40BD02:  B               loc_40BD24
40BD04:  LDR             R2, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x40BD14)
40BD06:  CMP             R1, #0
40BD08:  LDR.W           R12, =(_ZN6CWorld7PlayersE_ptr - 0x40BD16)
40BD0C:  MOV.W           LR, #0x194
40BD10:  ADD             R2, PC; _ZN6CWorld13PlayerInFocusE_ptr
40BD12:  ADD             R12, PC; _ZN6CWorld7PlayersE_ptr
40BD14:  LDR             R2, [R2]; CWorld::PlayerInFocus ...
40BD16:  LDR.W           R3, [R12]; CWorld::Players ...
40BD1A:  LDR             R2, [R2]; CWorld::PlayerInFocus
40BD1C:  IT GE
40BD1E:  MOVGE           R2, R1
40BD20:  MLA.W           R2, R2, LR, R3
40BD24:  LDR             R2, [R2]
40BD26:  MOVS            R3, #0
40BD28:  STRD.W          R3, R3, [R0]
40BD2C:  CMP             R2, #0
40BD2E:  STR             R3, [R0,#8]
40BD30:  IT EQ
40BD32:  POPEQ           {R7,PC}
40BD34:  LDR             R2, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x40BD3E)
40BD36:  CMP             R1, #0
40BD38:  LDR             R3, =(_ZN8CCarCtrl26bCarsGeneratedAroundCameraE_ptr - 0x40BD40)
40BD3A:  ADD             R2, PC; _ZN6CWorld13PlayerInFocusE_ptr
40BD3C:  ADD             R3, PC; _ZN8CCarCtrl26bCarsGeneratedAroundCameraE_ptr
40BD3E:  LDR             R2, [R2]; CWorld::PlayerInFocus ...
40BD40:  LDR             R3, [R3]; CCarCtrl::bCarsGeneratedAroundCamera ...
40BD42:  LDR.W           LR, [R2]; CWorld::PlayerInFocus
40BD46:  LDRB            R2, [R3]; CCarCtrl::bCarsGeneratedAroundCamera
40BD48:  IT LT
40BD4A:  MOVLT           R1, LR
40BD4C:  CBZ             R2, loc_40BD56
40BD4E:  LDR             R1, =(TheCamera_ptr - 0x40BD54)
40BD50:  ADD             R1, PC; TheCamera_ptr
40BD52:  LDR             R2, [R1]; TheCamera
40BD54:  B               loc_40BD98
40BD56:  LDR             R2, =(_ZN6CWorld7PlayersE_ptr - 0x40BD60)
40BD58:  MOV.W           R12, #0x194
40BD5C:  ADD             R2, PC; _ZN6CWorld7PlayersE_ptr
40BD5E:  LDR             R2, [R2]; CWorld::Players ...
40BD60:  MLA.W           R2, R1, R12, R2
40BD64:  LDR.W           R2, [R2,#0xB0]
40BD68:  CBNZ            R2, loc_40BD98
40BD6A:  LDR             R2, =(_ZN6CWorld7PlayersE_ptr - 0x40BD74)
40BD6C:  SMULBB.W        R3, LR, R12
40BD70:  ADD             R2, PC; _ZN6CWorld7PlayersE_ptr
40BD72:  LDR             R2, [R2]; CWorld::Players ...
40BD74:  LDR             R2, [R2,R3]
40BD76:  CMP             R2, #0
40BD78:  ITT NE
40BD7A:  LDRBNE.W        R3, [R2,#0x485]
40BD7E:  MOVSNE.W        R3, R3,LSL#31
40BD82:  BEQ             loc_40BD8A
40BD84:  LDR.W           R2, [R2,#0x590]
40BD88:  CBNZ            R2, loc_40BD98
40BD8A:  LDR             R2, =(_ZN6CWorld7PlayersE_ptr - 0x40BD96)
40BD8C:  MOV.W           R3, #0x194
40BD90:  MULS            R1, R3
40BD92:  ADD             R2, PC; _ZN6CWorld7PlayersE_ptr
40BD94:  LDR             R2, [R2]; CWorld::Players ...
40BD96:  LDR             R2, [R2,R1]
40BD98:  LDR             R1, [R2,#0x14]
40BD9A:  ADD.W           R3, R1, #0x30 ; '0'
40BD9E:  CMP             R1, #0
40BDA0:  IT EQ
40BDA2:  ADDEQ           R3, R2, #4
40BDA4:  VLDR            D16, [R3]
40BDA8:  LDR             R1, [R3,#8]; CVector *
40BDAA:  STR             R1, [R0,#8]
40BDAC:  VSTR            D16, [R0]
40BDB0:  BLX             j__ZN17CEntryExitManager33GetPositionRelativeToOutsideWorldER7CVector; CEntryExitManager::GetPositionRelativeToOutsideWorld(CVector &)
40BDB4:  POP             {R7,PC}
