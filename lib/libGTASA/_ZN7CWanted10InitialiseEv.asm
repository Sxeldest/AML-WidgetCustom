; =========================================================
; Game Engine Function: _ZN7CWanted10InitialiseEv
; Address            : 0x421450 - 0x4214CC
; =========================================================

421450:  VMOV.I32        Q8, #0
421454:  MOVS            R1, #0
421456:  MOV.W           R2, #0x3F800000
42145A:  ADD.W           R3, R0, #0x204
42145E:  STRH            R1, [R0,#0x1C]
421460:  STRD.W          R2, R1, [R0,#0x14]
421464:  STRB.W          R1, [R0,#0x28]
421468:  STRB.W          R1, [R0,#0x298]
42146C:  STRD.W          R1, R1, [R0,#0x2C]
421470:  STRD.W          R1, R1, [R0,#0x214]
421474:  LDRB            R2, [R0,#0x1E]
421476:  VST1.32         {D16-D17}, [R3]
42147A:  ADD.W           R3, R0, #0x1F4
42147E:  AND.W           R2, R2, #0xC0
421482:  VST1.32         {D16-D17}, [R3]
421486:  MOV             R3, R0
421488:  VST1.32         {D16-D17}, [R3]!
42148C:  STR             R1, [R3]
42148E:  STRB            R2, [R0,#0x1E]
421490:  STR             R1, [R0,#0x34]
421492:  STR             R1, [R0,#0x6C]
421494:  STR             R1, [R0,#0x50]
421496:  STR.W           R1, [R0,#0x88]
42149A:  STR.W           R1, [R0,#0xA4]
42149E:  STR.W           R1, [R0,#0xC0]
4214A2:  STR.W           R1, [R0,#0xDC]
4214A6:  STR.W           R1, [R0,#0xF8]
4214AA:  STR.W           R1, [R0,#0x114]
4214AE:  STR.W           R1, [R0,#0x130]
4214B2:  STR.W           R1, [R0,#0x14C]
4214B6:  STR.W           R1, [R0,#0x168]
4214BA:  STR.W           R1, [R0,#0x184]
4214BE:  STR.W           R1, [R0,#0x1A0]
4214C2:  STR.W           R1, [R0,#0x1BC]
4214C6:  STR.W           R1, [R0,#0x1D8]
4214CA:  BX              LR
