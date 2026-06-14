; =========================================================
; Game Engine Function: _ZN9CShopping3BuyEji
; Address            : 0x3609AC - 0x360F7E
; =========================================================

3609AC:  PUSH            {R4-R7,LR}
3609AE:  ADD             R7, SP, #0xC
3609B0:  PUSH.W          {R8-R11}
3609B4:  SUB             SP, SP, #4
3609B6:  VPUSH           {D8}
3609BA:  MOV             R11, R0
3609BC:  LDR.W           R0, =(_ZN9CShopping12ms_numPricesE_ptr - 0x3609C4)
3609C0:  ADD             R0, PC; _ZN9CShopping12ms_numPricesE_ptr
3609C2:  LDR             R0, [R0]; CShopping::ms_numPrices ...
3609C4:  LDR             R0, [R0]; CShopping::ms_numPrices
3609C6:  CMP             R0, #1
3609C8:  BLT             loc_3609E2
3609CA:  LDR.W           R1, =(_ZN9CShopping9ms_pricesE_ptr - 0x3609D2)
3609CE:  ADD             R1, PC; _ZN9CShopping9ms_pricesE_ptr
3609D0:  LDR             R2, [R1]; CShopping::ms_prices ...
3609D2:  MOVS            R1, #0
3609D4:  LDR             R3, [R2]; CShopping::ms_prices
3609D6:  CMP             R3, R11
3609D8:  BEQ             loc_3609E6
3609DA:  ADDS            R1, #1
3609DC:  ADDS            R2, #0x18
3609DE:  CMP             R1, R0
3609E0:  BLT             loc_3609D4
3609E2:  MOV.W           R1, #0xFFFFFFFF
3609E6:  LDR.W           R2, =(_ZN9CShopping9ms_pricesE_ptr - 0x3609F8)
3609EA:  ADD.W           R8, R1, R1,LSL#1
3609EE:  MOVS            R4, #0
3609F0:  MOVW            R3, #0x22F
3609F4:  ADD             R2, PC; _ZN9CShopping9ms_pricesE_ptr
3609F6:  LDR             R2, [R2]; CShopping::ms_prices ...
3609F8:  LDR.W           R1, [R2,R8,LSL#3]
3609FC:  LDR.W           R2, =(_ZN9CShopping7ms_keysE_ptr - 0x360A04)
360A00:  ADD             R2, PC; _ZN9CShopping7ms_keysE_ptr
360A02:  LDR             R2, [R2]; CShopping::ms_keys ...
360A04:  LDR.W           R6, [R2,R4,LSL#2]
360A08:  CMP             R6, R1
360A0A:  BEQ             loc_360A18
360A0C:  ADDS            R5, R4, #1
360A0E:  CMP             R4, R3
360A10:  MOV             R4, R5
360A12:  BLT             loc_360A04
360A14:  MOV.W           R4, #0xFFFFFFFF
360A18:  LDR.W           R1, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x360A28)
360A1C:  MOV.W           R2, #0x194
360A20:  LDR.W           R3, =(_ZN6CWorld7PlayersE_ptr - 0x360A2E)
360A24:  ADD             R1, PC; _ZN6CWorld13PlayerInFocusE_ptr
360A26:  LDR.W           R10, =(unk_81FF40 - 0x360A32)
360A2A:  ADD             R3, PC; _ZN6CWorld7PlayersE_ptr
360A2C:  LDR             R1, [R1]; CWorld::PlayerInFocus ...
360A2E:  ADD             R10, PC; unk_81FF40
360A30:  LDR             R3, [R3]; CWorld::Players ...
360A32:  LDR             R1, [R1]; CWorld::PlayerInFocus
360A34:  SMULBB.W        R6, R1, R2
360A38:  LDR.W           R9, [R3,R6]
360A3C:  LDR.W           R6, =(byte_81FFB8 - 0x360A48)
360A40:  LDR.W           R3, [R9,#0x444]
360A44:  ADD             R6, PC; byte_81FFB8
360A46:  LDRB            R6, [R6]
360A48:  LDR             R3, [R3,#4]
360A4A:  CMP             R6, #0
360A4C:  IT EQ
360A4E:  MOVEQ           R10, R3
360A50:  CMP             R0, #1
360A52:  BLT             loc_360A6C
360A54:  LDR.W           R3, =(_ZN9CShopping9ms_pricesE_ptr - 0x360A5C)
360A58:  ADD             R3, PC; _ZN9CShopping9ms_pricesE_ptr
360A5A:  LDR             R6, [R3]; CShopping::ms_prices ...
360A5C:  MOVS            R3, #0
360A5E:  LDR             R5, [R6]; CShopping::ms_prices
360A60:  CMP             R5, R11
360A62:  BEQ             loc_360A70
360A64:  ADDS            R3, #1
360A66:  ADDS            R6, #0x18
360A68:  CMP             R3, R0
360A6A:  BLT             loc_360A5E
360A6C:  MOV.W           R3, #0xFFFFFFFF
360A70:  LDR.W           R0, =(_ZN9CShopping9ms_pricesE_ptr - 0x360A80)
360A74:  ADD.W           R3, R3, R3,LSL#1
360A78:  LDR.W           R6, =(_ZN9CTheZones11m_CurrLevelE_ptr - 0x360A82)
360A7C:  ADD             R0, PC; _ZN9CShopping9ms_pricesE_ptr
360A7E:  ADD             R6, PC; _ZN9CTheZones11m_CurrLevelE_ptr
360A80:  LDR             R0, [R0]; CShopping::ms_prices ...
360A82:  LDR             R6, [R6]; CTheZones::m_CurrLevel ...
360A84:  ADD.W           R0, R0, R3,LSL#3
360A88:  VLDR            S0, [R0,#4]
360A8C:  LDR.W           R0, =(unk_6101C0 - 0x360A9A)
360A90:  LDR             R3, [R6]; CTheZones::m_CurrLevel
360A92:  VCVT.F32.S32    S0, S0
360A96:  ADD             R0, PC; unk_6101C0
360A98:  LDR.W           R6, =(_ZN6CWorld7PlayersE_ptr - 0x360AA4)
360A9C:  ADD.W           R0, R0, R3,LSL#2
360AA0:  ADD             R6, PC; _ZN6CWorld7PlayersE_ptr
360AA2:  VLDR            S2, [R0]
360AA6:  LDR             R3, [R6]; CWorld::Players ...
360AA8:  VMUL.F32        S0, S2, S0
360AAC:  LDR.W           R0, =(_ZN9CShopping16ms_statModifiersE_ptr - 0x360AB8)
360AB0:  SMLABB.W        R2, R1, R2, R3
360AB4:  ADD             R0, PC; _ZN9CShopping16ms_statModifiersE_ptr
360AB6:  LDR             R1, [R0]; CShopping::ms_statModifiers ...
360AB8:  LDR.W           R0, [R2,#0xB8]
360ABC:  VCVT.S32.F32    S16, S0
360AC0:  VMOV            R3, S16
360AC4:  SUBS            R0, R0, R3
360AC6:  STR.W           R0, [R2,#0xB8]
360ACA:  LDRSB.W         R0, [R1,R4,LSL#2]
360ACE:  ADDS            R2, R0, #1
360AD0:  BEQ             loc_360B08
360AD2:  LDR.W           R2, =(unk_6101A8 - 0x360ADA)
360AD6:  ADD             R2, PC; unk_6101A8
360AD8:  LDR.W           R0, [R2,R0,LSL#2]
360ADC:  ADDS            R2, R0, #1; float
360ADE:  BEQ             loc_360B08
360AE0:  ADD.W           R1, R1, R4,LSL#2
360AE4:  CMP             R0, #0x50 ; 'P'
360AE6:  LDRSB.W         R1, [R1,#1]
360AEA:  IT NE
360AEC:  CMPNE           R0, #0x42 ; 'B'
360AEE:  BNE             loc_360AF6
360AF0:  ADD.W           R1, R1, R1,LSL#2
360AF4:  LSLS            R1, R1, #1
360AF6:  VMOV            S0, R1
360AFA:  UXTH            R0, R0; this
360AFC:  VCVT.F32.S32    S0, S0
360B00:  VMOV            R1, S0; unsigned __int16
360B04:  BLX             j__ZN6CStats10ModifyStatEtf; CStats::ModifyStat(ushort,float)
360B08:  LDR.W           R0, =(_ZN9CShopping16ms_statModifiersE_ptr - 0x360B10)
360B0C:  ADD             R0, PC; _ZN9CShopping16ms_statModifiersE_ptr
360B0E:  LDR             R0, [R0]; CShopping::ms_statModifiers ...
360B10:  ADD.W           R1, R0, R4,LSL#2
360B14:  LDRSB.W         R0, [R1,#2]
360B18:  ADDS            R2, R0, #1
360B1A:  BEQ             loc_360B4E
360B1C:  LDR.W           R2, =(unk_6101A8 - 0x360B24)
360B20:  ADD             R2, PC; unk_6101A8
360B22:  LDR.W           R0, [R2,R0,LSL#2]
360B26:  ADDS            R2, R0, #1; float
360B28:  BEQ             loc_360B4E
360B2A:  LDRSB.W         R1, [R1,#3]
360B2E:  CMP             R0, #0x50 ; 'P'
360B30:  IT NE
360B32:  CMPNE           R0, #0x42 ; 'B'
360B34:  BNE             loc_360B3C
360B36:  ADD.W           R1, R1, R1,LSL#2
360B3A:  LSLS            R1, R1, #1
360B3C:  VMOV            S0, R1
360B40:  UXTH            R0, R0; this
360B42:  VCVT.F32.S32    S0, S0
360B46:  VMOV            R1, S0; unsigned __int16
360B4A:  BLX             j__ZN6CStats10ModifyStatEtf; CStats::ModifyStat(ushort,float)
360B4E:  VCVT.F32.S32    S0, S16
360B52:  MOVS            R0, #(off_3C+2); this
360B54:  VMOV            R6, S0
360B58:  MOV             R1, R6; unsigned __int16
360B5A:  BLX             j__ZN6CStats10ModifyStatEtf; CStats::ModifyStat(ushort,float)
360B5E:  LDR.W           R0, =(_ZN9CShopping13ms_bHasBoughtE_ptr - 0x360B6C)
360B62:  MOVS            R2, #1; float
360B64:  LDR.W           R1, =(_ZN9CShopping21ms_priceSectionLoadedE_ptr - 0x360B6E)
360B68:  ADD             R0, PC; _ZN9CShopping13ms_bHasBoughtE_ptr
360B6A:  ADD             R1, PC; _ZN9CShopping21ms_priceSectionLoadedE_ptr
360B6C:  LDR             R0, [R0]; CShopping::ms_bHasBought ...
360B6E:  LDR             R1, [R1]; CShopping::ms_priceSectionLoaded ...
360B70:  STRB            R2, [R0,R4]
360B72:  LDR             R0, [R1]; CShopping::ms_priceSectionLoaded
360B74:  SUBS            R0, #1; switch 9 cases
360B76:  CMP             R0, #8
360B78:  BHI.W           def_360B7C; jumptable 00360B7C default case, case 3
360B7C:  TBH.W           [PC,R0,LSL#1]; switch jump
360B80:  DCW 9; jump table for switch statement
360B82:  DCW 0x5F
360B84:  DCW 0x12E
360B86:  DCW 0x61
360B88:  DCW 0x9F
360B8A:  DCW 0xDD
360B8C:  DCW 0xF5
360B8E:  DCW 0x102
360B90:  DCW 0x112
360B92:  MOVS            R0, #(dword_34+3); jumptable 00360B7C case 1
360B94:  MOV             R1, R6; unsigned __int16
360B96:  BLX             j__ZN6CStats10ModifyStatEtf; CStats::ModifyStat(ushort,float)
360B9A:  MOV.W           R0, #0xFFFFFFFF; int
360B9E:  MOVS            R1, #0; bool
360BA0:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
360BA4:  MOV             R5, R0
360BA6:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x360BB2)
360BAA:  LDRSH.W         R1, [R5,#0x26]
360BAE:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
360BB0:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
360BB2:  LDR.W           R8, [R0,R1,LSL#2]
360BB6:  MOV             R1, R11; int
360BB8:  LDR.W           R6, [R0,R11,LSL#2]
360BBC:  MOV             R0, R5; this
360BBE:  BLX             j__ZN8CVehicle17AddVehicleUpgradeEi; CVehicle::AddVehicleUpgrade(int)
360BC2:  LDR.W           R0, [R5,#0x5A0]
360BC6:  CMP             R0, #0
360BC8:  BNE.W           def_360B7C; jumptable 00360B7C default case, case 3
360BCC:  LDRH            R1, [R6,#0x28]
360BCE:  TST.W           R1, #0x100
360BD2:  UBFX.W          R0, R1, #0xA, #5
360BD6:  ITTT EQ
360BD8:  LDREQ.W         R1, [R8,#0x74]
360BDC:  ADDEQ.W         R0, R1, R0,LSL#5
360BE0:  LDREQ.W         R0, [R0,#0xD0]
360BE4:  SUBS            R0, #2; switch 16 cases
360BE6:  CMP             R0, #0xF
360BE8:  BHI.W           def_360B7C; jumptable 00360B7C default case, case 3
360BEC:  TBH.W           [PC,R0,LSL#1]; switch jump
360BF0:  DCW 0x10; jump table for switch statement
360BF2:  DCW 0xF6
360BF4:  DCW 0xF6
360BF6:  DCW 0xF6
360BF8:  DCW 0xF6
360BFA:  DCW 0xF6
360BFC:  DCW 0xF6
360BFE:  DCW 0xF6
360C00:  DCW 0xF6
360C02:  DCW 0xF6
360C04:  DCW 0x1A7
360C06:  DCW 0x1AB
360C08:  DCW 0xF6
360C0A:  DCW 0xF6
360C0C:  DCW 0x1B7
360C0E:  DCW 0x1BB
360C10:  MOV             R0, R5; jumptable 00360BEC case 2
360C12:  MOVS            R1, #0
360C14:  BLX             j__ZN11CAutomobile7FixTyreE7eWheels; CAutomobile::FixTyre(eWheels)
360C18:  MOV             R0, R5
360C1A:  MOVS            R1, #2
360C1C:  BLX             j__ZN11CAutomobile7FixTyreE7eWheels; CAutomobile::FixTyre(eWheels)
360C20:  MOV             R0, R5
360C22:  MOVS            R1, #1
360C24:  BLX             j__ZN11CAutomobile7FixTyreE7eWheels; CAutomobile::FixTyre(eWheels)
360C28:  MOV             R0, R5
360C2A:  MOVS            R1, #3
360C2C:  VPOP            {D8}
360C30:  ADD             SP, SP, #4
360C32:  POP.W           {R8-R11}
360C36:  POP.W           {R4-R7,LR}
360C3A:  B.W             j_j__ZN11CAutomobile7FixTyreE7eWheels; j_CAutomobile::FixTyre(eWheels)
360C3E:  MOVS            R0, #0x37 ; '7'; jumptable 00360B7C case 2
360C40:  B               loc_360D90
360C42:  MOVS            R0, #(byte_9+5); jumptable 00360B7C case 4
360C44:  MOV             R1, R6; unsigned __int16
360C46:  BLX             j__ZN6CStats10ModifyStatEtf; CStats::ModifyStat(ushort,float)
360C4A:  LDR             R0, =(_ZN9CShopping9ms_pricesE_ptr - 0x360C50)
360C4C:  ADD             R0, PC; _ZN9CShopping9ms_pricesE_ptr
360C4E:  LDR             R0, [R0]; CShopping::ms_prices ...
360C50:  ADD.W           R5, R0, R8,LSL#3
360C54:  LDR.W           R0, [R5,#0xC]!
360C58:  ADD.W           R0, R10, R0,LSL#2
360C5C:  LDR             R0, [R0,#0x28]
360C5E:  CMP             R0, #0
360C60:  BEQ.W           loc_360EC0
360C64:  LDR             R1, =(_ZN9CShopping7ms_keysE_ptr - 0x360C70)
360C66:  MOVS            R6, #0
360C68:  MOVW            R2, #0x22F
360C6C:  ADD             R1, PC; _ZN9CShopping7ms_keysE_ptr
360C6E:  LDR             R1, [R1]; CShopping::ms_keys ...
360C70:  LDR.W           R3, [R1,R6,LSL#2]
360C74:  CMP             R3, R0
360C76:  BEQ             loc_360C84
360C78:  ADDS            R3, R6, #1
360C7A:  CMP             R6, R2
360C7C:  MOV             R6, R3
360C7E:  BLT             loc_360C70
360C80:  MOV.W           R6, #0xFFFFFFFF
360C84:  LDR             R0, =(_ZN9CShopping16ms_statModifiersE_ptr - 0x360C8A)
360C86:  ADD             R0, PC; _ZN9CShopping16ms_statModifiersE_ptr
360C88:  LDR             R1, [R0]; CShopping::ms_statModifiers ...
360C8A:  LDRSB.W         R0, [R1,R6,LSL#2]
360C8E:  ADDS            R2, R0, #1
360C90:  BEQ.W           loc_360E30
360C94:  LDR             R2, =(unk_6101A8 - 0x360C9A)
360C96:  ADD             R2, PC; unk_6101A8
360C98:  LDR.W           R0, [R2,R0,LSL#2]
360C9C:  ADDS            R2, R0, #1; float
360C9E:  BEQ.W           loc_360E30
360CA2:  ADD.W           R1, R1, R6,LSL#2
360CA6:  CMP             R0, #0x50 ; 'P'
360CA8:  LDRSB.W         R1, [R1,#1]
360CAC:  IT NE
360CAE:  CMPNE           R0, #0x42 ; 'B'
360CB0:  BNE.W           loc_360E1C
360CB4:  ADD.W           R1, R1, R1,LSL#2
360CB8:  NEGS            R1, R1
360CBA:  LSLS            R1, R1, #1
360CBC:  B               loc_360E1E
360CBE:  MOVS            R0, #(dword_1C+3); jumptable 00360B7C case 5
360CC0:  MOV             R1, R6; unsigned __int16
360CC2:  BLX             j__ZN6CStats10ModifyStatEtf; CStats::ModifyStat(ushort,float)
360CC6:  LDR             R0, =(_ZN9CShopping9ms_pricesE_ptr - 0x360CCC)
360CC8:  ADD             R0, PC; _ZN9CShopping9ms_pricesE_ptr
360CCA:  LDR             R0, [R0]; CShopping::ms_prices ...
360CCC:  ADD.W           R5, R0, R8,LSL#3
360CD0:  LDR.W           R0, [R5,#0xC]!
360CD4:  ADD.W           R0, R10, R0,LSL#2
360CD8:  LDR             R0, [R0,#0x28]
360CDA:  CMP             R0, #0
360CDC:  BEQ.W           loc_360F0A
360CE0:  LDR             R1, =(_ZN9CShopping7ms_keysE_ptr - 0x360CEC)
360CE2:  MOVS            R6, #0
360CE4:  MOVW            R2, #0x22F
360CE8:  ADD             R1, PC; _ZN9CShopping7ms_keysE_ptr
360CEA:  LDR             R1, [R1]; CShopping::ms_keys ...
360CEC:  LDR.W           R3, [R1,R6,LSL#2]
360CF0:  CMP             R3, R0
360CF2:  BEQ             loc_360D00
360CF4:  ADDS            R3, R6, #1
360CF6:  CMP             R6, R2
360CF8:  MOV             R6, R3
360CFA:  BLT             loc_360CEC
360CFC:  MOV.W           R6, #0xFFFFFFFF
360D00:  LDR             R0, =(_ZN9CShopping16ms_statModifiersE_ptr - 0x360D06)
360D02:  ADD             R0, PC; _ZN9CShopping16ms_statModifiersE_ptr
360D04:  LDR             R1, [R0]; CShopping::ms_statModifiers ...
360D06:  LDRSB.W         R0, [R1,R6,LSL#2]
360D0A:  ADDS            R2, R0, #1
360D0C:  BEQ.W           loc_360E78
360D10:  LDR             R2, =(unk_6101A8 - 0x360D16)
360D12:  ADD             R2, PC; unk_6101A8
360D14:  LDR.W           R0, [R2,R0,LSL#2]
360D18:  ADDS            R2, R0, #1; float
360D1A:  BEQ.W           loc_360E78
360D1E:  ADD.W           R1, R1, R6,LSL#2
360D22:  CMP             R0, #0x50 ; 'P'
360D24:  LDRSB.W         R1, [R1,#1]
360D28:  IT NE
360D2A:  CMPNE           R0, #0x42 ; 'B'
360D2C:  BNE.W           loc_360E64
360D30:  ADD.W           R1, R1, R1,LSL#2
360D34:  NEGS            R1, R1
360D36:  LSLS            R1, R1, #1
360D38:  B               loc_360E66
360D3A:  MOVS            R0, #(dword_1C+2); jumptable 00360B7C case 6
360D3C:  MOV             R1, R6; unsigned __int16
360D3E:  BLX             j__ZN6CStats10ModifyStatEtf; CStats::ModifyStat(ushort,float)
360D42:  LDR             R0, =(_ZN9CShopping9ms_pricesE_ptr - 0x360D4E)
360D44:  MOVS            R2, #0; unsigned int
360D46:  LDR.W           R1, [R9,#0x444]
360D4A:  ADD             R0, PC; _ZN9CShopping9ms_pricesE_ptr
360D4C:  LDR             R0, [R0]; CShopping::ms_prices ...
360D4E:  ADD.W           R0, R0, R8,LSL#3
360D52:  LDR             R3, [R0,#8]; int
360D54:  LDR             R0, [R1,#4]; this
360D56:  MOV             R1, R11; unsigned int
360D58:  VPOP            {D8}
360D5C:  ADD             SP, SP, #4
360D5E:  POP.W           {R8-R11}
360D62:  POP.W           {R4-R7,LR}
360D66:  B.W             j_j__ZN15CPedClothesDesc18SetTextureAndModelEjji; j_CPedClothesDesc::SetTextureAndModel(uint,uint,int)
360D6A:  MOV             R0, R9; jumptable 00360B7C case 7
360D6C:  MOVS            R1, #0xE
360D6E:  MOVS            R2, #0
360D70:  MOVS            R3, #0
360D72:  VPOP            {D8}
360D76:  ADD             SP, SP, #4
360D78:  POP.W           {R8-R11}
360D7C:  POP.W           {R4-R7,LR}
360D80:  B.W             j_j__ZN4CPed10GiveWeaponE11eWeaponTypejb; j_CPed::GiveWeapon(eWeaponType,uint,bool)
360D84:  MOVS            R0, #dword_C8; jumptable 00360B7C case 8
360D86:  MOV.W           R1, #0x3F800000; unsigned __int16
360D8A:  BLX             j__ZN6CStats10ModifyStatEtf; CStats::ModifyStat(ushort,float)
360D8E:  MOVS            R0, #dword_14; this
360D90:  MOV             R1, R6; unsigned __int16
360D92:  VPOP            {D8}
360D96:  ADD             SP, SP, #4
360D98:  POP.W           {R8-R11}
360D9C:  POP.W           {R4-R7,LR}
360DA0:  B.W             sub_1983FC
360DA4:  MOVS            R0, #(byte_9+4); jumptable 00360B7C case 9
360DA6:  MOV             R1, R6; unsigned __int16
360DA8:  BLX             j__ZN6CStats10ModifyStatEtf; CStats::ModifyStat(ushort,float)
360DAC:  CMP.W           R11, #0x30 ; '0'
360DB0:  BNE             loc_360DE8
360DB2:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x360DBE)
360DB4:  MOV.W           R2, #0x194
360DB8:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x360DC0)
360DBA:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
360DBC:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
360DBE:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
360DC0:  LDR             R1, [R1]; CWorld::Players ...
360DC2:  LDR             R0, [R0]; CWorld::PlayerInFocus
360DC4:  SMLABB.W        R0, R0, R2, R1
360DC8:  LDRB.W          R0, [R0,#0x150]
360DCC:  VMOV            S0, R0
360DD0:  ADDW            R0, R9, #0x54C
360DD4:  VCVT.F32.U32    S0, S0
360DD8:  VSTR            S0, [R0]
360DDC:  VPOP            {D8}; jumptable 00360B7C default case, case 3
360DE0:  ADD             SP, SP, #4
360DE2:  POP.W           {R8-R11}
360DE6:  POP             {R4-R7,PC}
360DE8:  LDR             R0, =(_ZN9CShopping9ms_pricesE_ptr - 0x360DF2)
360DEA:  MOV             R1, R11
360DEC:  MOVS            R3, #0
360DEE:  ADD             R0, PC; _ZN9CShopping9ms_pricesE_ptr
360DF0:  LDR             R0, [R0]; CShopping::ms_prices ...
360DF2:  ADD.W           R0, R0, R8,LSL#3
360DF6:  LDR             R2, [R0,#8]
360DF8:  MOV             R0, R9
360DFA:  BLX             j__ZN4CPed10GiveWeaponE11eWeaponTypejb; CPed::GiveWeapon(eWeaponType,uint,bool)
360DFE:  MOV             R0, R9
360E00:  MOV             R1, R11
360E02:  BLX             j__ZN4CPed13GetWeaponSlotE11eWeaponType; CPed::GetWeaponSlot(eWeaponType)
360E06:  MOV             R1, R0; int
360E08:  MOV             R0, R9; this
360E0A:  VPOP            {D8}
360E0E:  ADD             SP, SP, #4
360E10:  POP.W           {R8-R11}
360E14:  POP.W           {R4-R7,LR}
360E18:  B.W             sub_19EA08
360E1C:  NEGS            R1, R1
360E1E:  VMOV            S0, R1
360E22:  UXTH            R0, R0; this
360E24:  VCVT.F32.S32    S0, S0
360E28:  VMOV            R1, S0; unsigned __int16
360E2C:  BLX             j__ZN6CStats10ModifyStatEtf; CStats::ModifyStat(ushort,float)
360E30:  LDR             R0, =(_ZN9CShopping16ms_statModifiersE_ptr - 0x360E36)
360E32:  ADD             R0, PC; _ZN9CShopping16ms_statModifiersE_ptr
360E34:  LDR             R0, [R0]; CShopping::ms_statModifiers ...
360E36:  ADD.W           R1, R0, R6,LSL#2
360E3A:  LDRSB.W         R0, [R1,#2]
360E3E:  ADDS            R2, R0, #1
360E40:  BEQ             loc_360EC0
360E42:  LDR             R2, =(unk_6101A8 - 0x360E48)
360E44:  ADD             R2, PC; unk_6101A8
360E46:  LDR.W           R0, [R2,R0,LSL#2]
360E4A:  ADDS            R2, R0, #1; float
360E4C:  BEQ             loc_360EC0
360E4E:  LDRSB.W         R1, [R1,#3]
360E52:  CMP             R0, #0x50 ; 'P'
360E54:  IT NE
360E56:  CMPNE           R0, #0x42 ; 'B'
360E58:  BNE             loc_360EAC
360E5A:  ADD.W           R1, R1, R1,LSL#2
360E5E:  NEGS            R1, R1
360E60:  LSLS            R1, R1, #1
360E62:  B               loc_360EAE
360E64:  NEGS            R1, R1
360E66:  VMOV            S0, R1
360E6A:  UXTH            R0, R0; this
360E6C:  VCVT.F32.S32    S0, S0
360E70:  VMOV            R1, S0; unsigned __int16
360E74:  BLX             j__ZN6CStats10ModifyStatEtf; CStats::ModifyStat(ushort,float)
360E78:  LDR             R0, =(_ZN9CShopping16ms_statModifiersE_ptr - 0x360E7E)
360E7A:  ADD             R0, PC; _ZN9CShopping16ms_statModifiersE_ptr
360E7C:  LDR             R0, [R0]; CShopping::ms_statModifiers ...
360E7E:  ADD.W           R1, R0, R6,LSL#2
360E82:  LDRSB.W         R0, [R1,#2]
360E86:  ADDS            R2, R0, #1
360E88:  BEQ             loc_360F0A
360E8A:  LDR             R2, =(unk_6101A8 - 0x360E90)
360E8C:  ADD             R2, PC; unk_6101A8
360E8E:  LDR.W           R0, [R2,R0,LSL#2]
360E92:  ADDS            R2, R0, #1; float
360E94:  BEQ             loc_360F0A
360E96:  LDRSB.W         R1, [R1,#3]
360E9A:  CMP             R0, #0x50 ; 'P'
360E9C:  IT NE
360E9E:  CMPNE           R0, #0x42 ; 'B'
360EA0:  BNE             loc_360EF6
360EA2:  ADD.W           R1, R1, R1,LSL#2
360EA6:  NEGS            R1, R1
360EA8:  LSLS            R1, R1, #1
360EAA:  B               loc_360EF8
360EAC:  NEGS            R1, R1
360EAE:  VMOV            S0, R1
360EB2:  UXTH            R0, R0; this
360EB4:  VCVT.F32.S32    S0, S0
360EB8:  VMOV            R1, S0; unsigned __int16
360EBC:  BLX             j__ZN6CStats10ModifyStatEtf; CStats::ModifyStat(ushort,float)
360EC0:  LDR             R0, =(_ZN9CShopping9ms_pricesE_ptr - 0x360ECA)
360EC2:  LDR.W           R1, [R9,#0x444]
360EC6:  ADD             R0, PC; _ZN9CShopping9ms_pricesE_ptr
360EC8:  LDR             R3, [R5]; int
360ECA:  LDR             R2, [R0]; CShopping::ms_prices ...
360ECC:  LDR             R0, [R1,#4]; this
360ECE:  ADD.W           R1, R2, R8,LSL#3
360ED2:  LDR             R2, [R1,#8]; unsigned int
360ED4:  MOV             R1, R11; unsigned int
360ED6:  BLX             j__ZN15CPedClothesDesc18SetTextureAndModelEjji; CPedClothesDesc::SetTextureAndModel(uint,uint,int)
360EDA:  LDR             R0, [R5]; this
360EDC:  BLX             j__ZN8CClothes20GetTextureDependencyEi; CClothes::GetTextureDependency(int)
360EE0:  CMP             R0, #8
360EE2:  BHI.W           def_360B7C; jumptable 00360B7C default case, case 3
360EE6:  MOVS            R1, #1
360EE8:  LSL.W           R0, R1, R0
360EEC:  MOVW            R1, #0x18B
360EF0:  TST             R0, R1
360EF2:  BNE             loc_360F24
360EF4:  B               def_360B7C; jumptable 00360B7C default case, case 3
360EF6:  NEGS            R1, R1
360EF8:  VMOV            S0, R1
360EFC:  UXTH            R0, R0; this
360EFE:  VCVT.F32.S32    S0, S0
360F02:  VMOV            R1, S0; unsigned __int16
360F06:  BLX             j__ZN6CStats10ModifyStatEtf; CStats::ModifyStat(ushort,float)
360F0A:  LDR             R0, =(_ZN9CShopping9ms_pricesE_ptr - 0x360F14)
360F0C:  LDR.W           R1, [R9,#0x444]
360F10:  ADD             R0, PC; _ZN9CShopping9ms_pricesE_ptr
360F12:  LDR             R3, [R5]; int
360F14:  LDR             R2, [R0]; CShopping::ms_prices ...
360F16:  LDR             R0, [R1,#4]; this
360F18:  ADD.W           R1, R2, R8,LSL#3
360F1C:  LDR             R2, [R1,#8]; unsigned int
360F1E:  MOV             R1, R11; unsigned int
360F20:  BLX             j__ZN15CPedClothesDesc18SetTextureAndModelEjji; CPedClothesDesc::SetTextureAndModel(uint,uint,int)
360F24:  MOV.W           R0, #0xFFFFFFFF; int
360F28:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
360F2C:  VPOP            {D8}
360F30:  ADD             SP, SP, #4
360F32:  POP.W           {R8-R11}
360F36:  POP.W           {R4-R7,LR}
360F3A:  B.W             j_j__ZN7CWanted29ClearWantedLevelAndGoOnParoleEv; j_CWanted::ClearWantedLevelAndGoOnParole(void)
360F3E:  MOV             R0, R5; jumptable 00360BEC case 12
360F40:  MOVS            R1, #0xC
360F42:  MOVS            R2, #5
360F44:  B               loc_360F4C
360F46:  MOV             R0, R5; jumptable 00360BEC case 13
360F48:  MOVS            R1, #0xD
360F4A:  MOVS            R2, #6
360F4C:  VPOP            {D8}
360F50:  ADD             SP, SP, #4
360F52:  POP.W           {R8-R11}
360F56:  POP.W           {R4-R7,LR}
360F5A:  B.W             sub_1A040C
360F5E:  MOV             R0, R5; jumptable 00360BEC case 16
360F60:  MOVS            R1, #0x10
360F62:  MOVS            R2, #0
360F64:  B               loc_360F6C
360F66:  MOV             R0, R5; jumptable 00360BEC case 17
360F68:  MOVS            R1, #0x11
360F6A:  MOVS            R2, #1
360F6C:  VPOP            {D8}
360F70:  ADD             SP, SP, #4
360F72:  POP.W           {R8-R11}
360F76:  POP.W           {R4-R7,LR}
360F7A:  B.W             sub_18D418
