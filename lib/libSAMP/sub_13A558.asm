; =========================================================
; Game Engine Function: sub_13A558
; Address            : 0x13A558 - 0x13A580
; =========================================================

13A558:  PUSH            {R7,LR}
13A55A:  MOV             R7, SP
13A55C:  SUB             SP, SP, #0x18
13A55E:  LDR             R3, =(unk_B93DE - 0x13A572)
13A560:  ADD.W           R12, SP, #0x20+var_18
13A564:  MOV             R2, R1
13A566:  MOV             R1, R0
13A568:  ADD             R0, SP, #0x20+var_14
13A56A:  STRD.W          R0, R12, [SP,#0x20+var_20]
13A56E:  ADD             R3, PC; unk_B93DE
13A570:  ADD             R0, SP, #0x20+var_10
13A572:  STR             R2, [SP,#0x20+var_14]
13A574:  BL              sub_13B500
13A578:  LDR             R0, [SP,#0x20+var_10]
13A57A:  ADDS            R0, #0xC
13A57C:  ADD             SP, SP, #0x18
13A57E:  POP             {R7,PC}
