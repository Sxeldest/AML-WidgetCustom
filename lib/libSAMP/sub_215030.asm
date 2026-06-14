; =========================================================
; Game Engine Function: sub_215030
; Address            : 0x215030 - 0x215064
; =========================================================

215030:  PUSH            {R4-R7,LR}
215032:  ADD             R7, SP, #0xC
215034:  PUSH.W          {R11}
215038:  MOV             R4, R0
21503A:  MOVS            R0, #0
21503C:  MOV             R6, R2
21503E:  MOV             R5, R1
215040:  STRD.W          R0, R3, [R4,#0xC]
215044:  CBZ             R1, loc_21504C
215046:  LSLS            R0, R5, #3; unsigned int
215048:  BLX             j__Znwj; operator new(uint)
21504C:  ADD.W           R1, R0, R6,LSL#3
215050:  ADD.W           R2, R0, R5,LSL#3
215054:  STRD.W          R0, R1, [R4]
215058:  MOV             R0, R4
21505A:  STRD.W          R1, R2, [R4,#8]
21505E:  POP.W           {R11}
215062:  POP             {R4-R7,PC}
