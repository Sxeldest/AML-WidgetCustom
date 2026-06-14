; =========================================================
; Game Engine Function: sub_712D0
; Address            : 0x712D0 - 0x71334
; =========================================================

712D0:  PUSH            {R4-R7,LR}
712D2:  ADD             R7, SP, #0xC
712D4:  PUSH.W          {R8,R9,R11}
712D8:  LDR             R5, [R0,#8]
712DA:  MOV             R8, R1
712DC:  MOV             R4, R0
712DE:  CBZ             R5, loc_712EE
712E0:  LDR             R0, [R4,#0x10]
712E2:  SUBS            R0, R0, R5
712E4:  ADDS            R1, R0, #1
712E6:  ADD.W           R6, R0, R1,LSR#1
712EA:  MOV             R0, R5
712EC:  B               loc_71300
712EE:  LDR             R0, [R4]
712F0:  CBNZ            R0, loc_712FC
712F2:  MOVS            R0, #1; unsigned int
712F4:  BLX             j__Znwj; operator new(uint)
712F8:  STRD.W          R0, R0, [R4]
712FC:  LDR             R6, [R4,#0x14]
712FE:  MOVS            R0, #0
71300:  LDR             R1, [R4,#0xC]
71302:  SUB.W           R9, R1, R0
71306:  ADD.W           R0, R9, R8
7130A:  CMP             R6, R0
7130C:  IT CC
7130E:  MOVCC           R6, R0
71310:  MOV             R0, R5; ptr
71312:  CBZ             R6, loc_7131C
71314:  MOV             R1, R6; size
71316:  BLX             realloc
7131A:  B               loc_71322
7131C:  BLX             free
71320:  MOVS            R0, #0
71322:  ADD.W           R2, R0, R9
71326:  ADDS            R1, R0, R6
71328:  STR             R1, [R4,#0x10]
7132A:  STRD.W          R0, R2, [R4,#8]
7132E:  POP.W           {R8,R9,R11}
71332:  POP             {R4-R7,PC}
