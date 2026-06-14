; =========================================================
; Game Engine Function: _ZN11CPlayerInfoC2Ev
; Address            : 0x408D90 - 0x408E48
; =========================================================

408D90:  PUSH            {R4,R5,R7,LR}; Alternative name is 'CPlayerInfo::CPlayerInfo(void)'
408D92:  ADD             R7, SP, #8
408D94:  VMOV.I32        Q8, #0
408D98:  MOV             R4, R0
408D9A:  MOVS            R5, #0
408D9C:  ADDS            R1, R4, #4
408D9E:  STRB.W          R5, [R4,#0x25]
408DA2:  STRD.W          R5, R5, [R4,#0x14]
408DA6:  LDRH            R0, [R4,#0x38]
408DA8:  VST1.32         {D16-D17}, [R1]
408DAC:  MOVS            R1, #0x63 ; 'c'
408DAE:  STRB.W          R5, [R4,#0x46]
408DB2:  STRH.W          R5, [R4,#0x44]
408DB6:  STR             R5, [R4,#0x40]
408DB8:  STRB.W          R5, [R4,#0x24]
408DBC:  STRD.W          R5, R5, [R4,#0x28]
408DC0:  STRD.W          R5, R5, [R4,#0x30]
408DC4:  STRB.W          R1, [R4,#0x47]
408DC8:  ADD.W           R1, R4, #0x78 ; 'x'
408DCC:  STRD.W          R5, R5, [R4,#0x4C]
408DD0:  STRD.W          R5, R5, [R4,#0x54]
408DD4:  STR             R5, [R4,#0x5C]
408DD6:  STR.W           R5, [R4,#0x8C]
408DDA:  VST1.32         {D16-D17}, [R1]
408DDE:  ADD.W           R1, R4, #0x68 ; 'h'
408DE2:  STRB.W          R5, [R4,#0x8A]
408DE6:  VST1.32         {D16-D17}, [R1]
408DEA:  MOVW            R1, #0xE7A0
408DEE:  ANDS            R0, R1
408DF0:  MOVW            R1, #0x1010
408DF4:  ORRS            R0, R1
408DF6:  STRH.W          R5, [R4,#0x88]
408DFA:  STRH            R0, [R4,#0x38]
408DFC:  MOVS            R0, #1
408DFE:  STRB.W          R0, [R4,#0x91]
408E02:  MOVS            R0, #7
408E04:  STRB.W          R5, [R4,#0x90]
408E08:  BLX             j__ZN6CStats23GetFatAndMuscleModifierE17eStatModAbilities; CStats::GetFatAndMuscleModifier(eStatModAbilities)
408E0C:  STRD.W          R0, R5, [R4,#0x1C]
408E10:  MOVS            R0, #8
408E12:  BLX             j__ZN6CStats23GetFatAndMuscleModifierE17eStatModAbilities; CStats::GetFatAndMuscleModifier(eStatModAbilities)
408E16:  STR             R0, [R4,#0x48]
408E18:  MOV.W           R0, #0xFFFFFFFF
408E1C:  STR             R5, [R4,#0x64]
408E1E:  MOV.W           R2, #0x80000000
408E22:  LDRH            R1, [R4,#0x38]
408E24:  ADD.W           R3, R4, #0xA0
408E28:  STRD.W          R5, R5, [R4,#0x98]
408E2C:  STM             R3!, {R0,R2,R5}
408E2E:  BIC.W           R0, R1, #0x80
408E32:  STR.W           R5, [R4,#0xAC]
408E36:  STR.W           R5, [R4,#0x188]
408E3A:  STR.W           R5, [R4,#0x190]
408E3E:  STRB.W          R5, [R4,#0x18C]
408E42:  STRH            R0, [R4,#0x38]
408E44:  MOV             R0, R4
408E46:  POP             {R4,R5,R7,PC}
