; =========================================================
; Game Engine Function: sub_684C8
; Address            : 0x684C8 - 0x684F2
; =========================================================

684C8:  PUSH            {R7,LR}
684CA:  MOV             R7, SP
684CC:  LDR             R1, =(aSampOrig - 0x684D6); "SAMP_ORIG" ...
684CE:  MOVS            R0, #4; prio
684D0:  LDR             R2, =(aInitializescri - 0x684D8); "initializeScripting()" ...
684D2:  ADD             R1, PC; "SAMP_ORIG"
684D4:  ADD             R2, PC; "initializeScripting()"
684D6:  BLX             __android_log_print
684DA:  MOV.W           R0, #0x100; unsigned int
684DE:  BLX             j__Znwj; operator new(uint)
684E2:  LDR             R1, =(dword_1A408C - 0x684E8)
684E4:  ADD             R1, PC; dword_1A408C
684E6:  STR             R0, [R1]
684E8:  MOV.W           R1, #0x100; n
684EC:  BLX             sub_10967C
684F0:  POP             {R7,PC}
