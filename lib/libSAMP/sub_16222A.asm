; =========================================================
; Game Engine Function: sub_16222A
; Address            : 0x16222A - 0x162246
; =========================================================

16222A:  PUSH            {R4,R6,R7,LR}
16222C:  ADD             R7, SP, #8
16222E:  MOV             R4, R0
162230:  LDR             R0, [R0,#4]
162232:  CBZ             R0, loc_162236
162234:  POP             {R4,R6,R7,PC}
162236:  MOVS            R0, #8; unsigned int
162238:  BLX             j__Znwj; operator new(uint)
16223C:  MOVS            R1, #0
16223E:  STR             R0, [R4,#4]
162240:  STRD.W          R1, R1, [R0]
162244:  POP             {R4,R6,R7,PC}
