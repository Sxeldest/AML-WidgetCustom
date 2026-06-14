; =========================================================
; Game Engine Function: sub_B09C4
; Address            : 0xB09C4 - 0xB0A14
; =========================================================

B09C4:  PUSH            {R4-R7,LR}
B09C6:  ADD             R7, SP, #0xC
B09C8:  PUSH.W          {R11}
B09CC:  LDRD.W          R5, R6, [R0,#4]
B09D0:  MOV             R4, R0
B09D2:  CMP             R6, R5
B09D4:  BEQ             loc_B0A02
B09D6:  SUB.W           R0, R6, #0x48 ; 'H'
B09DA:  STR             R0, [R4,#8]
B09DC:  LDRB.W          R0, [R6,#-0x10]
B09E0:  LSLS            R0, R0, #0x1F
B09E2:  ITT NE
B09E4:  LDRNE.W         R0, [R6,#-8]; void *
B09E8:  BLXNE           j__ZdlPv; operator delete(void *)
B09EC:  LDRB.W          R0, [R6,#-0x20]
B09F0:  LSLS            R0, R0, #0x1F
B09F2:  ITT NE
B09F4:  LDRNE.W         R0, [R6,#-0x18]; void *
B09F8:  BLXNE           j__ZdlPv; operator delete(void *)
B09FC:  LDR             R6, [R4,#8]
B09FE:  CMP             R6, R5
B0A00:  BNE             loc_B09D6
B0A02:  LDR             R0, [R4]; void *
B0A04:  CMP             R0, #0
B0A06:  IT NE
B0A08:  BLXNE           j__ZdlPv; operator delete(void *)
B0A0C:  MOV             R0, R4
B0A0E:  POP.W           {R11}
B0A12:  POP             {R4-R7,PC}
