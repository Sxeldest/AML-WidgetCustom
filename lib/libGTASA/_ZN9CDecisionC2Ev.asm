; =========================================================
; Game Engine Function: _ZN9CDecisionC2Ev
; Address            : 0x4BD4C0 - 0x4BD4EA
; =========================================================

4BD4C0:  VMOV.I8         Q9, #0xFF; Alternative name is 'CDecision::CDecision(void)'
4BD4C4:  ADR             R1, dword_4BD4F0
4BD4C6:  VLD1.64         {D16-D17}, [R1@128]
4BD4CA:  MOVS            R1, #0
4BD4CC:  MOV             R2, R0
4BD4CE:  STRH            R1, [R0,#0x34]
4BD4D0:  STR             R1, [R0,#0x20]
4BD4D2:  STR             R1, [R0,#0x30]
4BD4D4:  VST1.32         {D18-D19}, [R2]!
4BD4D8:  STRH            R1, [R0,#0x36]
4BD4DA:  STR             R1, [R0,#0x24]
4BD4DC:  STR             R1, [R0,#0x28]
4BD4DE:  STRH            R1, [R0,#0x38]
4BD4E0:  STR             R1, [R0,#0x2C]
4BD4E2:  STRH            R1, [R0,#0x3A]
4BD4E4:  VST1.32         {D16-D17}, [R2]
4BD4E8:  BX              LR
