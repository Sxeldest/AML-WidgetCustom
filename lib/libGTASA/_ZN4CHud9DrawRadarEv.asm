; =========================================================
; Game Engine Function: _ZN4CHud9DrawRadarEv
; Address            : 0x437ABC - 0x437FCC
; =========================================================

437ABC:  LDR.W           R0, =(_ZN17CEntryExitManager17ms_exitEnterStateE_ptr - 0x437AC4)
437AC0:  ADD             R0, PC; _ZN17CEntryExitManager17ms_exitEnterStateE_ptr
437AC2:  LDR             R0, [R0]; CEntryExitManager::ms_exitEnterState ...
437AC4:  LDR             R0, [R0]; CEntryExitManager::ms_exitEnterState
437AC6:  SUBS            R0, #1
437AC8:  CMP             R0, #2
437ACA:  BCC.W           locret_437FCA
437ACE:  LDR.W           R0, =(_ZN4CHud13m_ItemToFlashE_ptr - 0x437AD6)
437AD2:  ADD             R0, PC; _ZN4CHud13m_ItemToFlashE_ptr
437AD4:  LDR             R0, [R0]; CHud::m_ItemToFlash ...
437AD6:  LDRH            R0, [R0]; CHud::m_ItemToFlash
437AD8:  CMP             R0, #8
437ADA:  BNE             loc_437B02
437ADC:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x437AEC)
437AE0:  MOV             R1, #0x5D9F7391
437AE8:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
437AEA:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
437AEC:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
437AEE:  UMULL.W         R1, R2, R0, R1
437AF2:  LSRS            R1, R2, #7
437AF4:  MOV.W           R2, #0x15E
437AF8:  MLS.W           R0, R1, R2, R0
437AFC:  CMP             R0, #0x97
437AFE:  IT CC
437B00:  BXCC            LR
437B02:  PUSH            {R4-R7,LR}
437B04:  ADD             R7, SP, #0x14+var_8
437B06:  PUSH.W          {R8-R11}
437B0A:  SUB             SP, SP, #4
437B0C:  VPUSH           {D8-D15}
437B10:  SUB             SP, SP, #0x38 ; '8'
437B12:  MOVS            R0, #9
437B14:  MOVS            R1, #2
437B16:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
437B1A:  MOVS            R0, #7
437B1C:  MOVS            R1, #1
437B1E:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
437B22:  BLX             j__ZN6CRadar7DrawMapEv; CRadar::DrawMap(void)
437B26:  MOV.W           R0, #0xFFFFFFFF; int
437B2A:  MOVS            R1, #0; bool
437B2C:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
437B30:  MOV             R4, R0
437B32:  LDR.W           R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x437B3A)
437B36:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
437B38:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
437B3A:  LDR.W           R8, [R0,#(dword_6F3A18 - 0x6F3794)]
437B3E:  CMP.W           R8, #0
437B42:  BEQ.W           loc_437FB0
437B46:  VLDR            S4, [R8,#0x20]
437B4A:  VMOV.F32        S0, #0.5
437B4E:  VLDR            S6, [R8,#0x28]
437B52:  VLDR            S2, [R8,#0x24]
437B56:  VLDR            S8, [R8,#0x2C]
437B5A:  VSUB.F32        S12, S6, S4
437B5E:  VADD.F32        S4, S4, S6
437B62:  LDR.W           R0, =(FrontEndMenuManager_ptr - 0x437B72)
437B66:  VSUB.F32        S10, S2, S8
437B6A:  VADD.F32        S2, S2, S8
437B6E:  ADD             R0, PC; FrontEndMenuManager_ptr
437B70:  LDR             R0, [R0]; FrontEndMenuManager
437B72:  VABS.F32        S8, S12
437B76:  VMUL.F32        S18, S4, S0
437B7A:  LDRB.W          R0, [R0,#(byte_98F219 - 0x98F0F8)]
437B7E:  VABS.F32        S6, S10
437B82:  VMUL.F32        S16, S2, S0
437B86:  CMP             R0, #5
437B88:  ITE NE
437B8A:  LDRBNE.W        R9, [R8,#0x4C]
437B8E:  MOVEQ.W         R9, #0xFF
437B92:  CMP             R4, #0
437B94:  VMUL.F32        S20, S8, S0
437B98:  VMUL.F32        S22, S6, S0
437B9C:  BEQ.W           loc_437D10
437BA0:  LDR.W           R0, [R4,#0x5A4]
437BA4:  CMP             R0, #4
437BA6:  BNE.W           loc_437CFC
437BAA:  MOV             R10, R4
437BAC:  MOVW            R1, #0x21B
437BB0:  LDRH.W          R0, [R10,#0x26]!
437BB4:  CMP             R0, R1
437BB6:  BEQ.W           loc_437D10
437BBA:  LDR             R0, [R4,#0x14]
437BBC:  LDR             R2, [R0,#8]
437BBE:  LDR             R1, [R0,#0x28]; x
437BC0:  EOR.W           R0, R2, #0x80000000; y
437BC4:  BLX             atan2f
437BC8:  MOV             R5, R0
437BCA:  ADD             R0, SP, #0xA0+var_78; this
437BCC:  MOVS            R1, #0xFF; unsigned __int8
437BCE:  MOVS            R2, #0xFF; unsigned __int8
437BD0:  MOVS            R3, #0xFF; unsigned __int8
437BD2:  STR.W           R9, [SP,#0xA0+var_A0]; float
437BD6:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
437BDA:  VLDR            S0, =-0.7854
437BDE:  VMOV            S2, R5
437BE2:  VSUB.F32        S24, S0, S2
437BE6:  VLDR            S0, =0.0
437BEA:  VADD.F32        S0, S24, S0
437BEE:  VMOV            R0, S0; x
437BF2:  STR             R0, [SP,#0xA0+x]
437BF4:  BLX             sinf
437BF8:  VLDR            S0, =1.5708
437BFC:  STR             R0, [SP,#0xA0+var_84]
437BFE:  VADD.F32        S0, S24, S0
437C02:  VMOV            R5, S0
437C06:  MOV             R0, R5; x
437C08:  BLX             sinf
437C0C:  VLDR            S0, =4.7124
437C10:  MOV             R6, R0
437C12:  LDR             R0, [SP,#0xA0+var_84]
437C14:  VADD.F32        S0, S24, S0
437C18:  VMOV            S30, R0
437C1C:  MOV             R0, R5; x
437C1E:  VMOV            R11, S0
437C22:  VLDR            S0, =1.6
437C26:  VMUL.F32        S26, S20, S0
437C2A:  VMUL.F32        S28, S22, S0
437C2E:  BLX             cosf
437C32:  VMOV            S0, R0
437C36:  MOV             R0, R11; x
437C38:  VMOV            S2, R6
437C3C:  VMUL.F32        S30, S26, S30
437C40:  VMUL.F32        S17, S28, S0
437C44:  VMUL.F32        S19, S26, S2
437C48:  BLX             sinf
437C4C:  VMOV            S0, R0
437C50:  LDR             R0, [SP,#0xA0+x]; x
437C52:  VADD.F32        S30, S18, S30
437C56:  VMUL.F32        S21, S26, S0
437C5A:  VADD.F32        S17, S16, S17
437C5E:  VADD.F32        S19, S18, S19
437C62:  BLX             cosf
437C66:  VLDR            S0, =3.1416
437C6A:  STR             R0, [SP,#0xA0+x]
437C6C:  VADD.F32        S0, S24, S0
437C70:  VMOV            R6, S0
437C74:  MOV             R0, R6; x
437C76:  BLX             cosf
437C7A:  MOV             R5, R0
437C7C:  MOV             R0, R11; x
437C7E:  BLX             cosf
437C82:  VMOV            S0, R0
437C86:  MOV             R0, R6; x
437C88:  VMOV            S24, R5
437C8C:  VMUL.F32        S23, S28, S0
437C90:  BLX             sinf
437C94:  VMOV            R1, S19; float
437C98:  ADD             R6, SP, #0xA0+var_78
437C9A:  VMOV            R2, S17; float
437C9E:  STR             R6, [SP,#0xA0+var_8C]; CRGBA *
437CA0:  VMOV            R3, S30; float
437CA4:  VMOV            S0, R0
437CA8:  LDR             R0, [SP,#0xA0+x]
437CAA:  VMUL.F32        S4, S28, S24
437CAE:  VMUL.F32        S0, S26, S0
437CB2:  VMOV            S2, R0
437CB6:  LDR             R0, =(_ZN4CHud7SpritesE_ptr - 0x437CC4)
437CB8:  VADD.F32        S6, S16, S23
437CBC:  VMUL.F32        S2, S28, S2
437CC0:  ADD             R0, PC; _ZN4CHud7SpritesE_ptr
437CC2:  VADD.F32        S8, S18, S21
437CC6:  LDR             R0, [R0]; CHud::Sprites ...
437CC8:  VADD.F32        S4, S16, S4
437CCC:  VADD.F32        S0, S18, S0
437CD0:  ADDS            R0, #0x10; this
437CD2:  VADD.F32        S2, S16, S2
437CD6:  VSTR            S2, [SP,#0xA0+var_A0]
437CDA:  VSTR            S0, [SP,#0xA0+var_9C]
437CDE:  VSTR            S4, [SP,#0xA0+var_98]
437CE2:  VSTR            S8, [SP,#0xA0+var_94]
437CE6:  VSTR            S6, [SP,#0xA0+var_90]
437CEA:  BLX             j__ZN9CSprite2d4DrawEffffffffRK5CRGBA; CSprite2d::Draw(float,float,float,float,float,float,float,float,CRGBA const&)
437CEE:  LDR.W           R0, [R4,#0x5A4]
437CF2:  CMP             R0, #4
437CF4:  BEQ             loc_437D04
437CF6:  B               loc_437CFC
437CF8:  DCFS -0.7854
437CFC:  CMP             R0, #3
437CFE:  BNE             loc_437D10
437D00:  ADD.W           R10, R4, #0x26 ; '&'
437D04:  LDRH.W          R0, [R10]
437D08:  MOVW            R1, #0x21B
437D0C:  CMP             R0, R1
437D0E:  BNE             loc_437D32
437D10:  MOV.W           R0, #0xFFFFFFFF; int
437D14:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
437D18:  LDR.W           R0, [R0,#0x440]; this
437D1C:  BLX             j__ZNK16CPedIntelligence17GetUsingParachuteEv; CPedIntelligence::GetUsingParachute(void)
437D20:  CMP             R0, #1
437D22:  BNE.W           loc_437ECE
437D26:  CBNZ            R4, loc_437D32
437D28:  MOV.W           R0, #0xFFFFFFFF; int
437D2C:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
437D30:  MOV             R4, R0
437D32:  LDR             R0, [R4,#0x14]
437D34:  ADD.W           R1, R0, #0x30 ; '0'
437D38:  CMP             R0, #0
437D3A:  IT EQ
437D3C:  ADDEQ           R1, R4, #4
437D3E:  MOVS            R0, #1
437D40:  VLDR            S24, [R1,#8]
437D44:  MOVS            R1, #0
437D46:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
437D4A:  VMOV.F32        S0, #0.75
437D4E:  VLDR            S4, =1.35
437D52:  VMOV.F32        S2, #1.25
437D56:  ADD             R4, SP, #0xA0+var_7C
437D58:  VMUL.F32        S4, S20, S4
437D5C:  MOVS            R1, #0; unsigned __int8
437D5E:  VMOV.F32        S6, #2.0
437D62:  MOV             R0, R4; this
437D64:  MOVS            R2, #0; unsigned __int8
437D66:  MOVS            R3, #0; unsigned __int8
437D68:  STR.W           R9, [SP,#0xA0+var_A0]; unsigned __int8
437D6C:  VMUL.F32        S0, S22, S0
437D70:  VMUL.F32        S2, S20, S2
437D74:  VADD.F32        S26, S18, S4
437D78:  VMOV.F32        S4, #-2.0
437D7C:  VSUB.F32        S28, S16, S0
437D80:  VADD.F32        S30, S18, S2
437D84:  VADD.F32        S17, S16, S0
437D88:  VADD.F32        S0, S26, S6
437D8C:  VADD.F32        S2, S28, S4
437D90:  VADD.F32        S4, S30, S4
437D94:  VADD.F32        S6, S17, S6
437D98:  VSTR            S0, [SP,#0xA0+var_70]
437D9C:  VSTR            S2, [SP,#0xA0+var_6C]
437DA0:  VSTR            S4, [SP,#0xA0+var_78]
437DA4:  VSTR            S6, [SP,#0xA0+var_74]
437DA8:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
437DAC:  ADD             R0, SP, #0xA0+var_78
437DAE:  MOV             R1, R4
437DB0:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBA; CSprite2d::DrawRect(CRect const&,CRGBA const&)
437DB4:  VLDR            S0, =200.0
437DB8:  ADR             R0, dword_438000
437DBA:  VMOV.F32        S2, #-1.5
437DBE:  ADD             R4, SP, #0xA0+var_7C
437DC0:  VCMPE.F32       S24, S0
437DC4:  MOVS            R1, #0x60 ; '`'; unsigned __int8
437DC6:  VMRS            APSR_nzcv, FPSCR
437DCA:  MOV.W           R2, #0x60 ; '`'; unsigned __int8
437DCE:  MOV.W           R3, #0x60 ; '`'; unsigned __int8
437DD2:  IT GT
437DD4:  ADDGT           R0, #4
437DD6:  VSTR            S28, [SP,#0xA0+var_6C]
437DDA:  VLDR            S0, [R0]
437DDE:  MOV             R0, R4; this
437DE0:  VSTR            S30, [SP,#0xA0+var_78]
437DE4:  VDIV.F32        S0, S24, S0
437DE8:  STR.W           R9, [SP,#0xA0+var_A0]; unsigned __int8
437DEC:  VMUL.F32        S0, S22, S0
437DF0:  VSTR            S26, [SP,#0xA0+var_70]
437DF4:  VMUL.F32        S0, S0, S2
437DF8:  VADD.F32        S24, S17, S0
437DFC:  VSTR            S24, [SP,#0xA0+var_74]
437E00:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
437E04:  ADD             R0, SP, #0xA0+var_78
437E06:  MOV             R1, R4
437E08:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBA; CSprite2d::DrawRect(CRect const&,CRGBA const&)
437E0C:  ADD             R4, SP, #0xA0+var_7C
437E0E:  MOVS            R1, #0xF0; unsigned __int8
437E10:  MOVS            R2, #0xF0; unsigned __int8
437E12:  MOVS            R3, #0xF0; unsigned __int8
437E14:  MOV             R0, R4; this
437E16:  VSTR            S24, [SP,#0xA0+var_6C]
437E1A:  VSTR            S30, [SP,#0xA0+var_78]
437E1E:  VSTR            S26, [SP,#0xA0+var_70]
437E22:  VSTR            S17, [SP,#0xA0+var_74]
437E26:  STR.W           R9, [SP,#0xA0+var_A0]; unsigned __int8
437E2A:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
437E2E:  ADD             R0, SP, #0xA0+var_78
437E30:  MOV             R1, R4
437E32:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBA; CSprite2d::DrawRect(CRect const&,CRGBA const&)
437E36:  VLDR            S0, =0.05
437E3A:  ADD             R4, SP, #0xA0+var_7C
437E3C:  VLDR            S2, =1.2
437E40:  MOVS            R1, #0; unsigned __int8
437E42:  VMUL.F32        S0, S22, S0
437E46:  VLDR            S4, =1.4
437E4A:  VMUL.F32        S2, S20, S2
437E4E:  MOV             R0, R4; this
437E50:  VMUL.F32        S4, S20, S4
437E54:  MOVS            R2, #0; unsigned __int8
437E56:  MOVS            R3, #0; unsigned __int8
437E58:  VCVT.S32.F32    S0, S0
437E5C:  VADD.F32        S26, S18, S2
437E60:  VADD.F32        S28, S18, S4
437E64:  VCVT.F32.S32    S0, S0
437E68:  VSTR            S24, [SP,#0xA0+var_6C]
437E6C:  VSTR            S26, [SP,#0xA0+var_78]
437E70:  VSTR            S28, [SP,#0xA0+var_70]
437E74:  STR.W           R9, [SP,#0xA0+var_A0]; unsigned __int8
437E78:  VADD.F32        S30, S24, S0
437E7C:  VSTR            S30, [SP,#0xA0+var_74]
437E80:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
437E84:  ADD             R0, SP, #0xA0+var_78
437E86:  MOV             R1, R4
437E88:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBA; CSprite2d::DrawRect(CRect const&,CRGBA const&)
437E8C:  VMOV.F32        S0, #1.0
437E90:  ADD             R4, SP, #0xA0+var_7C
437E92:  VMOV.F32        S2, #-1.0
437E96:  MOVS            R1, #0xFF; unsigned __int8
437E98:  MOV             R0, R4; this
437E9A:  MOVS            R2, #0xFF; unsigned __int8
437E9C:  MOVS            R3, #0xFF; unsigned __int8
437E9E:  STR.W           R9, [SP,#0xA0+var_A0]; unsigned __int8
437EA2:  VADD.F32        S4, S24, S0
437EA6:  VADD.F32        S6, S28, S2
437EAA:  VADD.F32        S0, S26, S0
437EAE:  VADD.F32        S2, S30, S2
437EB2:  VSTR            S4, [SP,#0xA0+var_6C]
437EB6:  VSTR            S0, [SP,#0xA0+var_78]
437EBA:  VSTR            S6, [SP,#0xA0+var_70]
437EBE:  VSTR            S2, [SP,#0xA0+var_74]
437EC2:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
437EC6:  ADD             R0, SP, #0xA0+var_78
437EC8:  MOV             R1, R4
437ECA:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBA; CSprite2d::DrawRect(CRect const&,CRGBA const&)
437ECE:  VLDR            S0, =1.02
437ED2:  ADD             R5, SP, #0xA0+var_7C
437ED4:  MOVS            R1, #0; unsigned __int8
437ED6:  MOVS            R2, #0; unsigned __int8
437ED8:  VMUL.F32        S22, S22, S0
437EDC:  MOV             R0, R5; this
437EDE:  VMUL.F32        S20, S20, S0
437EE2:  MOVS            R3, #0; unsigned __int8
437EE4:  VSTR            S18, [SP,#0xA0+var_70]
437EE8:  VSTR            S16, [SP,#0xA0+var_74]
437EEC:  STR.W           R9, [SP,#0xA0+var_A0]; unsigned __int8
437EF0:  VSUB.F32        S24, S16, S22
437EF4:  VSUB.F32        S26, S18, S20
437EF8:  VSTR            S24, [SP,#0xA0+var_6C]
437EFC:  VSTR            S26, [SP,#0xA0+var_78]
437F00:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
437F04:  LDR             R0, =(_ZN4CHud7SpritesE_ptr - 0x437F0E)
437F06:  ADD             R1, SP, #0xA0+var_78
437F08:  MOV             R2, R5
437F0A:  ADD             R0, PC; _ZN4CHud7SpritesE_ptr
437F0C:  LDR             R0, [R0]; CHud::Sprites ...
437F0E:  ADD.W           R4, R0, #0xC
437F12:  MOV             R0, R4
437F14:  BLX             j__ZN9CSprite2d4DrawERK5CRectRK5CRGBA; CSprite2d::Draw(CRect const&,CRGBA const&)
437F18:  VADD.F32        S20, S18, S20
437F1C:  ADD             R5, SP, #0xA0+var_7C
437F1E:  MOVS            R1, #0; unsigned __int8
437F20:  MOVS            R2, #0; unsigned __int8
437F22:  MOV             R0, R5; this
437F24:  MOVS            R3, #0; unsigned __int8
437F26:  VSTR            S24, [SP,#0xA0+var_6C]
437F2A:  STR.W           R9, [SP,#0xA0+var_A0]; unsigned __int8
437F2E:  VSTR            S20, [SP,#0xA0+var_78]
437F32:  VSTR            S18, [SP,#0xA0+var_70]
437F36:  VSTR            S16, [SP,#0xA0+var_74]
437F3A:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
437F3E:  ADD             R1, SP, #0xA0+var_78
437F40:  MOV             R0, R4
437F42:  MOV             R2, R5
437F44:  BLX             j__ZN9CSprite2d4DrawERK5CRectRK5CRGBA; CSprite2d::Draw(CRect const&,CRGBA const&)
437F48:  VADD.F32        S22, S16, S22
437F4C:  ADD             R5, SP, #0xA0+var_7C
437F4E:  MOVS            R1, #0; unsigned __int8
437F50:  MOVS            R2, #0; unsigned __int8
437F52:  MOV             R0, R5; this
437F54:  MOVS            R3, #0; unsigned __int8
437F56:  STR.W           R9, [SP,#0xA0+var_A0]; unsigned __int8
437F5A:  VSTR            S22, [SP,#0xA0+var_6C]
437F5E:  VSTR            S26, [SP,#0xA0+var_78]
437F62:  VSTR            S18, [SP,#0xA0+var_70]
437F66:  VSTR            S16, [SP,#0xA0+var_74]
437F6A:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
437F6E:  ADD             R1, SP, #0xA0+var_78
437F70:  MOV             R0, R4
437F72:  MOV             R2, R5
437F74:  BLX             j__ZN9CSprite2d4DrawERK5CRectRK5CRGBA; CSprite2d::Draw(CRect const&,CRGBA const&)
437F78:  ADD             R5, SP, #0xA0+var_7C
437F7A:  MOVS            R1, #0; unsigned __int8
437F7C:  MOVS            R2, #0; unsigned __int8
437F7E:  MOVS            R3, #0; unsigned __int8
437F80:  MOV             R0, R5; this
437F82:  VSTR            S22, [SP,#0xA0+var_6C]
437F86:  VSTR            S20, [SP,#0xA0+var_78]
437F8A:  VSTR            S18, [SP,#0xA0+var_70]
437F8E:  VSTR            S16, [SP,#0xA0+var_74]
437F92:  STR.W           R9, [SP,#0xA0+var_A0]; unsigned __int8
437F96:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
437F9A:  ADD             R1, SP, #0xA0+var_78
437F9C:  MOV             R0, R4
437F9E:  MOV             R2, R5
437FA0:  BLX             j__ZN9CSprite2d4DrawERK5CRectRK5CRGBA; CSprite2d::Draw(CRect const&,CRGBA const&)
437FA4:  LDR.W           R0, [R8,#0x88]; this
437FA8:  CMP             R0, #0
437FAA:  IT NE
437FAC:  BLXNE           j__ZN11CHoldEffect4DrawEv; CHoldEffect::Draw(void)
437FB0:  MOVS            R0, #0xBF800000; this
437FB6:  BLX             j__ZN6CRadar9DrawBlipsEf; CRadar::DrawBlips(float)
437FBA:  ADD             SP, SP, #0x38 ; '8'
437FBC:  VPOP            {D8-D15}
437FC0:  ADD             SP, SP, #4
437FC2:  POP.W           {R8-R11}
437FC6:  POP.W           {R4-R7,LR}
437FCA:  BX              LR
