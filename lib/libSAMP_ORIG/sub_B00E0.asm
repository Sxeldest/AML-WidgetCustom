; =========================================================
; Game Engine Function: sub_B00E0
; Address            : 0xB00E0 - 0xB012E
; =========================================================

B00E0:  PUSH            {R4-R7,LR}
B00E2:  ADD             R7, SP, #0xC
B00E4:  PUSH.W          {R11}
B00E8:  LDR             R5, [R0]
B00EA:  MOV             R4, R0
B00EC:  CBZ             R5, loc_B0126
B00EE:  LDR             R6, [R4,#4]
B00F0:  CMP             R6, R5
B00F2:  BEQ             loc_B011E
B00F4:  LDRB.W          R0, [R6,#-0x10]
B00F8:  LSLS            R0, R0, #0x1F
B00FA:  ITT NE
B00FC:  LDRNE.W         R0, [R6,#-8]; void *
B0100:  BLXNE           j__ZdlPv; operator delete(void *)
B0104:  LDRB.W          R0, [R6,#-0x20]
B0108:  LSLS            R0, R0, #0x1F
B010A:  ITT NE
B010C:  LDRNE.W         R0, [R6,#-0x18]; void *
B0110:  BLXNE           j__ZdlPv; operator delete(void *)
B0114:  SUBS            R6, #0x48 ; 'H'
B0116:  CMP             R6, R5
B0118:  BNE             loc_B00F4
B011A:  LDR             R0, [R4]
B011C:  B               loc_B0120
B011E:  MOV             R0, R5; void *
B0120:  STR             R5, [R4,#4]
B0122:  BLX             j__ZdlPv; operator delete(void *)
B0126:  MOV             R0, R4
B0128:  POP.W           {R11}
B012C:  POP             {R4-R7,PC}
