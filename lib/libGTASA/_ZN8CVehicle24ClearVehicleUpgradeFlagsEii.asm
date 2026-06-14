; =========================================================
; Game Engine Function: _ZN8CVehicle24ClearVehicleUpgradeFlagsEii
; Address            : 0x58CF20 - 0x58CFEC
; =========================================================

58CF20:  PUSH            {R4,R5,R7,LR}
58CF22:  ADD             R7, SP, #8
58CF24:  MOV             R4, R0
58CF26:  CMP             R2, #0xF
58CF28:  BEQ             loc_58CF7E
58CF2A:  CMP             R2, #0x11
58CF2C:  BEQ             loc_58CFAA
58CF2E:  CMP             R2, #0x10
58CF30:  BNE             loc_58CFA6
58CF32:  LDR.W           R0, [R4,#0x390]
58CF36:  TST.W           R0, #0x20000
58CF3A:  BEQ             loc_58CF72
58CF3C:  LDRSB.W         R1, [R4,#0x48F]
58CF40:  CMP             R1, #0
58CF42:  BLT             loc_58CF72
58CF44:  LDR             R0, =(_ZN8CVehicle20m_aSpecialColVehicleE_ptr - 0x58CF4C)
58CF46:  MOVS            R5, #0
58CF48:  ADD             R0, PC; _ZN8CVehicle20m_aSpecialColVehicleE_ptr
58CF4A:  LDR             R0, [R0]; CVehicle::m_aSpecialColVehicle ...
58CF4C:  STR.W           R5, [R0,R1,LSL#2]
58CF50:  MOVS            R1, #0xFF
58CF52:  LDR             R0, [R4]
58CF54:  STRB.W          R1, [R4,#0x48F]
58CF58:  LDR.W           R1, [R0,#0xC4]
58CF5C:  MOV             R0, R4
58CF5E:  BLX             R1
58CF60:  LDR.W           R0, [R4,#0x390]
58CF64:  MOV             R1, #0x3CA3D70A
58CF6C:  STR             R1, [R4,#0x50]
58CF6E:  STRB.W          R5, [R4,#0xBC]
58CF72:  BIC.W           R0, R0, #0x20000
58CF76:  STR.W           R0, [R4,#0x390]
58CF7A:  MOVS            R0, #1
58CF7C:  POP             {R4,R5,R7,PC}
58CF7E:  LDR.W           R0, [R4,#0x5A0]
58CF82:  CBNZ            R0, loc_58CFA6
58CF84:  MOV             R0, R4; this
58CF86:  MOV.W           R1, #0xFFFFFFFF; signed __int8
58CF8A:  BLX             j__ZN11CAutomobile14NitrousControlEa; CAutomobile::NitrousControl(signed char)
58CF8E:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x58CF98)
58CF90:  LDRSH.W         R1, [R4,#0x26]
58CF94:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
58CF96:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
58CF98:  LDR.W           R0, [R0,R1,LSL#2]
58CF9C:  LDR             R0, [R0,#0x74]
58CF9E:  LDR.W           R0, [R0,#0x2B0]
58CFA2:  CMP             R0, #0
58CFA4:  BLT             loc_58CFB8
58CFA6:  MOVS            R0, #0
58CFA8:  POP             {R4,R5,R7,PC}
58CFAA:  LDRB.W          R0, [R4,#0x1D7]
58CFAE:  CBNZ            R0, loc_58CFB8
58CFB0:  LDRB.W          R0, [R4,#0x432]
58CFB4:  LSLS            R0, R0, #0x1B
58CFB6:  BMI             loc_58CFBC
58CFB8:  MOVS            R0, #1
58CFBA:  POP             {R4,R5,R7,PC}
58CFBC:  LDRB.W          R1, [R4,#0x1C2]
58CFC0:  ADDW            R5, R4, #0x42C
58CFC4:  CMP             R1, #1
58CFC6:  BEQ             loc_58CFCE
58CFC8:  CBNZ            R1, loc_58CFD4
58CFCA:  MOVS            R1, #2
58CFCC:  B               loc_58CFD0
58CFCE:  MOVS            R1, #0
58CFD0:  STRB.W          R1, [R4,#0x1C2]
58CFD4:  LDR             R0, =(AudioEngine_ptr - 0x58CFDC)
58CFD6:  SXTB            R1, R1; signed __int8
58CFD8:  ADD             R0, PC; AudioEngine_ptr
58CFDA:  LDR             R0, [R0]; AudioEngine ; this
58CFDC:  BLX             j__ZN12CAudioEngine19SetRadioBassSettingEa; CAudioEngine::SetRadioBassSetting(signed char)
58CFE0:  LDR             R0, [R5,#4]
58CFE2:  BIC.W           R0, R0, #0x100000
58CFE6:  STR             R0, [R5,#4]
58CFE8:  MOVS            R0, #1
58CFEA:  POP             {R4,R5,R7,PC}
