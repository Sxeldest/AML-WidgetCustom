; =========================================================
; Game Engine Function: _Z20NvBuildTranslateMatfPA4_ffff
; Address            : 0x2784B4 - 0x2784E8
; =========================================================

2784B4:  PUSH            {R7,LR}
2784B6:  MOV             R7, SP
2784B8:  MOV.W           R12, #0x3F800000
2784BC:  VMOV.I32        Q8, #0
2784C0:  MOV.W           LR, #0
2784C4:  STR.W           R12, [R0]
2784C8:  STR.W           R12, [R0,#0x14]
2784CC:  STRD.W          R12, LR, [R0,#0x28]
2784D0:  STR             R1, [R0,#0x30]
2784D2:  ADDS            R1, R0, #4
2784D4:  STR             R2, [R0,#0x34]
2784D6:  STR             R3, [R0,#0x38]
2784D8:  STR.W           R12, [R0,#0x3C]
2784DC:  ADDS            R0, #0x18
2784DE:  VST1.32         {D16-D17}, [R1]
2784E2:  VST1.32         {D16-D17}, [R0]
2784E6:  POP             {R7,PC}
