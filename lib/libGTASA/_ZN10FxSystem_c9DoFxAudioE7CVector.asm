; =========================================================
; Game Engine Function: _ZN10FxSystem_c9DoFxAudioE7CVector
; Address            : 0x36ECB4 - 0x36EE64
; =========================================================

36ECB4:  PUSH            {R4-R7,LR}
36ECB6:  ADD             R7, SP, #0xC
36ECB8:  PUSH.W          {R8-R11}
36ECBC:  SUB             SP, SP, #0x2C
36ECBE:  MOV             R4, R0
36ECC0:  ADD             R0, SP, #0x48+var_28
36ECC2:  STM             R0!, {R1-R3}
36ECC4:  ADR             R0, aFire; "fire"
36ECC6:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
36ECCA:  MOV             R8, R0
36ECCC:  ADR             R0, aFireMed; "fire_med"
36ECCE:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
36ECD2:  MOV             R6, R0
36ECD4:  ADR             R0, aFireLarge; "fire_large"
36ECD6:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
36ECDA:  MOV             R5, R0
36ECDC:  ADR             R0, aFireCar; "fire_car"
36ECDE:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
36ECE2:  MOV             R11, R0
36ECE4:  ADR             R0, aFireBike; "fire_bike"
36ECE6:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
36ECEA:  MOV             R10, R0
36ECEC:  ADR             R0, aFlame; "Flame"
36ECEE:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
36ECF2:  MOV             R9, R0
36ECF4:  ADR             R0, aMolotovFlame; "molotov_flame"
36ECF6:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
36ECFA:  STR             R0, [SP,#0x48+var_44]
36ECFC:  ADR             R0, aWaterHydrant_0; "water_hydrant"
36ECFE:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
36ED02:  STR             R0, [SP,#0x48+var_40]
36ED04:  ADR             R0, aWaterFountain; "water_fountain"
36ED06:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
36ED0A:  STR             R0, [SP,#0x48+var_3C]
36ED0C:  ADR             R0, aWaterFntTme; "water_fnt_tme"
36ED0E:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
36ED12:  STR             R0, [SP,#0x48+var_38]
36ED14:  ADR             R0, aSmokeFlare; "smoke_flare"
36ED16:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
36ED1A:  STR             R0, [SP,#0x48+var_34]
36ED1C:  ADR             R0, aTeargas; "teargas"
36ED1E:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
36ED22:  STR             R0, [SP,#0x48+var_30]
36ED24:  ADR             R0, aHeliDust; "heli_dust"
36ED26:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
36ED2A:  STR             R0, [SP,#0x48+var_2C]
36ED2C:  LDR             R0, [R4,#8]
36ED2E:  LDR             R0, [R0,#8]
36ED30:  CMP             R0, R8
36ED32:  BEQ             loc_36EDF8
36ED34:  CMP             R0, R6
36ED36:  BEQ             loc_36EE0C
36ED38:  CMP             R0, R5
36ED3A:  BEQ             loc_36EE20
36ED3C:  CMP             R0, R11
36ED3E:  BEQ             loc_36EE36
36ED40:  CMP             R0, R10
36ED42:  BEQ.W           loc_36EE4C
36ED46:  CMP             R0, R9
36ED48:  BNE             loc_36ED5A
36ED4A:  ADD.W           R0, R4, #0x80; this
36ED4E:  ADD             R2, SP, #0x48+var_28; CVector *
36ED50:  MOVS            R1, #0x87; int
36ED52:  BLX             j__ZN18CAEFireAudioEntity13AddAudioEventEiR7CVector; CAEFireAudioEntity::AddAudioEvent(int,CVector &)
36ED56:  LDR             R0, [R4,#8]
36ED58:  LDR             R0, [R0,#8]
36ED5A:  LDR             R1, [SP,#0x48+var_44]
36ED5C:  CMP             R0, R1
36ED5E:  BNE             loc_36ED70
36ED60:  ADD.W           R0, R4, #0x80; this
36ED64:  ADD             R2, SP, #0x48+var_28; CVector *
36ED66:  MOVS            R1, #0x88; int
36ED68:  BLX             j__ZN18CAEFireAudioEntity13AddAudioEventEiR7CVector; CAEFireAudioEntity::AddAudioEvent(int,CVector &)
36ED6C:  LDR             R0, [R4,#8]
36ED6E:  LDR             R0, [R0,#8]
36ED70:  LDR             R1, [SP,#0x48+var_40]
36ED72:  CMP             R0, R1
36ED74:  BNE             loc_36ED86
36ED76:  ADD.W           R0, R4, #0x80; this
36ED7A:  ADD             R2, SP, #0x48+var_28; CVector *
36ED7C:  MOVS            R1, #0x89; int
36ED7E:  BLX             j__ZN18CAEFireAudioEntity13AddAudioEventEiR7CVector; CAEFireAudioEntity::AddAudioEvent(int,CVector &)
36ED82:  LDR             R0, [R4,#8]
36ED84:  LDR             R0, [R0,#8]
36ED86:  LDR             R1, [SP,#0x48+var_3C]
36ED88:  CMP             R0, R1
36ED8A:  BNE             loc_36ED9C
36ED8C:  ADD.W           R0, R4, #0x80; this
36ED90:  ADD             R2, SP, #0x48+var_28; CVector *
36ED92:  MOVS            R1, #0x89; int
36ED94:  BLX             j__ZN18CAEFireAudioEntity13AddAudioEventEiR7CVector; CAEFireAudioEntity::AddAudioEvent(int,CVector &)
36ED98:  LDR             R0, [R4,#8]
36ED9A:  LDR             R0, [R0,#8]
36ED9C:  LDR             R1, [SP,#0x48+var_38]
36ED9E:  CMP             R0, R1
36EDA0:  BNE             loc_36EDB2
36EDA2:  ADD.W           R0, R4, #0x80; this
36EDA6:  ADD             R2, SP, #0x48+var_28; CVector *
36EDA8:  MOVS            R1, #0x89; int
36EDAA:  BLX             j__ZN18CAEFireAudioEntity13AddAudioEventEiR7CVector; CAEFireAudioEntity::AddAudioEvent(int,CVector &)
36EDAE:  LDR             R0, [R4,#8]
36EDB0:  LDR             R0, [R0,#8]
36EDB2:  LDR             R1, [SP,#0x48+var_34]
36EDB4:  CMP             R0, R1
36EDB6:  BNE             loc_36EDC8
36EDB8:  ADD.W           R0, R4, #0x80; this
36EDBC:  ADD             R2, SP, #0x48+var_28; CVector *
36EDBE:  MOVS            R1, #0x8A; int
36EDC0:  BLX             j__ZN18CAEFireAudioEntity13AddAudioEventEiR7CVector; CAEFireAudioEntity::AddAudioEvent(int,CVector &)
36EDC4:  LDR             R0, [R4,#8]
36EDC6:  LDR             R0, [R0,#8]
36EDC8:  LDR             R1, [SP,#0x48+var_30]
36EDCA:  CMP             R0, R1
36EDCC:  BNE             loc_36EDDE
36EDCE:  ADD.W           R0, R4, #0x80; this
36EDD2:  ADD             R2, SP, #0x48+var_28; CVector *
36EDD4:  MOVS            R1, #0x8B; int
36EDD6:  BLX             j__ZN18CAEFireAudioEntity13AddAudioEventEiR7CVector; CAEFireAudioEntity::AddAudioEvent(int,CVector &)
36EDDA:  LDR             R0, [R4,#8]
36EDDC:  LDR             R0, [R0,#8]
36EDDE:  LDR             R1, [SP,#0x48+var_2C]
36EDE0:  CMP             R0, R1
36EDE2:  BNE             loc_36EDF0
36EDE4:  ADD.W           R0, R4, #0x80; this
36EDE8:  ADD             R2, SP, #0x48+var_28; CVector *
36EDEA:  MOVS            R1, #0x8C; int
36EDEC:  BLX             j__ZN18CAEFireAudioEntity13AddAudioEventEiR7CVector; CAEFireAudioEntity::AddAudioEvent(int,CVector &)
36EDF0:  ADD             SP, SP, #0x2C ; ','
36EDF2:  POP.W           {R8-R11}
36EDF6:  POP             {R4-R7,PC}
36EDF8:  ADD.W           R0, R4, #0x80; this
36EDFC:  ADD             R2, SP, #0x48+var_28; CVector *
36EDFE:  MOVS            R1, #0x82; int
36EE00:  BLX             j__ZN18CAEFireAudioEntity13AddAudioEventEiR7CVector; CAEFireAudioEntity::AddAudioEvent(int,CVector &)
36EE04:  LDR             R0, [R4,#8]
36EE06:  LDR             R0, [R0,#8]
36EE08:  CMP             R0, R6
36EE0A:  BNE             loc_36ED38
36EE0C:  ADD.W           R0, R4, #0x80; this
36EE10:  ADD             R2, SP, #0x48+var_28; CVector *
36EE12:  MOVS            R1, #0x83; int
36EE14:  BLX             j__ZN18CAEFireAudioEntity13AddAudioEventEiR7CVector; CAEFireAudioEntity::AddAudioEvent(int,CVector &)
36EE18:  LDR             R0, [R4,#8]
36EE1A:  LDR             R0, [R0,#8]
36EE1C:  CMP             R0, R5
36EE1E:  BNE             loc_36ED3C
36EE20:  ADD.W           R0, R4, #0x80; this
36EE24:  ADD             R2, SP, #0x48+var_28; CVector *
36EE26:  MOVS            R1, #0x84; int
36EE28:  BLX             j__ZN18CAEFireAudioEntity13AddAudioEventEiR7CVector; CAEFireAudioEntity::AddAudioEvent(int,CVector &)
36EE2C:  LDR             R0, [R4,#8]
36EE2E:  LDR             R0, [R0,#8]
36EE30:  CMP             R0, R11
36EE32:  BNE.W           loc_36ED40
36EE36:  ADD.W           R0, R4, #0x80; this
36EE3A:  ADD             R2, SP, #0x48+var_28; CVector *
36EE3C:  MOVS            R1, #0x85; int
36EE3E:  BLX             j__ZN18CAEFireAudioEntity13AddAudioEventEiR7CVector; CAEFireAudioEntity::AddAudioEvent(int,CVector &)
36EE42:  LDR             R0, [R4,#8]
36EE44:  LDR             R0, [R0,#8]
36EE46:  CMP             R0, R10
36EE48:  BNE.W           loc_36ED46
36EE4C:  ADD.W           R0, R4, #0x80; this
36EE50:  ADD             R2, SP, #0x48+var_28; CVector *
36EE52:  MOVS            R1, #0x86; int
36EE54:  BLX             j__ZN18CAEFireAudioEntity13AddAudioEventEiR7CVector; CAEFireAudioEntity::AddAudioEvent(int,CVector &)
36EE58:  LDR             R0, [R4,#8]
36EE5A:  LDR             R0, [R0,#8]
36EE5C:  CMP             R0, R9
36EE5E:  BEQ.W           loc_36ED4A
36EE62:  B               loc_36ED5A
