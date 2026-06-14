; =========================================================
; Game Engine Function: _Z16RpWorldAddAtomicP7RpWorldP8RpAtomic
; Address            : 0x21E078 - 0x21E09E
; =========================================================

21E078:  PUSH            {R4-R7,LR}
21E07A:  ADD             R7, SP, #0xC
21E07C:  PUSH.W          {R11}
21E080:  MOV             R5, R1
21E082:  LDR             R1, =(dword_6BD63C - 0x21E08C)
21E084:  MOV             R4, R0
21E086:  LDR             R0, [R5,#4]
21E088:  ADD             R1, PC; dword_6BD63C
21E08A:  CMP             R0, #0
21E08C:  LDR             R6, [R1]
21E08E:  IT NE
21E090:  BLXNE           j__Z20RwFrameUpdateObjectsP7RwFrame; RwFrameUpdateObjects(RwFrame *)
21E094:  STR             R4, [R5,R6]
21E096:  MOV             R0, R4
21E098:  POP.W           {R11}
21E09C:  POP             {R4-R7,PC}
