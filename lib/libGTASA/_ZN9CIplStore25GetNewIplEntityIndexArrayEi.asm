; =========================================================
; Game Engine Function: _ZN9CIplStore25GetNewIplEntityIndexArrayEi
; Address            : 0x282054 - 0x282086
; =========================================================

282054:  PUSH            {R7,LR}
282056:  MOV             R7, SP
282058:  MOVS            R1, #4
28205A:  UMULL.W         R0, R1, R0, R1
28205E:  CMP             R1, #0
282060:  IT NE
282062:  MOVNE           R1, #1
282064:  CMP             R1, #0
282066:  IT NE
282068:  MOVNE.W         R0, #0xFFFFFFFF; unsigned int
28206C:  BLX             _Znaj; operator new[](uint)
282070:  LDR             R2, =(dword_6DFDA0 - 0x282078)
282072:  LDR             R3, =(unk_6DFDA8 - 0x28207A)
282074:  ADD             R2, PC; dword_6DFDA0
282076:  ADD             R3, PC; unk_6DFDA8
282078:  LDR             R1, [R2]
28207A:  STR.W           R0, [R3,R1,LSL#2]
28207E:  ADDS            R0, R1, #1
282080:  STR             R0, [R2]
282082:  MOV             R0, R1
282084:  POP             {R7,PC}
