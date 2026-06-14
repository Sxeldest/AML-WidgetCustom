; =========================================================
; Game Engine Function: sub_156334
; Address            : 0x156334 - 0x1563D2
; =========================================================

156334:  PUSH            {R4-R7,LR}
156336:  ADD             R7, SP, #0xC
156338:  PUSH.W          {R8,R9,R11}
15633C:  MOV             R6, R2
15633E:  MOV             R4, R0
156340:  LDRD.W          R0, R2, [R1]
156344:  VMOV.I32        Q8, #0
156348:  STRD.W          R0, R2, [R4]
15634C:  MOVS            R0, #0
15634E:  STRD.W          R0, R0, [R1]
156352:  ADD.W           R0, R4, #8
156356:  VST1.32         {D16-D17}, [R0]!
15635A:  MOV             R8, R3
15635C:  VST1.32         {D16-D17}, [R0]!
156360:  VST1.32         {D16-D17}, [R0]!
156364:  VST1.32         {D16-D17}, [R0]
156368:  BL              sub_21FCD0
15636C:  LDR             R1, [R0,#4]
15636E:  MOV.W           R9, #0x200
156372:  STR             R0, [R4,#0x48]
156374:  CMP             R1, #0
156376:  ITE NE
156378:  LDRBNE          R1, [R1]
15637A:  MOVEQ           R1, #0
15637C:  LDR             R0, [R0]
15637E:  STRB.W          R1, [R4,#0x4C]
156382:  MOV.W           R1, #0x200; n
156386:  CMP             R0, #0
156388:  ITE NE
15638A:  LDRBNE          R0, [R0]
15638C:  MOVEQ           R0, #0
15638E:  STRB.W          R0, [R4,#0x4D]
156392:  ADD.W           R0, R4, #0x4E ; 'N'; int
156396:  BLX             sub_22178C
15639A:  STRB.W          R6, [R4,#0x24E]
15639E:  MOV.W           R0, #0x210; unsigned int
1563A2:  BLX             j__Znwj; operator new(uint)
1563A6:  MOV             R5, R0
1563A8:  MOVW            R0, #0x211
1563AC:  STRD.W          R0, R9, [R4,#0x250]
1563B0:  MOV             R0, R5; int
1563B2:  MOV.W           R1, #0x200; n
1563B6:  MOV             R2, R6; c
1563B8:  STR.W           R5, [R4,#0x258]
1563BC:  BLX             sub_22177C
1563C0:  MOVS            R0, #0
1563C2:  STR.W           R8, [R4,#0x25C]
1563C6:  STRB.W          R0, [R5,#0x200]
1563CA:  MOV             R0, R4
1563CC:  POP.W           {R8,R9,R11}
1563D0:  POP             {R4-R7,PC}
