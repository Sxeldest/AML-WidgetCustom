; =========================================================
; Game Engine Function: _ZN8CCarCtrl26SwitchVehicleToRealPhysicsEP8CVehicle
; Address            : 0x2EED60 - 0x2EED8C
; =========================================================

2EED60:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2EED70)
2EED62:  MOV.W           R12, #0
2EED66:  LDRB.W          R2, [R0,#0x3A]
2EED6A:  MOVS            R3, #3
2EED6C:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2EED6E:  STRB.W          R12, [R0,#0x3BF]
2EED72:  BFI.W           R2, R3, #3, #0x1D
2EED76:  STRB.W          R2, [R0,#0x3A]
2EED7A:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
2EED7C:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
2EED7E:  STRB.W          R12, [R0,#0xBC]
2EED82:  ADD.W           R2, R1, #0x7D0
2EED86:  STRD.W          R2, R1, [R0,#0x3B0]
2EED8A:  BX              LR
