; =========================================================
; Game Engine Function: _ZN20CTaskComplexSequence7AddTaskEiP5CTask
; Address            : 0x4EE916 - 0x4EE948
; =========================================================

4EE916:  PUSH            {R4,R5,R7,LR}
4EE918:  ADD             R7, SP, #8
4EE91A:  MOV             R4, R2
4EE91C:  CMP             R1, #7
4EE91E:  BGT             loc_4EE936
4EE920:  ADD.W           R5, R0, R1,LSL#2
4EE924:  LDR.W           R0, [R5,#0x10]!
4EE928:  CMP             R0, #0
4EE92A:  ITTT NE
4EE92C:  LDRNE           R1, [R0]
4EE92E:  LDRNE           R1, [R1,#4]
4EE930:  BLXNE           R1
4EE932:  STR             R4, [R5]
4EE934:  POP             {R4,R5,R7,PC}
4EE936:  CMP             R4, #0
4EE938:  IT EQ
4EE93A:  POPEQ           {R4,R5,R7,PC}
4EE93C:  LDR             R0, [R4]
4EE93E:  LDR             R1, [R0,#4]
4EE940:  MOV             R0, R4
4EE942:  POP.W           {R4,R5,R7,LR}
4EE946:  BX              R1
