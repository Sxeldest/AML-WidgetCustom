; =========================================================
; Game Engine Function: _ZN6SArrayI7CVectorED2Ev
; Address            : 0x4AC302 - 0x4AC31C
; =========================================================

4AC302:  PUSH            {R4,R5,R7,LR}
4AC304:  ADD             R7, SP, #8
4AC306:  MOV             R4, R0
4AC308:  MOVS            R5, #0
4AC30A:  LDR             R0, [R4,#8]; p
4AC30C:  STR             R5, [R4,#4]
4AC30E:  CBZ             R0, loc_4AC316
4AC310:  BLX             free
4AC314:  STR             R5, [R4,#8]
4AC316:  MOV             R0, R4
4AC318:  STR             R5, [R4]
4AC31A:  POP             {R4,R5,R7,PC}
