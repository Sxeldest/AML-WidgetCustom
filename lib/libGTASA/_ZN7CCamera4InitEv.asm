; =========================================================
; Game Engine Function: _ZN7CCamera4InitEv
; Address            : 0x46F850 - 0x46FB60
; =========================================================

46F850:  PUSH            {R4-R7,LR}
46F852:  ADD             R7, SP, #0xC
46F854:  PUSH.W          {R8,R9,R11}
46F858:  SUB             SP, SP, #8
46F85A:  MOV             R4, R0
46F85C:  ADD.W           R0, R4, #0x18
46F860:  MOVW            R1, #0xCE8
46F864:  BLX             j___aeabi_memclr8_1
46F868:  LDR             R0, =(TheCamera_ptr - 0x46F86E)
46F86A:  ADD             R0, PC; TheCamera_ptr
46F86C:  LDR             R0, [R0]; TheCamera ; this
46F86E:  BLX             j__ZN7CCamera30InitialiseScriptableComponentsEv; CCamera::InitialiseScriptableComponents(void)
46F872:  ADD.W           R0, R4, #0x170; this
46F876:  MOVS            R5, #0
46F878:  STRB.W          R5, [R4,#0x3C]
46F87C:  STRB.W          R5, [R4,#0x25]
46F880:  STR.W           R5, [R4,#0x13C]
46F884:  STRB            R5, [R4,#0x1C]
46F886:  BLX             j__ZN4CCam4InitEv; CCam::Init(void)
46F88A:  ADD.W           R0, R4, #0x380; this
46F88E:  BLX             j__ZN4CCam4InitEv; CCam::Init(void)
46F892:  ADD.W           R0, R4, #0x590; this
46F896:  BLX             j__ZN4CCam4InitEv; CCam::Init(void)
46F89A:  ADR             R0, sub_46FB60
46F89C:  MOVW            R2, #0xCCCD
46F8A0:  VLD1.64         {D16-D17}, [R0@128]
46F8A4:  ADD.W           R0, R4, #0x230
46F8A8:  MOVW            R6, #0x6666
46F8AC:  MOVT            R2, #0xBF0C
46F8B0:  VST1.32         {D16-D17}, [R0]
46F8B4:  MOVS            R0, #4
46F8B6:  MOV.W           R3, #0x3FC00000
46F8BA:  MOVT            R6, #0x4066
46F8BE:  ADD.W           R12, R4, #0x224
46F8C2:  STRH.W          R0, [R4,#0x38E]
46F8C6:  STRH.W          R0, [R4,#0x17E]
46F8CA:  MOVW            R0, #0xCCCD
46F8CE:  STR.W           R5, [R4,#0x3E]
46F8D2:  MOVW            R1, #0x6408
46F8D6:  STM.W           R12, {R2,R3,R6}
46F8DA:  MOVW            R2, #0x8113
46F8DE:  MOVT            R0, #0x3FEC
46F8E2:  MOVT            R2, #0x3F66
46F8E6:  MOVT            R1, #0x3E6F
46F8EA:  STRD.W          R2, R0, [R4,#0x240]
46F8EE:  MOVS            R0, #1
46F8F0:  STR.W           R1, [R4,#0x248]
46F8F4:  STRB.W          R0, [R4,#0x42]
46F8F8:  MOV             R0, R4; this
46F8FA:  STRB.W          R5, [R4,#0x2B]
46F8FE:  BLX             j__ZN7CCamera21ClearPlayerWeaponModeEv; CCamera::ClearPlayerWeaponMode(void)
46F902:  MOV.W           R0, #0x3E800000
46F906:  STR.W           R5, [R4,#0x574]
46F90A:  STR.W           R5, [R4,#0x364]
46F90E:  MOV.W           R1, #0x3F400000
46F912:  STRB.W          R5, [R4,#0x20]
46F916:  STR.W           R5, [R4,#0x784]
46F91A:  STRD.W          R5, R5, [R4,#0x1A0]
46F91E:  STRB.W          R5, [R4,#0x382]
46F922:  STRB.W          R5, [R4,#0x172]
46F926:  STRD.W          R5, R5, [R4,#0x3B0]
46F92A:  STRB.W          R5, [R4,#0x592]
46F92E:  STR.W           R5, [R4,#0x580]
46F932:  STR.W           R5, [R4,#0x370]
46F936:  STR.W           R5, [R4,#0x790]
46F93A:  STR.W           R0, [R4,#0xB98]
46F93E:  MOV             R0, #0x3F59999A
46F946:  STR.W           R1, [R4,#0xB9C]
46F94A:  STR.W           R0, [R4,#0xBA8]
46F94E:  MOVS            R0, #0x1E
46F950:  STR             R5, [R4,#0x58]
46F952:  MOVS            R1, #:lower16:(loc_300002+1)
46F954:  STR.W           R5, [R4,#0x128]
46F958:  MOVT            R1, #:upper16:(loc_300002+1)
46F95C:  STR.W           R0, [R4,#0xBBC]
46F960:  MOV             R0, #0x3F666666
46F968:  STR.W           R5, [R4,#0x7A0]
46F96C:  STR.W           R5, [R4,#0x7A4]
46F970:  STR.W           R0, [R4,#0x134]
46F974:  MOVS            R0, #0x310032
46F97A:  STRB.W          R5, [R4,#0x3D]
46F97E:  STRB.W          R5, [R4,#0x4E]
46F982:  STRB.W          R5, [R4,#0x38]
46F986:  STRH.W          R5, [R4,#0x23]
46F98A:  STRB.W          R5, [R4,#0x26]
46F98E:  STRB.W          R5, [R4,#0x2F]
46F992:  STRB.W          R5, [R4,#0x4D]
46F996:  STRH            R5, [R4,#0x18]
46F998:  STRD.W          R0, R1, [R4,#0x44]
46F99C:  MOVS            R0, #2
46F99E:  STRB.W          R5, [R4,#0x3B]
46F9A2:  MOVS            R1, #0; bool
46F9A4:  STR.W           R5, [R4,#0x130]
46F9A8:  STRB.W          R5, [R4,#0x2E]
46F9AC:  STRD.W          R0, R5, [R4,#0xB0]
46F9B0:  STRD.W          R5, R5, [R4,#0xB8]
46F9B4:  STRD.W          R0, R5, [R4,#0xC4]
46F9B8:  MOV.W           R0, #0xFFFFFFFF; int
46F9BC:  STRD.W          R5, R5, [R4,#0xCC]
46F9C0:  STR.W           R5, [R4,#0x8DC]
46F9C4:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
46F9C8:  ADDW            R5, R4, #0x8DC
46F9CC:  CBZ             R0, loc_46F9DA
46F9CE:  MOV.W           R0, #0xFFFFFFFF; int
46F9D2:  MOVS            R1, #0; bool
46F9D4:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
46F9D8:  B               loc_46F9F2
46F9DA:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x46F9E6)
46F9DC:  MOV.W           R2, #0x194
46F9E0:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x46F9E8)
46F9E2:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
46F9E4:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
46F9E6:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
46F9E8:  LDR             R1, [R1]; CWorld::Players ...
46F9EA:  LDR             R0, [R0]; CWorld::PlayerInFocus
46F9EC:  SMULBB.W        R0, R0, R2
46F9F0:  LDR             R0, [R1,R0]; this
46F9F2:  CMP             R0, #0
46F9F4:  STR             R0, [R5]
46F9F6:  ITT NE
46F9F8:  MOVNE           R1, R5; CEntity **
46F9FA:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
46F9FE:  LDR             R1, =(gMobileMenu_ptr - 0x46FA0E)
46FA00:  MOVS            R0, #0
46FA02:  MOV.W           R2, #0x3F800000
46FA06:  STRB.W          R0, [R4,#0x21]
46FA0A:  ADD             R1, PC; gMobileMenu_ptr
46FA0C:  STRD.W          R0, R0, [R4,#0x140]
46FA10:  STRB.W          R0, [R4,#0x3B]
46FA14:  LDR             R1, [R1]; gMobileMenu
46FA16:  STRB.W          R0, [R4,#0x3A]
46FA1A:  STRB.W          R0, [R4,#0x54]
46FA1E:  STR.W           R2, [R4,#0x150]
46FA22:  STR.W           R0, [R4,#0x11C]
46FA26:  LDRB.W          R1, [R1,#(byte_6E00B8 - 0x6E006C)]
46FA2A:  CMP             R1, #1
46FA2C:  BEQ             loc_46FA70
46FA2E:  CBNZ            R1, loc_46FA74
46FA30:  LDR             R1, =(_ZN5CDraw9FadeValueE_ptr - 0x46FA3A)
46FA32:  MOVS            R3, #0
46FA34:  LDR             R2, =(_ZN7CCamera21m_fMouseAccelVerticalE_ptr - 0x46FA3E)
46FA36:  ADD             R1, PC; _ZN5CDraw9FadeValueE_ptr
46FA38:  LDR             R0, =(_ZN7CCamera20m_fMouseAccelHorzntlE_ptr - 0x46FA46)
46FA3A:  ADD             R2, PC; _ZN7CCamera21m_fMouseAccelVerticalE_ptr
46FA3C:  STRB.W          R3, [R4,#0x4F]
46FA40:  LDR             R1, [R1]; CDraw::FadeValue ...
46FA42:  ADD             R0, PC; _ZN7CCamera20m_fMouseAccelHorzntlE_ptr
46FA44:  LDR             R2, [R2]; CCamera::m_fMouseAccelVertical ...
46FA46:  LDR             R0, [R0]; CCamera::m_fMouseAccelHorzntl ...
46FA48:  STRB            R3, [R1]; CDraw::FadeValue
46FA4A:  MOV             R1, #0x3AC49BA6
46FA52:  STRB.W          R3, [R4,#0x50]
46FA56:  STR.W           R3, [R4,#0xB90]
46FA5A:  STR.W           R3, [R4,#0xB84]
46FA5E:  STR.W           R3, [R4,#0xB88]
46FA62:  STR             R1, [R2]; CCamera::m_fMouseAccelVertical
46FA64:  MOV             R1, #0x3B23D70A
46FA6C:  STR             R1, [R0]; CCamera::m_fMouseAccelHorzntl
46FA6E:  B               loc_46FA74
46FA70:  STR.W           R0, [R4,#0xB90]
46FA74:  MOVS            R0, #0
46FA76:  MOVS            R5, #1
46FA78:  MOVS            R6, #0
46FA7A:  MOVT            R0, #0x428C
46FA7E:  STRH.W          R5, [R4,#0xBC4]
46FA82:  MOV.W           R8, #4
46FA86:  STRB.W          R6, [R4,#0x31]
46FA8A:  MOV.W           R1, #0x3F800000; float
46FA8E:  STRB.W          R6, [R4,#0x36]
46FA92:  MOV.W           R9, #0x3F800000
46FA96:  STRB.W          R6, [R4,#0x37]
46FA9A:  STR.W           R6, [R4,#0xD4]
46FA9E:  STR.W           R6, [R4,#0xC0]
46FAA2:  STRB.W          R6, [R4,#0x34]
46FAA6:  STR.W           R0, [R4,#0x12C]
46FAAA:  ADDW            R0, R4, #0x8FC; this
46FAAE:  STRH.W          R8, [R4,#0xBC0]
46FAB2:  STRB.W          R6, [R4,#0x28]
46FAB6:  STRB.W          R6, [R4,#0x35]
46FABA:  BLX             j__ZN7CMatrix8SetScaleEf; CMatrix::SetScale(float)
46FABE:  MOVW            R0, #0x1388
46FAC2:  STRB.W          R6, [R4,#0x22]
46FAC6:  STRB.W          R6, [R4,#0x32]
46FACA:  MOVS            R1, #0xFF; int
46FACC:  STR             R0, [R4,#0x60]
46FACE:  MOV             R0, R4; this
46FAD0:  MOVS            R2, #0xFF; int
46FAD2:  MOVS            R3, #0xFF; int
46FAD4:  STRB            R6, [R4,#0x1F]
46FAD6:  STRD.W          R6, R6, [R4,#0x68]
46FADA:  STR             R6, [R4,#0x70]
46FADC:  STR.W           R9, [R4,#0xEC]
46FAE0:  STRH            R6, [R4,#0x1A]
46FAE2:  STR.W           R6, [R4,#0x9C]
46FAE6:  STRB.W          R6, [R4,#0x4C]
46FAEA:  STRD.W          R6, R6, [SP,#0x20+var_20]; int
46FAEE:  BLX             j__ZN7CCamera13SetMotionBlurEiiiii; CCamera::SetMotionBlur(int,int,int,int,int)
46FAF2:  LDR             R0, =(_ZN7CCamera22m_f3rdPersonCHairMultYE_ptr - 0x46FAFC)
46FAF4:  MOVS            R3, #6
46FAF6:  LDR             R1, =(_ZN7CCamera22m_f3rdPersonCHairMultXE_ptr - 0x46FB00)
46FAF8:  ADD             R0, PC; _ZN7CCamera22m_f3rdPersonCHairMultYE_ptr
46FAFA:  LDR             R2, =(gPlayerPedVisible_ptr - 0x46FB06)
46FAFC:  ADD             R1, PC; _ZN7CCamera22m_f3rdPersonCHairMultXE_ptr
46FAFE:  STRD.W          R8, R6, [R4,#0x90]
46FB02:  ADD             R2, PC; gPlayerPedVisible_ptr
46FB04:  LDR             R0, [R0]; CCamera::m_f3rdPersonCHairMultY ...
46FB06:  STR             R6, [R4,#0x74]
46FB08:  STRB.W          R5, [R4,#0x27]
46FB0C:  STRB.W          R6, [R4,#0x56]
46FB10:  STRB.W          R5, [R4,#0x29]
46FB14:  STRB.W          R6, [R4,#0x2A]
46FB18:  STRB.W          R6, [R4,#0x52]
46FB1C:  STRB            R6, [R4,#0x1E]
46FB1E:  STRD.W          R3, R6, [R4,#0xA4]
46FB22:  MOVW            R3, #0xCCCD
46FB26:  LDR             R1, [R1]; CCamera::m_f3rdPersonCHairMultX ...
46FB28:  MOVT            R3, #0x3ECC
46FB2C:  LDR             R2, [R2]; gPlayerPedVisible
46FB2E:  STRD.W          R6, R6, [R4,#0x120]
46FB32:  STR.W           R6, [R4,#0x7C0]
46FB36:  STR.W           R6, [R4,#0x7C4]
46FB3A:  STR.W           R6, [R4,#0x7C8]
46FB3E:  STR             R3, [R0]; CCamera::m_f3rdPersonCHairMultY
46FB40:  MOV             R0, #0x3F07AE14
46FB48:  STR             R0, [R1]; CCamera::m_f3rdPersonCHairMultX
46FB4A:  STRH.W          R6, [R4,#0x164]
46FB4E:  STR.W           R6, [R4,#0x160]
46FB52:  STRB            R5, [R2]
46FB54:  STRB.W          R5, [R4,#0x8F5]
46FB58:  ADD             SP, SP, #8
46FB5A:  POP.W           {R8,R9,R11}
46FB5E:  POP             {R4-R7,PC}
