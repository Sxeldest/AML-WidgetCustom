; =========================================================
; Game Engine Function: _Z20Menu_SwitchOffToGamev
; Address            : 0x2A92F0 - 0x2A93AA
; =========================================================

2A92F0:  LDR             R0, =(_ZN4CHID11m_pInstanceE_ptr - 0x2A92F6)
2A92F2:  ADD             R0, PC; _ZN4CHID11m_pInstanceE_ptr
2A92F4:  LDR             R0, [R0]; CHID::m_pInstance ...
2A92F6:  LDR             R0, [R0]; CHID::m_pInstance
2A92F8:  CBZ             R0, loc_2A9304
2A92FA:  LDR             R0, =(_ZN4CHID13m_nDeadFramesE_ptr - 0x2A9302)
2A92FC:  MOVS            R1, #1
2A92FE:  ADD             R0, PC; _ZN4CHID13m_nDeadFramesE_ptr
2A9300:  LDR             R0, [R0]; CHID::m_nDeadFrames ...
2A9302:  STR             R1, [R0]; CHID::m_nDeadFrames
2A9304:  PUSH            {R4,R5,R7,LR}
2A9306:  ADD             R7, SP, #8
2A9308:  LDR             R0, =(byte_6E03BC - 0x2A930E)
2A930A:  ADD             R0, PC; byte_6E03BC
2A930C:  LDRB            R0, [R0]; this
2A930E:  CBNZ            R0, loc_2A931C
2A9310:  BLX             j__ZN15CTouchInterface9CreateAllEv; CTouchInterface::CreateAll(void)
2A9314:  LDR             R0, =(byte_6E03BC - 0x2A931C)
2A9316:  MOVS            R1, #1; int
2A9318:  ADD             R0, PC; byte_6E03BC
2A931A:  STRB            R1, [R0]
2A931C:  MOVS            R0, #0; this
2A931E:  MOVS            R4, #0
2A9320:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
2A9324:  MOVS            R1, #0; bool
2A9326:  MOVS            R2, #1; bool
2A9328:  MOVS            R5, #1
2A932A:  BLX             j__ZN4CPad5ClearEbb; CPad::Clear(bool,bool)
2A932E:  MOVS            R0, #0; this
2A9330:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
2A9334:  BLX             j__ZN4CPad20ClearKeyBoardHistoryEv; CPad::ClearKeyBoardHistory(void)
2A9338:  MOVS            R0, #0; this
2A933A:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
2A933E:  BLX             j__ZN4CPad17ClearMouseHistoryEv; CPad::ClearMouseHistory(void)
2A9342:  BLX             j__ZN6CTimer12EndUserPauseEv; CTimer::EndUserPause(void)
2A9346:  BLX             j__ZN6CTimer6UpdateEv; CTimer::Update(void)
2A934A:  BLX             j__Z13SaveTelemetryv; SaveTelemetry(void)
2A934E:  MOVS            R0, #0; this
2A9350:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
2A9354:  STRB.W          R5, [R0,#0x113]
2A9358:  MOVS            R0, #0; this
2A935A:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
2A935E:  STR.W           R4, [R0,#0x134]
2A9362:  MOVS            R0, #(stderr+1); this
2A9364:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
2A9368:  LDR             R1, =(word_6E03BA - 0x2A9374)
2A936A:  STR.W           R4, [R0,#0x134]
2A936E:  MOVS            R0, #0; this
2A9370:  ADD             R1, PC; word_6E03BA ; int
2A9372:  LDRH            R4, [R1]
2A9374:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
2A9378:  LDR             R1, =(_ZN14MobileSettings8settingsE_ptr - 0x2A9386)
2A937A:  VMOV.F32        S2, #0.875
2A937E:  STRH.W          R4, [R0,#0x110]
2A9382:  ADD             R1, PC; _ZN14MobileSettings8settingsE_ptr
2A9384:  VLDR            S4, =0.01
2A9388:  LDR             R0, =(_ZN9CRenderer15ms_lodDistScaleE_ptr - 0x2A9390)
2A938A:  LDR             R1, [R1]; MobileSettings::settings ...
2A938C:  ADD             R0, PC; _ZN9CRenderer15ms_lodDistScaleE_ptr
2A938E:  VLDR            S0, [R1,#0x48]
2A9392:  LDR             R0, [R0]; CRenderer::ms_lodDistScale ...
2A9394:  VCVT.F32.S32    S0, S0
2A9398:  VMUL.F32        S0, S0, S2
2A939C:  VMUL.F32        S0, S0, S4
2A93A0:  VADD.F32        S0, S0, S2
2A93A4:  VSTR            S0, [R0]
2A93A8:  POP             {R4,R5,R7,PC}
