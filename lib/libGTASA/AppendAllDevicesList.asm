; =========================================================
; Game Engine Function: AppendAllDevicesList
; Address            : 0x248758 - 0x2487D8
; =========================================================

248758:  PUSH            {R4-R7,LR}
24875A:  ADD             R7, SP, #0xC
24875C:  PUSH.W          {R8,R9,R11}
248760:  MOV             R4, R0
248762:  BLX             strlen
248766:  MOV             R5, R0
248768:  CBZ             R5, loc_2487AE
24876A:  LDR             R0, =(dword_6D632C - 0x248772)
24876C:  LDR             R1, =(dword_6D6328 - 0x248774)
24876E:  ADD             R0, PC; dword_6D632C
248770:  ADD             R1, PC; dword_6D6328
248772:  LDR             R2, [R0]
248774:  LDR             R0, [R1]; ptr
248776:  ADDS            R1, R5, R2
248778:  ADDS            R1, #2; size
24877A:  BLX             realloc
24877E:  MOV             R6, R0
248780:  CMP             R6, #0
248782:  BEQ             loc_2487B4
248784:  LDR.W           R8, =(dword_6D632C - 0x248792)
248788:  ADDS            R5, #1
24878A:  LDR             R0, =(dword_6D6328 - 0x248796)
24878C:  MOV             R1, R4; void *
24878E:  ADD             R8, PC; dword_6D632C
248790:  MOV             R2, R5; size_t
248792:  ADD             R0, PC; dword_6D6328
248794:  LDR.W           R9, [R8]
248798:  STR             R6, [R0]
24879A:  ADD.W           R0, R6, R9; void *
24879E:  BLX             memcpy_1
2487A2:  ADD.W           R0, R9, R5
2487A6:  MOVS            R1, #0
2487A8:  STR.W           R0, [R8]
2487AC:  STRB            R1, [R6,R0]
2487AE:  POP.W           {R8,R9,R11}
2487B2:  POP             {R4-R7,PC}
2487B4:  LDR             R0, =(LogLevel_ptr - 0x2487BA)
2487B6:  ADD             R0, PC; LogLevel_ptr
2487B8:  LDR             R0, [R0]; LogLevel
2487BA:  LDR             R0, [R0]
2487BC:  CMP             R0, #0
2487BE:  BEQ             loc_2487AE
2487C0:  LDR             R0, =(aEe - 0x2487CC); "(EE)"
2487C2:  MOV             R3, R4
2487C4:  LDR             R1, =(aAppendlist - 0x2487CE); "AppendList"
2487C6:  LDR             R2, =(aReallocFailedT_0 - 0x2487D0); "Realloc failed to add %s!\n"
2487C8:  ADD             R0, PC; "(EE)"
2487CA:  ADD             R1, PC; "AppendList"
2487CC:  ADD             R2, PC; "Realloc failed to add %s!\n"
2487CE:  POP.W           {R8,R9,R11}
2487D2:  POP.W           {R4-R7,LR}
2487D6:  B               al_print
