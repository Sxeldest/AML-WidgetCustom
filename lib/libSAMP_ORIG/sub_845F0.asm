; =========================================================
; Game Engine Function: sub_845F0
; Address            : 0x845F0 - 0x8461A
; =========================================================

845F0:  PUSH            {R4,R5,R7,LR}
845F2:  ADD             R7, SP, #8
845F4:  LDR             R5, [R0]
845F6:  MOV             R4, R0
845F8:  MOVS            R0, #0
845FA:  STR             R0, [R4]
845FC:  CBZ             R5, loc_84616
845FE:  LDRB            R0, [R4,#8]
84600:  CMP             R0, #0
84602:  ITTTT NE
84604:  LDRBNE          R0, [R5,#0x14]
84606:  MOVSNE.W        R0, R0,LSL#31
8460A:  LDRNE           R0, [R5,#0x1C]; void *
8460C:  BLXNE           j__ZdlPv; operator delete(void *)
84610:  MOV             R0, R5; void *
84612:  BLX             j__ZdlPv; operator delete(void *)
84616:  MOV             R0, R4
84618:  POP             {R4,R5,R7,PC}
