; =========================================================
; Game Engine Function: _ZN8CCarCtrl25RegisterVehicleOfInterestEP8CVehicle
; Address            : 0x2FAC48 - 0x2FACB8
; =========================================================

2FAC48:  LDR             R1, =(apCarsToKeep_ptr - 0x2FAC4E)
2FAC4A:  ADD             R1, PC; apCarsToKeep_ptr
2FAC4C:  LDR             R1, [R1]; apCarsToKeep
2FAC4E:  LDR             R1, [R1]
2FAC50:  CMP             R1, R0
2FAC52:  BEQ             loc_2FAC86
2FAC54:  LDR             R2, =(apCarsToKeep_ptr - 0x2FAC5A)
2FAC56:  ADD             R2, PC; apCarsToKeep_ptr
2FAC58:  LDR             R2, [R2]; apCarsToKeep
2FAC5A:  LDR             R2, [R2,#(dword_7967A8 - 0x7967A4)]
2FAC5C:  CMP             R2, R0
2FAC5E:  BEQ             loc_2FAC8A
2FAC60:  CBZ             R1, loc_2FAC8E
2FAC62:  CBZ             R2, loc_2FAC98
2FAC64:  LDR             R1, =(aCarsToKeepTime_ptr - 0x2FAC6E)
2FAC66:  LDR.W           R12, =(apCarsToKeep_ptr - 0x2FAC70)
2FAC6A:  ADD             R1, PC; aCarsToKeepTime_ptr
2FAC6C:  ADD             R12, PC; apCarsToKeep_ptr
2FAC6E:  LDR             R1, [R1]; aCarsToKeepTime
2FAC70:  LDR.W           R12, [R12]; apCarsToKeep
2FAC74:  LDRD.W          R3, R2, [R1]
2FAC78:  MOVS            R1, #0
2FAC7A:  CMP             R2, R3
2FAC7C:  IT CC
2FAC7E:  MOVCC           R1, #1
2FAC80:  ADD.W           R2, R12, R1,LSL#2
2FAC84:  B               loc_2FACA2
2FAC86:  MOVS            R1, #0
2FAC88:  B               loc_2FACA4
2FAC8A:  MOVS            R1, #1
2FAC8C:  B               loc_2FACA4
2FAC8E:  LDR             R1, =(apCarsToKeep_ptr - 0x2FAC94)
2FAC90:  ADD             R1, PC; apCarsToKeep_ptr
2FAC92:  LDR             R2, [R1]; apCarsToKeep
2FAC94:  MOVS            R1, #0
2FAC96:  B               loc_2FACA2
2FAC98:  LDR             R1, =(apCarsToKeep_ptr - 0x2FAC9E)
2FAC9A:  ADD             R1, PC; apCarsToKeep_ptr
2FAC9C:  LDR             R1, [R1]; apCarsToKeep
2FAC9E:  ADDS            R2, R1, #4
2FACA0:  MOVS            R1, #1
2FACA2:  STR             R0, [R2]
2FACA4:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2FACAC)
2FACA6:  LDR             R2, =(aCarsToKeepTime_ptr - 0x2FACAE)
2FACA8:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2FACAA:  ADD             R2, PC; aCarsToKeepTime_ptr
2FACAC:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
2FACAE:  LDR             R2, [R2]; aCarsToKeepTime
2FACB0:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
2FACB2:  STR.W           R0, [R2,R1,LSL#2]
2FACB6:  BX              LR
