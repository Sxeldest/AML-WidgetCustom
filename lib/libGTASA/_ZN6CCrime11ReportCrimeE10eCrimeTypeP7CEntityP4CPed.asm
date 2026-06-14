; =========================================================
; Game Engine Function: _ZN6CCrime11ReportCrimeE10eCrimeTypeP7CEntityP4CPed
; Address            : 0x3EA918 - 0x3EAAD0
; =========================================================

3EA918:  PUSH            {R4-R7,LR}
3EA91A:  ADD             R7, SP, #0xC
3EA91C:  PUSH.W          {R8,R9,R11}
3EA920:  SUB             SP, SP, #0x18
3EA922:  MOV             R6, R2
3EA924:  MOV             R9, R1
3EA926:  MOV             R4, R0
3EA928:  CMP             R6, #0
3EA92A:  BEQ.W           loc_3EAA66
3EA92E:  LDR.W           R0, [R6,#0x59C]
3EA932:  CMP             R0, #1
3EA934:  BHI.W           loc_3EAA66
3EA938:  CMP.W           R9, #0
3EA93C:  BEQ             loc_3EA9E2
3EA93E:  LDRB.W          R0, [R9,#0x3A]
3EA942:  AND.W           R0, R0, #7
3EA946:  CMP             R0, #3
3EA948:  BNE             loc_3EA9E2
3EA94A:  LDR.W           R0, [R9,#0x59C]; this
3EA94E:  BLX             j__ZN8CPedType39PoliceDontCareAboutCrimesAgainstPedTypeEi; CPedType::PoliceDontCareAboutCrimesAgainstPedType(int)
3EA952:  MOV             R8, R0
3EA954:  CMP             R4, #0
3EA956:  BEQ.W           loc_3EAA66
3EA95A:  CMP             R4, #2
3EA95C:  BNE             loc_3EA988
3EA95E:  LDRB.W          R0, [R9,#0x3A]
3EA962:  AND.W           R0, R0, #7
3EA966:  CMP             R0, #3
3EA968:  BNE             loc_3EA988
3EA96A:  MOV             R0, R9; CPed *
3EA96C:  BLX             j__Z17IsPedPointerValidP4CPed; IsPedPointerValid(CPed *)
3EA970:  CMP             R0, #1
3EA972:  BNE             loc_3EA988
3EA974:  LDR.W           R0, [R6,#0x444]
3EA978:  LDR             R0, [R0]
3EA97A:  LDR             R0, [R0,#0x2C]
3EA97C:  CBNZ            R0, loc_3EA988
3EA97E:  LDRB.W          R0, [R9,#0x486]
3EA982:  LSLS            R0, R0, #0x18
3EA984:  BMI.W           loc_3EAA8C
3EA988:  LDR             R0, [R6,#0x14]
3EA98A:  ADDS            R5, R6, #4
3EA98C:  CMP             R0, #0
3EA98E:  MOV             R1, R5
3EA990:  IT NE
3EA992:  ADDNE.W         R1, R0, #0x30 ; '0'
3EA996:  VLDR            D16, [R1]
3EA99A:  LDR             R0, [R1,#8]
3EA99C:  STR             R0, [SP,#0x30+var_20]
3EA99E:  MOV.W           R0, #0xFFFFFFFF; int
3EA9A2:  VSTR            D16, [SP,#0x30+var_28]
3EA9A6:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3EA9AA:  LDR.W           R0, [R0,#0x444]
3EA9AE:  LDR             R0, [R0]
3EA9B0:  VLDR            S0, [R0,#0x14]
3EA9B4:  VCMPE.F32       S0, #0.0
3EA9B8:  VMRS            APSR_nzcv, FPSCR
3EA9BC:  BLT             loc_3EAA40
3EA9BE:  LDR             R0, [R6,#0x14]
3EA9C0:  SUB.W           R3, R4, #0xC
3EA9C4:  CMP             R0, #0
3EA9C6:  IT NE
3EA9C8:  ADDNE.W         R5, R0, #0x30 ; '0'
3EA9CC:  CMP             R3, #8
3EA9CE:  LDM.W           R5, {R0-R2}
3EA9D2:  BHI             loc_3EA9EC
3EA9D4:  LDR             R6, =(unk_617060 - 0x3EA9DA)
3EA9D6:  ADD             R6, PC; unk_617060
3EA9D8:  ADD.W           R3, R6, R3,LSL#2
3EA9DC:  VLDR            S0, [R3]
3EA9E0:  B               loc_3EA9F0
3EA9E2:  MOV.W           R8, #0
3EA9E6:  CMP             R4, #0
3EA9E8:  BNE             loc_3EA95A
3EA9EA:  B               loc_3EAA66
3EA9EC:  VMOV.F32        S0, #14.0
3EA9F0:  VMOV            R3, S0
3EA9F4:  BLX             j__ZN7CWanted21WorkOutPolicePresenceE7CVectorf; CWanted::WorkOutPolicePresence(CVector,float)
3EA9F8:  CBNZ            R0, loc_3EAA10
3EA9FA:  CMP             R4, #0xE
3EA9FC:  BHI             loc_3EAA6E
3EA9FE:  MOVS            R0, #1
3EAA00:  MOVW            R1, #0x6030
3EAA04:  LSLS            R0, R4; this
3EAA06:  TST             R0, R1
3EAA08:  BEQ             loc_3EAA6E
3EAA0A:  BLX             j__ZN13CLocalisation10GermanGameEv; CLocalisation::GermanGame(void)
3EAA0E:  CBZ             R0, loc_3EAA6E
3EAA10:  MOV.W           R0, #0xFFFFFFFF; int
3EAA14:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3EAA18:  LDR.W           R0, [R0,#0x444]
3EAA1C:  ADD             R2, SP, #0x30+var_28
3EAA1E:  MOV             R1, R4
3EAA20:  MOV             R3, R9
3EAA22:  LDR             R0, [R0]
3EAA24:  STR.W           R8, [SP,#0x30+var_30]
3EAA28:  BLX             j__ZN7CWanted25RegisterCrime_ImmediatelyE10eCrimeTypeRK7CVectorjb; CWanted::RegisterCrime_Immediately(eCrimeType,CVector const&,uint,bool)
3EAA2C:  MOV.W           R0, #0xFFFFFFFF; int
3EAA30:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3EAA34:  LDR.W           R0, [R0,#0x444]
3EAA38:  MOVS            R1, #1; int
3EAA3A:  LDR             R0, [R0]; this
3EAA3C:  BLX             j__ZN7CWanted20SetWantedLevelNoDropEi; CWanted::SetWantedLevelNoDrop(int)
3EAA40:  CMP             R4, #0x13
3EAA42:  IT NE
3EAA44:  CMPNE           R4, #5
3EAA46:  BEQ             loc_3EAA58
3EAA48:  CMP             R4, #3
3EAA4A:  BNE             loc_3EAA66
3EAA4C:  MOV.W           R0, #0xFFFFFFFF; int
3EAA50:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3EAA54:  MOVS            R1, #1
3EAA56:  B               loc_3EAA62
3EAA58:  MOV.W           R0, #0xFFFFFFFF; int
3EAA5C:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3EAA60:  MOVS            R1, #2; int
3EAA62:  BLX             j__ZN10CPlayerPed20SetWantedLevelNoDropEi; CPlayerPed::SetWantedLevelNoDrop(int)
3EAA66:  ADD             SP, SP, #0x18
3EAA68:  POP.W           {R8,R9,R11}
3EAA6C:  POP             {R4-R7,PC}
3EAA6E:  MOV.W           R0, #0xFFFFFFFF; int
3EAA72:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3EAA76:  LDR.W           R0, [R0,#0x444]
3EAA7A:  ADD             R2, SP, #0x30+var_28
3EAA7C:  MOV             R1, R4
3EAA7E:  MOV             R3, R9
3EAA80:  LDR             R0, [R0]
3EAA82:  STR.W           R8, [SP,#0x30+var_30]
3EAA86:  BLX             j__ZN7CWanted13RegisterCrimeE10eCrimeTypeRK7CVectorjb; CWanted::RegisterCrime(eCrimeType,CVector const&,uint,bool)
3EAA8A:  B               loc_3EAA40
3EAA8C:  LDR.W           R0, [R9,#0x44C]
3EAA90:  BIC.W           R0, R0, #1
3EAA94:  CMP             R0, #0x36 ; '6'
3EAA96:  BEQ             loc_3EAA66
3EAA98:  LDR             R0, =(TheText_ptr - 0x3EAAA0)
3EAA9A:  ADR             R1, aGoodboy; "GOODBOY"
3EAA9C:  ADD             R0, PC; TheText_ptr
3EAA9E:  LDR             R0, [R0]; TheText ; this
3EAAA0:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
3EAAA4:  MOVW            R1, #(elf_hash_bucket+0x128C); unsigned __int16 *
3EAAA8:  MOVS            R2, #0; unsigned int
3EAAAA:  BLX             j__ZN9CMessages13AddBigMessageEPtjt; CMessages::AddBigMessage(ushort *,uint,ushort)
3EAAAE:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x3EAABA)
3EAAB0:  MOV.W           R2, #0x194
3EAAB4:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x3EAABC)
3EAAB6:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
3EAAB8:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
3EAABA:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
3EAABC:  LDR             R1, [R1]; CWorld::Players ...
3EAABE:  LDR             R0, [R0]; CWorld::PlayerInFocus
3EAAC0:  SMLABB.W        R0, R0, R2, R1
3EAAC4:  LDR.W           R1, [R0,#0xB8]
3EAAC8:  ADDS            R1, #0x32 ; '2'
3EAACA:  STR.W           R1, [R0,#0xB8]
3EAACE:  B               loc_3EAA66
