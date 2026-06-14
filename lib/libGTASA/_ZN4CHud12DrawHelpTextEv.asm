; =========================================================
; Game Engine Function: _ZN4CHud12DrawHelpTextEv
; Address            : 0x438AC0 - 0x438AEC
; =========================================================

438AC0:  LDR             R0, =(_ZN12CCutsceneMgr10ms_runningE_ptr - 0x438AC8)
438AC2:  LDR             R1, =(_ZN8CGarages15MessageIDStringE_ptr - 0x438ACA)
438AC4:  ADD             R0, PC; _ZN12CCutsceneMgr10ms_runningE_ptr
438AC6:  ADD             R1, PC; _ZN8CGarages15MessageIDStringE_ptr
438AC8:  LDR             R0, [R0]; CCutsceneMgr::ms_running ...
438ACA:  LDR             R1, [R1]; CGarages::MessageIDString ...
438ACC:  LDRB            R0, [R0]; CCutsceneMgr::ms_running
438ACE:  LDRB            R1, [R1]; CGarages::MessageIDString
438AD0:  ORRS            R0, R1
438AD2:  LSLS            R0, R0, #0x18
438AD4:  IT NE
438AD6:  BXNE            LR
438AD8:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x438ADE)
438ADA:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
438ADC:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
438ADE:  LDR.W           R0, [R0,#(dword_6F3A1C - 0x6F3794)]; this
438AE2:  CMP             R0, #0
438AE4:  IT NE
438AE6:  BNE.W           sub_194BF4
438AEA:  BX              LR
