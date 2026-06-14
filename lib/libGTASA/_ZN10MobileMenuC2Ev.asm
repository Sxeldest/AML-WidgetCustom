; =========================================================
; Game Engine Function: _ZN10MobileMenuC2Ev
; Address            : 0x299B14 - 0x299B62
; =========================================================

299B14:  PUSH            {R4,R6,R7,LR}
299B16:  ADD             R7, SP, #8
299B18:  MOVW            R1, #0x8000
299B1C:  MOVS            R2, #0
299B1E:  MOVS            R3, #0
299B20:  MOV             R4, R0
299B22:  MOVS            R0, #0
299B24:  VMOV.I32        Q8, #0
299B28:  MOVT            R1, #0x4489
299B2C:  MOVT            R2, #0x43A0
299B30:  MOVT            R3, #0x4360
299B34:  ADD.W           R12, R4, #0x58 ; 'X'
299B38:  STR             R0, [R4,#0x30]
299B3A:  STRB.W          R0, [R4,#0x4D]
299B3E:  STM.W           R12, {R1-R3}
299B42:  STRB.W          R0, [R4,#0x6D]
299B46:  STRH.W          R0, [R4,#0x54]
299B4A:  ADD.W           R0, R4, #0x20 ; ' '
299B4E:  VST1.32         {D16-D17}, [R0]
299B52:  MOV             R0, R4; this
299B54:  BLX             j__ZN10MobileMenu12InitGameVarsEv; MobileMenu::InitGameVars(void)
299B58:  MOVS            R0, #1
299B5A:  STRB.W          R0, [R4,#0x6E]
299B5E:  MOV             R0, R4
299B60:  POP             {R4,R6,R7,PC}
