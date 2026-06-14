; =========================================================
; Game Engine Function: _ZN7CWanted5ResetEv
; Address            : 0x42153C - 0x4215B8
; =========================================================

42153C:  VMOV.I32        Q8, #0
421540:  MOVS            R1, #0
421542:  MOV.W           R2, #0x3F800000
421546:  ADD.W           R3, R0, #0x204
42154A:  STRH            R1, [R0,#0x1C]
42154C:  STRD.W          R2, R1, [R0,#0x14]
421550:  STRB.W          R1, [R0,#0x28]
421554:  STRB.W          R1, [R0,#0x298]
421558:  STRD.W          R1, R1, [R0,#0x2C]
42155C:  STRD.W          R1, R1, [R0,#0x214]
421560:  LDRB            R2, [R0,#0x1E]
421562:  VST1.32         {D16-D17}, [R3]
421566:  ADD.W           R3, R0, #0x1F4
42156A:  AND.W           R2, R2, #0xC0
42156E:  VST1.32         {D16-D17}, [R3]
421572:  MOV             R3, R0
421574:  VST1.32         {D16-D17}, [R3]!
421578:  STR             R1, [R3]
42157A:  STRB            R2, [R0,#0x1E]
42157C:  STR             R1, [R0,#0x34]
42157E:  STR             R1, [R0,#0x6C]
421580:  STR             R1, [R0,#0x50]
421582:  STR.W           R1, [R0,#0x88]
421586:  STR.W           R1, [R0,#0xA4]
42158A:  STR.W           R1, [R0,#0xC0]
42158E:  STR.W           R1, [R0,#0xDC]
421592:  STR.W           R1, [R0,#0xF8]
421596:  STR.W           R1, [R0,#0x114]
42159A:  STR.W           R1, [R0,#0x130]
42159E:  STR.W           R1, [R0,#0x14C]
4215A2:  STR.W           R1, [R0,#0x168]
4215A6:  STR.W           R1, [R0,#0x184]
4215AA:  STR.W           R1, [R0,#0x1A0]
4215AE:  STR.W           R1, [R0,#0x1BC]
4215B2:  STR.W           R1, [R0,#0x1D8]
4215B6:  BX              LR
