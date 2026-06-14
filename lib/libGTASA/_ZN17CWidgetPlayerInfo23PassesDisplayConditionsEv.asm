; =========================================================
; Game Engine Function: _ZN17CWidgetPlayerInfo23PassesDisplayConditionsEv
; Address            : 0x2BE268 - 0x2BE2F2
; =========================================================

2BE268:  LDR             R1, =(_ZN14MobileSettings8settingsE_ptr - 0x2BE26E)
2BE26A:  ADD             R1, PC; _ZN14MobileSettings8settingsE_ptr
2BE26C:  LDR             R1, [R1]; MobileSettings::settings ...
2BE26E:  LDR.W           R1, [R1,#(dword_6E06BC - 0x6E03F4)]
2BE272:  CBZ             R1, loc_2BE296
2BE274:  LDR             R1, =(_ZN6CTimer11m_UserPauseE_ptr - 0x2BE27C)
2BE276:  LDR             R2, =(_ZN6CTimer11m_CodePauseE_ptr - 0x2BE27E)
2BE278:  ADD             R1, PC; _ZN6CTimer11m_UserPauseE_ptr
2BE27A:  ADD             R2, PC; _ZN6CTimer11m_CodePauseE_ptr
2BE27C:  LDR             R1, [R1]; CTimer::m_UserPause ...
2BE27E:  LDR             R2, [R2]; CTimer::m_CodePause ...
2BE280:  LDRB            R1, [R1]; CTimer::m_UserPause
2BE282:  LDRB            R2, [R2]; CTimer::m_CodePause
2BE284:  ORRS            R1, R2
2BE286:  LSLS            R1, R1, #0x18
2BE288:  BEQ             loc_2BE296
2BE28A:  LDR             R1, [R0,#0x7C]
2BE28C:  MOVS            R0, #0
2BE28E:  CMP             R1, #5
2BE290:  IT GT
2BE292:  MOVGT           R0, #1
2BE294:  BX              LR
2BE296:  LDR             R0, =(gMobileMenu_ptr - 0x2BE29C)
2BE298:  ADD             R0, PC; gMobileMenu_ptr
2BE29A:  LDR             R1, [R0]; gMobileMenu
2BE29C:  MOVS            R0, #0
2BE29E:  LDR             R2, [R1,#(dword_6E0098 - 0x6E006C)]
2BE2A0:  CBNZ            R2, locret_2BE2F0
2BE2A2:  LDR             R2, =(FrontEndMenuManager_ptr - 0x2BE2A8)
2BE2A4:  ADD             R2, PC; FrontEndMenuManager_ptr
2BE2A6:  LDR             R2, [R2]; FrontEndMenuManager
2BE2A8:  LDRB            R2, [R2,#(byte_98F111 - 0x98F0F8)]
2BE2AA:  CBZ             R2, locret_2BE2F0
2BE2AC:  LDR             R2, =(_ZN11CTheScripts11bDisplayHudE_ptr - 0x2BE2B2)
2BE2AE:  ADD             R2, PC; _ZN11CTheScripts11bDisplayHudE_ptr
2BE2B0:  LDR             R2, [R2]; CTheScripts::bDisplayHud ...
2BE2B2:  LDRB            R2, [R2]; CTheScripts::bDisplayHud
2BE2B4:  CBZ             R2, locret_2BE2F0
2BE2B6:  LDR             R2, =(_ZN7CWeapon13ms_bTakePhotoE_ptr - 0x2BE2BC)
2BE2B8:  ADD             R2, PC; _ZN7CWeapon13ms_bTakePhotoE_ptr
2BE2BA:  LDR             R2, [R2]; CWeapon::ms_bTakePhoto ...
2BE2BC:  LDRB            R2, [R2]; CWeapon::ms_bTakePhoto
2BE2BE:  CMP             R2, #0
2BE2C0:  ITT EQ
2BE2C2:  LDREQ           R1, [R1,#(dword_6E0090 - 0x6E006C)]
2BE2C4:  CMPEQ           R1, #0
2BE2C6:  BNE             locret_2BE2F0
2BE2C8:  LDR             R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x2BE2D0)
2BE2CA:  LDR             R1, =(gbCineyCamProcessedOnFrame_ptr - 0x2BE2D2)
2BE2CC:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
2BE2CE:  ADD             R1, PC; gbCineyCamProcessedOnFrame_ptr
2BE2D0:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
2BE2D2:  LDR             R1, [R1]; gbCineyCamProcessedOnFrame
2BE2D4:  LDR             R2, [R0]; CTimer::m_FrameCounter
2BE2D6:  MOVS            R0, #0
2BE2D8:  LDR             R1, [R1]
2BE2DA:  CMP             R1, R2
2BE2DC:  IT EQ
2BE2DE:  BXEQ            LR
2BE2E0:  LDR             R1, =(TheCamera_ptr - 0x2BE2E6)
2BE2E2:  ADD             R1, PC; TheCamera_ptr
2BE2E4:  LDR             R1, [R1]; TheCamera
2BE2E6:  LDRB.W          R1, [R1,#(byte_951FE3 - 0x951FA8)]
2BE2EA:  CMP             R1, #0
2BE2EC:  IT EQ
2BE2EE:  MOVEQ           R0, #1
2BE2F0:  BX              LR
