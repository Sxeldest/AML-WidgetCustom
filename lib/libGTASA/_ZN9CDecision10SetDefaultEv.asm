; =========================================================
; Game Engine Function: _ZN9CDecision10SetDefaultEv
; Address            : 0x4BD500 - 0x4BD52A
; =========================================================

4BD500:  VMOV.I8         Q9, #0xFF
4BD504:  ADR             R1, dword_4BD530
4BD506:  VLD1.64         {D16-D17}, [R1@128]
4BD50A:  MOVS            R1, #0
4BD50C:  MOV             R2, R0
4BD50E:  STRH            R1, [R0,#0x34]
4BD510:  STR             R1, [R0,#0x20]
4BD512:  STR             R1, [R0,#0x30]
4BD514:  VST1.32         {D18-D19}, [R2]!
4BD518:  STRH            R1, [R0,#0x36]
4BD51A:  STR             R1, [R0,#0x24]
4BD51C:  STR             R1, [R0,#0x28]
4BD51E:  STRH            R1, [R0,#0x38]
4BD520:  STR             R1, [R0,#0x2C]
4BD522:  STRH            R1, [R0,#0x3A]
4BD524:  VST1.32         {D16-D17}, [R2]
4BD528:  BX              LR
