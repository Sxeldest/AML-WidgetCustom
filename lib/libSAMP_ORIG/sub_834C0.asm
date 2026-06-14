; =========================================================
; Game Engine Function: sub_834C0
; Address            : 0x834C0 - 0x83500
; =========================================================

834C0:  PUSH            {R4-R7,LR}
834C2:  ADD             R7, SP, #0xC
834C4:  PUSH.W          {R11}
834C8:  LDR             R5, [R0]
834CA:  MOV             R4, R0
834CC:  CBZ             R5, loc_834F8
834CE:  LDR             R0, [R4,#4]
834D0:  CMP             R0, R5
834D2:  BEQ             loc_834F0
834D4:  MOV             R6, R0
834D6:  LDRB.W          R1, [R6,#-0xC]!
834DA:  LSLS            R1, R1, #0x1F
834DC:  ITT NE
834DE:  LDRNE.W         R0, [R0,#-4]; void *
834E2:  BLXNE           j__ZdlPv; operator delete(void *)
834E6:  CMP             R6, R5
834E8:  MOV             R0, R6
834EA:  BNE             loc_834D6
834EC:  LDR             R0, [R4]
834EE:  B               loc_834F2
834F0:  MOV             R0, R5; void *
834F2:  STR             R5, [R4,#4]
834F4:  BLX             j__ZdlPv; operator delete(void *)
834F8:  MOV             R0, R4
834FA:  POP.W           {R11}
834FE:  POP             {R4-R7,PC}
