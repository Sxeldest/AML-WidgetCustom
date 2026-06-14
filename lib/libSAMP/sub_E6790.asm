; =========================================================
; Game Engine Function: sub_E6790
; Address            : 0xE6790 - 0xE67B8
; =========================================================

E6790:  PUSH            {R4,R6,R7,LR}
E6792:  ADD             R7, SP, #8
E6794:  MOV             R4, R0
E6796:  LDRB.W          R0, [R0,#0x2C]
E679A:  LSLS            R0, R0, #0x1F
E679C:  ITT NE
E679E:  LDRNE           R0, [R4,#0x34]; void *
E67A0:  BLXNE           j__ZdlPv; operator delete(void *)
E67A4:  LDR             R0, [R4,#0x20]; void *
E67A6:  CBZ             R0, loc_E67AE
E67A8:  STR             R0, [R4,#0x24]
E67AA:  BLX             j__ZdlPv; operator delete(void *)
E67AE:  MOV             R0, R4
E67B0:  POP.W           {R4,R6,R7,LR}
E67B4:  B.W             sub_E669A
