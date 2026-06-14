; =========================================================
; Game Engine Function: sub_15A3A8
; Address            : 0x15A3A8 - 0x15A3E8
; =========================================================

15A3A8:  PUSH            {R4-R7,LR}
15A3AA:  ADD             R7, SP, #0xC
15A3AC:  PUSH.W          {R11}
15A3B0:  MOVS            R6, #0
15A3B2:  MOV             R5, R0
15A3B4:  STRB            R6, [R0]
15A3B6:  ADDS            R0, #4
15A3B8:  MOV             R4, R2
15A3BA:  BL              sub_15DFEC
15A3BE:  MOV.W           R0, #0x3F800000
15A3C2:  VMOV.I32        Q8, #0
15A3C6:  STR             R0, [R5,#0x20]
15A3C8:  LSLS            R0, R4, #1
15A3CA:  STR             R0, [R5,#0x18]
15A3CC:  ADD.W           R0, R5, #0x24 ; '$'
15A3D0:  VST1.32         {D16-D17}, [R0]!
15A3D4:  STR             R6, [R0]
15A3D6:  MOV             R0, R5
15A3D8:  STRB            R6, [R5,#0x1E]
15A3DA:  STRH            R6, [R5,#0x1C]
15A3DC:  STRD.W          R6, R6, [R5,#0x10]
15A3E0:  STR             R6, [R5,#0x38]
15A3E2:  POP.W           {R11}
15A3E6:  POP             {R4-R7,PC}
