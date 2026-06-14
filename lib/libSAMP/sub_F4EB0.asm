; =========================================================
; Game Engine Function: sub_F4EB0
; Address            : 0xF4EB0 - 0xF4EF0
; =========================================================

F4EB0:  PUSH            {R7,LR}
F4EB2:  MOV             R7, SP
F4EB4:  LDR             R0, =(byte_240060 - 0xF4EBA)
F4EB6:  ADD             R0, PC; byte_240060
F4EB8:  LDRB            R0, [R0]
F4EBA:  DMB.W           ISH
F4EBE:  LSLS            R0, R0, #0x1F
F4EC0:  IT NE
F4EC2:  POPNE           {R7,PC}
F4EC4:  LDR             R0, =(byte_240060 - 0xF4ECA)
F4EC6:  ADD             R0, PC; byte_240060 ; __guard *
F4EC8:  BLX             j___cxa_guard_acquire
F4ECC:  CBZ             R0, locret_F4EEE
F4ECE:  LDR             R1, =(unk_240048 - 0xF4EDA)
F4ED0:  MOVS            R3, #0
F4ED2:  LDR             R0, =(sub_F4B7C+1 - 0xF4EDC)
F4ED4:  LDR             R2, =(off_22A540 - 0xF4EDE)
F4ED6:  ADD             R1, PC; unk_240048 ; obj
F4ED8:  ADD             R0, PC; sub_F4B7C ; lpfunc
F4EDA:  ADD             R2, PC; off_22A540 ; lpdso_handle
F4EDC:  STR             R3, [R1,#(dword_240058 - 0x240048)]
F4EDE:  BLX             __cxa_atexit
F4EE2:  LDR             R0, =(byte_240060 - 0xF4EE8)
F4EE4:  ADD             R0, PC; byte_240060
F4EE6:  POP.W           {R7,LR}
F4EEA:  B.W             sub_2242B0
F4EEE:  POP             {R7,PC}
