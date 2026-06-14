; =========================================================
; Game Engine Function: sub_123338
; Address            : 0x123338 - 0x123356
; =========================================================

123338:  PUSH            {R7,LR}
12333A:  MOV             R7, SP
12333C:  SUB             SP, SP, #8
12333E:  LDR             R0, =(unk_2639B4 - 0x12334E)
123340:  MOV             R2, R3; format
123342:  ADD.W           R3, R7, #8; arg
123346:  MOV.W           R1, #0x200; maxlen
12334A:  ADD             R0, PC; unk_2639B4 ; s
12334C:  STR             R3, [SP,#0x10+var_C]
12334E:  BLX             vsnprintf
123352:  ADD             SP, SP, #8
123354:  POP             {R7,PC}
