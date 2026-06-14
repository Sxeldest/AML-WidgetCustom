; =========================================================
; Game Engine Function: sub_F61A4
; Address            : 0xF61A4 - 0xF61F0
; =========================================================

F61A4:  PUSH            {R4,R6,R7,LR}
F61A6:  ADD             R7, SP, #8
F61A8:  LDR             R0, =(byte_2400D4 - 0xF61AE)
F61AA:  ADD             R0, PC; byte_2400D4
F61AC:  LDRB            R0, [R0]
F61AE:  DMB.W           ISH
F61B2:  LDR             R4, =(dword_2400D0 - 0xF61B8)
F61B4:  ADD             R4, PC; dword_2400D0
F61B6:  LSLS            R0, R0, #0x1F
F61B8:  BEQ             loc_F61BE
F61BA:  LDR             R0, [R4]
F61BC:  POP             {R4,R6,R7,PC}
F61BE:  LDR             R0, =(byte_2400D4 - 0xF61C4)
F61C0:  ADD             R0, PC; byte_2400D4 ; __guard *
F61C2:  BLX             j___cxa_guard_acquire
F61C6:  CMP             R0, #0
F61C8:  BEQ             loc_F61BA
F61CA:  MOVS            R0, #4; unsigned int
F61CC:  BLX             j__Znwj; operator new(uint)
F61D0:  LDR             R1, =(sub_F6218+1 - 0xF61DA)
F61D2:  MOVS            R3, #0
F61D4:  LDR             R2, =(off_22A540 - 0xF61DE)
F61D6:  ADD             R1, PC; sub_F6218
F61D8:  STR             R3, [R0]
F61DA:  ADD             R2, PC; off_22A540 ; lpdso_handle
F61DC:  STR             R0, [R4]
F61DE:  MOV             R0, R1; lpfunc
F61E0:  MOV             R1, R4; obj
F61E2:  BLX             __cxa_atexit
F61E6:  LDR             R0, =(byte_2400D4 - 0xF61EC)
F61E8:  ADD             R0, PC; byte_2400D4 ; __guard *
F61EA:  BLX             j___cxa_guard_release
F61EE:  B               loc_F61BA
