; =========================================================
; Game Engine Function: _ZN8CVehicle38ScanAndMarkTargetForHeatSeekingMissileEP7CEntity
; Address            : 0x58FA00 - 0x58FB60
; =========================================================

58FA00:  PUSH            {R4-R7,LR}
58FA02:  ADD             R7, SP, #0xC
58FA04:  PUSH.W          {R8-R11}
58FA08:  SUB             SP, SP, #0x1C
58FA0A:  MOV             R9, R0
58FA0C:  ADD.W           R8, R9, #4
58FA10:  LDR.W           R0, [R9,#0x14]
58FA14:  MOVW            LR, #0x999A
58FA18:  MOV             R2, R8
58FA1A:  MOV.W           R12, #1
58FA1E:  CMP             R0, #0
58FA20:  LDRD.W          R3, R6, [R0,#0x10]
58FA24:  LDR             R5, [R0,#0x18]
58FA26:  IT NE
58FA28:  ADDNE.W         R2, R0, #0x30 ; '0'
58FA2C:  LDRD.W          R0, R4, [R2]
58FA30:  MOVT            LR, #0x3F99
58FA34:  LDR             R2, [R2,#8]
58FA36:  STRD.W          R6, R5, [SP,#0x38+var_38]
58FA3A:  STRD.W          LR, R9, [SP,#0x38+var_30]
58FA3E:  STRD.W          R12, R1, [SP,#0x38+var_28]
58FA42:  MOV             R1, R4
58FA44:  BLX             j__ZN7CWeapon31PickTargetForHeatSeekingMissileE7CVectorS0_fP7CEntitybS2_; CWeapon::PickTargetForHeatSeekingMissile(CVector,CVector,float,CEntity *,bool,CEntity *)
58FA48:  MOV             R4, R0
58FA4A:  LDR.W           R0, [R9,#0x5A4]
58FA4E:  MOVS            R6, #0
58FA50:  CMP             R0, #4
58FA52:  BNE             loc_58FA66
58FA54:  LDR.W           R0, [R9,#0x9F8]
58FA58:  LSLS            R0, R0, #1
58FA5A:  IT EQ
58FA5C:  MOVEQ           R6, #1
58FA5E:  MOV             R0, R6
58FA60:  MOV             R6, R9
58FA62:  CBNZ            R4, loc_58FA6C
58FA64:  B               loc_58FAF6
58FA66:  MOVS            R0, #0
58FA68:  CMP             R4, #0
58FA6A:  BEQ             loc_58FAF6
58FA6C:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x58FA72)
58FA6E:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
58FA70:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
58FA72:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
58FA74:  SUBS            R0, R1, R0
58FA76:  CMP.W           R0, #0x3E8
58FA7A:  BLS             loc_58FAF6
58FA7C:  LDR.W           R11, [R9,#0x1C]
58FA80:  MOVS            R5, #1
58FA82:  LDR.W           R10, [R4,#0x1C]
58FA86:  MOVS            R3, #1; bool
58FA88:  BIC.W           R0, R11, #1
58FA8C:  STR.W           R0, [R9,#0x1C]
58FA90:  LDR             R1, [R4,#0x1C]
58FA92:  LDR             R0, [R4,#0x14]
58FA94:  BIC.W           R1, R1, #1
58FA98:  STR             R1, [R4,#0x1C]
58FA9A:  LDR.W           R2, [R9,#0x14]
58FA9E:  MOVS            R1, #0
58FAA0:  STRD.W          R1, R5, [SP,#0x38+var_38]; bool
58FAA4:  CMP             R0, #0
58FAA6:  STRD.W          R1, R5, [SP,#0x38+var_30]; bool
58FAAA:  STR             R1, [SP,#0x38+var_28]; bool
58FAAC:  ADD.W           R1, R0, #0x30 ; '0'
58FAB0:  IT EQ
58FAB2:  ADDEQ           R1, R4, #4; CVector *
58FAB4:  CMP             R2, #0
58FAB6:  IT NE
58FAB8:  ADDNE.W         R8, R2, #0x30 ; '0'
58FABC:  MOVS            R2, #(stderr+1); CVector *
58FABE:  MOV             R0, R8; this
58FAC0:  BLX             j__ZN6CWorld21GetIsLineOfSightClearERK7CVectorS2_bbbbbbb; CWorld::GetIsLineOfSightClear(CVector const&,CVector const&,bool,bool,bool,bool,bool,bool,bool)
58FAC4:  LDR.W           R1, [R9,#0x1C]
58FAC8:  CMP             R6, #0
58FACA:  BFI.W           R1, R11, #0, #1
58FACE:  STR.W           R1, [R9,#0x1C]
58FAD2:  LDR             R1, [R4,#0x1C]
58FAD4:  BFI.W           R1, R10, #0, #1
58FAD8:  STR             R1, [R4,#0x1C]
58FADA:  BEQ             loc_58FAF2
58FADC:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x58FAE4)
58FADE:  LSLS            R2, R0, #0x1F
58FAE0:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
58FAE2:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
58FAE4:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
58FAE6:  CMP             R1, #1
58FAE8:  IT HI
58FAEA:  ORRHI.W         R2, R5, R0,LSL#31
58FAEE:  STR.W           R2, [R6,#0x9F8]
58FAF2:  CBNZ            R0, loc_58FB0C
58FAF4:  B               loc_58FB48
58FAF6:  CBZ             R6, loc_58FB0A
58FAF8:  MOV.W           R8, #0
58FAFC:  CBZ             R4, loc_58FB50
58FAFE:  LDR.W           R0, [R6,#0x9F8]
58FB02:  CMP.W           R0, #0xFFFFFFFF
58FB06:  BLE             loc_58FB0C
58FB08:  B               loc_58FB50
58FB0A:  CBZ             R4, loc_58FB48
58FB0C:  LDRB.W          R0, [R9,#0x3A]
58FB10:  CMP             R0, #7
58FB12:  BHI             loc_58FB4E
58FB14:  LDR             R0, [R4,#0x14]
58FB16:  MOVW            R6, #0x6666
58FB1A:  MOV.W           R12, #1
58FB1E:  MOVT            R6, #0x3FA6
58FB22:  ADD.W           R3, R0, #0x30 ; '0'
58FB26:  CMP             R0, #0
58FB28:  IT EQ
58FB2A:  ADDEQ           R3, R4, #4
58FB2C:  MOVS            R5, #0x64 ; 'd'
58FB2E:  LDM             R3, {R1-R3}
58FB30:  MOVS            R0, #0xFF
58FB32:  ADD.W           LR, SP, #0x38+var_30
58FB36:  STRD.W          R0, R0, [SP,#0x38+var_38]
58FB3A:  STM.W           LR, {R0,R5,R6,R12}
58FB3E:  MOVS            R0, #0
58FB40:  BLX             j__ZN14CWeaponEffects10MarkTargetEi7CVectorhhhhfh; CWeaponEffects::MarkTarget(int,CVector,uchar,uchar,uchar,uchar,float,uchar)
58FB44:  MOV             R8, R4
58FB46:  B               loc_58FB56
58FB48:  MOV.W           R8, #0
58FB4C:  B               loc_58FB50
58FB4E:  MOV             R8, R4
58FB50:  MOVS            R0, #0; this
58FB52:  BLX             j__ZN14CWeaponEffects25ClearCrossHairImmediatelyEi; CWeaponEffects::ClearCrossHairImmediately(int)
58FB56:  MOV             R0, R8
58FB58:  ADD             SP, SP, #0x1C
58FB5A:  POP.W           {R8-R11}
58FB5E:  POP             {R4-R7,PC}
