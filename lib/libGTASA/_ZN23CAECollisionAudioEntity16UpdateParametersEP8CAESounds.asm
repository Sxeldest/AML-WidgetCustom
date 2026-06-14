; =========================================================
; Game Engine Function: _ZN23CAECollisionAudioEntity16UpdateParametersEP8CAESounds
; Address            : 0x394E34 - 0x394F14
; =========================================================

394E34:  LDR             R3, [R1,#0xC]
394E36:  MOV.W           R12, #0xFFFFFFFF
394E3A:  CMP             R3, #2
394E3C:  BGT             loc_394E70
394E3E:  CMP             R3, #1
394E40:  BEQ             locret_394EEE
394E42:  CMP             R3, #2
394E44:  BNE             loc_394EA2
394E46:  CMP             R2, R12
394E48:  BLE             locret_394EEE
394E4A:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x394E54)
394E4C:  VLDR            S0, [R1,#0x10]
394E50:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
394E52:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
394E54:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
394E56:  VCVT.U32.F32    S0, S0
394E5A:  VMOV            R2, S0
394E5E:  CMP             R0, R2
394E60:  ITTTT CS
394E62:  MOVWCS          R0, #0x47AE
394E66:  MOVTCS          R0, #0x3FA1
394E6A:  STRCS           R0, [R1,#0x1C]
394E6C:  BXCS            LR
394E6E:  BX              LR
394E70:  CMP             R3, #3
394E72:  BEQ             loc_394EC6
394E74:  CMP             R3, #0x80
394E76:  BNE             loc_394EA2
394E78:  CMP             R2, R12
394E7A:  BLE             locret_394EEE
394E7C:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x394E86)
394E7E:  VLDR            S0, [R1,#0x10]
394E82:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
394E84:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
394E86:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
394E88:  VCVT.U32.F32    S0, S0
394E8C:  VMOV            R2, S0
394E90:  CMP             R0, R2
394E92:  ITTTT CS
394E94:  MOVWCS          R0, #0x5C29
394E98:  MOVTCS          R0, #0x3F0F
394E9C:  STRCS           R0, [R1,#0x1C]
394E9E:  BXCS            LR
394EA0:  BX              LR
394EA2:  CMP             R2, R12
394EA4:  IT NE
394EA6:  BXNE            LR
394EA8:  ADD.W           R12, R0, #0x208
394EAC:  MOV.W           R3, #0xFFFFFFFF
394EB0:  LDR.W           R2, [R12,#8]
394EB4:  CMP             R2, R1
394EB6:  BEQ             loc_394EF0
394EB8:  ADDS            R3, #1
394EBA:  ADD.W           R12, R12, #0x14
394EBE:  CMP.W           R3, #0x12A
394EC2:  BLE             loc_394EB0
394EC4:  B               locret_394EEE
394EC6:  CMP             R2, R12
394EC8:  BLE             locret_394EEE
394ECA:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x394ED4)
394ECC:  VLDR            S0, [R1,#0x10]
394ED0:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
394ED2:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
394ED4:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
394ED6:  VCVT.U32.F32    S0, S0
394EDA:  VMOV            R2, S0
394EDE:  CMP             R0, R2
394EE0:  ITTTT CS
394EE2:  MOVWCS          R0, #0xA3D7
394EE6:  MOVTCS          R0, #0x3F70
394EEA:  STRCS           R0, [R1,#0x1C]
394EEC:  BXCS            LR
394EEE:  BX              LR
394EF0:  MOVS            R2, #0xC3
394EF2:  MOVS            R1, #0
394EF4:  STRB.W          R2, [R12,#0x12]
394EF8:  STRD.W          R1, R1, [R12]
394EFC:  STR.W           R1, [R12,#8]
394F00:  MOV.W           R1, #0xC300
394F04:  STRH.W          R1, [R12,#0x10]
394F08:  LDR.W           R1, [R0,#0x204]
394F0C:  SUBS            R1, #1
394F0E:  STR.W           R1, [R0,#0x204]
394F12:  BX              LR
