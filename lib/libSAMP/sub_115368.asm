; =========================================================
; Game Engine Function: sub_115368
; Address            : 0x115368 - 0x115384
; =========================================================

115368:  PUSH            {R4,R5,R7,LR}
11536A:  ADD             R7, SP, #8
11536C:  MOV             R4, R0
11536E:  LDR             R0, [R0,#4]
115370:  CBZ             R0, loc_115374
115372:  POP             {R4,R5,R7,PC}
115374:  MOVS            R0, #0x58 ; 'X'; unsigned int
115376:  BLX             j__Znwj; operator new(uint)
11537A:  MOV             R5, R0
11537C:  BL              sub_1148C0
115380:  STR             R5, [R4,#4]
115382:  POP             {R4,R5,R7,PC}
