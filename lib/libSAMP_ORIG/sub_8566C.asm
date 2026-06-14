; =========================================================
; Game Engine Function: sub_8566C
; Address            : 0x8566C - 0x856D6
; =========================================================

8566C:  PUSH            {R4,R5,R7,LR}
8566E:  ADD             R7, SP, #8
85670:  SUB             SP, SP, #0x18
85672:  MOV             R4, R0
85674:  LDR             R0, =(__stack_chk_guard_ptr - 0x8567E)
85676:  MOV             R12, R1
85678:  MOVS            R1, #0
8567A:  ADD             R0, PC; __stack_chk_guard_ptr
8567C:  LDR             R0, [R0]; __stack_chk_guard
8567E:  LDR             R0, [R0]
85680:  STR             R0, [SP,#0x20+var_C]
85682:  VLDR            D16, [R2]
85686:  LDR             R0, [R2,#8]
85688:  STRD.W          R1, R1, [R2]
8568C:  STR             R1, [R2,#8]
8568E:  MOVS            R1, #5; int
85690:  STR             R3, [SP,#0x20+var_20]; float
85692:  ADD             R3, SP, #0x20+var_18; int
85694:  STR             R0, [SP,#0x20+var_10]
85696:  MOV             R0, R4; int
85698:  MOV             R2, R12; int
8569A:  VSTR            D16, [SP,#0x20+var_18]
8569E:  BL              sub_7E210
856A2:  LDRB.W          R0, [SP,#0x20+var_18]
856A6:  LDR             R5, [R7,#arg_0]
856A8:  LSLS            R0, R0, #0x1F
856AA:  ITT NE
856AC:  LDRNE           R0, [SP,#0x20+var_10]; void *
856AE:  BLXNE           j__ZdlPv; operator delete(void *)
856B2:  LDR             R0, =(_ZTV14StreamAtObject - 0x856BC); `vtable for'StreamAtObject ...
856B4:  STRH.W          R5, [R4,#0x5C]
856B8:  ADD             R0, PC; `vtable for'StreamAtObject
856BA:  ADDS            R0, #8
856BC:  STR             R0, [R4]
856BE:  LDR             R0, [SP,#0x20+var_C]
856C0:  LDR             R1, =(__stack_chk_guard_ptr - 0x856C6)
856C2:  ADD             R1, PC; __stack_chk_guard_ptr
856C4:  LDR             R1, [R1]; __stack_chk_guard
856C6:  LDR             R1, [R1]
856C8:  CMP             R1, R0
856CA:  ITTT EQ
856CC:  MOVEQ           R0, R4
856CE:  ADDEQ           SP, SP, #0x18
856D0:  POPEQ           {R4,R5,R7,PC}
856D2:  BLX             __stack_chk_fail
