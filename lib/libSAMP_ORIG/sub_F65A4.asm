; =========================================================
; Game Engine Function: sub_F65A4
; Address            : 0xF65A4 - 0xF6660
; =========================================================

F65A4:  PUSH            {R4-R7,LR}
F65A6:  ADD             R7, SP, #0xC
F65A8:  PUSH.W          {R2-R9,R11}
F65AC:  MOV             R4, R0
F65AE:  LDR             R0, =(__stack_chk_guard_ptr - 0xF65B6)
F65B0:  MOV             R5, R1
F65B2:  ADD             R0, PC; __stack_chk_guard_ptr
F65B4:  LDR             R0, [R0]; __stack_chk_guard
F65B6:  LDR             R0, [R0]
F65B8:  STR             R0, [SP,#0x30+var_1C]
F65BA:  LDRD.W          R0, R1, [R4,#4]
F65BE:  SUBS            R1, R1, R0
F65C0:  CMP.W           R5, R1,ASR#2
F65C4:  BLS             loc_F6612
F65C6:  LDR             R1, [R4]
F65C8:  SUBS            R0, R0, R1
F65CA:  ADD.W           R1, R5, R0,ASR#2
F65CE:  MOV             R0, R4
F65D0:  BL              sub_F64C4
F65D4:  LDRD.W          R1, R2, [R4]
F65D8:  MOV             R8, R0
F65DA:  ADD.W           R0, R4, #0x10
F65DE:  MOVS            R6, #0
F65E0:  SUBS            R1, R2, R1
F65E2:  STR             R0, [SP,#0x30+var_20]
F65E4:  CMP.W           R8, #0
F65E8:  MOV.W           R9, R1,ASR#2
F65EC:  ITEE EQ
F65EE:  MOVEQ           R0, #0
F65F0:  MOVNE           R1, R8
F65F2:  BLNE            sub_F631C
F65F6:  ADD.W           R1, R0, R8,LSL#2
F65FA:  STR             R0, [SP,#0x30+var_30]
F65FC:  ADD.W           R0, R0, R9,LSL#2
F6600:  STR             R1, [SP,#0x30+var_24]
F6602:  ADD.W           R1, R0, R5,LSL#2
F6606:  LSLS            R2, R5, #2
F6608:  STR             R0, [SP,#0x30+var_2C]
F660A:  CBZ             R2, loc_F6636
F660C:  STM             R0!, {R6}
F660E:  SUBS            R2, #4
F6610:  B               loc_F660A
F6612:  LDR             R0, [SP,#0x30+var_1C]
F6614:  LDR             R1, =(__stack_chk_guard_ptr - 0xF661A)
F6616:  ADD             R1, PC; __stack_chk_guard_ptr
F6618:  LDR             R1, [R1]; __stack_chk_guard
F661A:  LDR             R1, [R1]
F661C:  CMP             R1, R0
F661E:  ITTTT EQ
F6620:  MOVEQ           R0, R4
F6622:  MOVEQ           R1, R5
F6624:  ADDEQ           SP, SP, #0x18
F6626:  POPEQ.W         {R8,R9,R11}
F662A:  ITT EQ
F662C:  POPEQ.W         {R4-R7,LR}
F6630:  BEQ.W           sub_F62E4
F6634:  B               loc_F665C
F6636:  STR             R1, [SP,#0x30+var_28]
F6638:  MOV             R1, SP
F663A:  MOV             R0, R4
F663C:  BL              sub_F6678
F6640:  MOV             R0, SP
F6642:  BL              sub_F66A8
F6646:  LDR             R0, [SP,#0x30+var_1C]
F6648:  LDR             R1, =(__stack_chk_guard_ptr - 0xF664E)
F664A:  ADD             R1, PC; __stack_chk_guard_ptr
F664C:  LDR             R1, [R1]; __stack_chk_guard
F664E:  LDR             R1, [R1]
F6650:  CMP             R1, R0
F6652:  ITTT EQ
F6654:  ADDEQ           SP, SP, #0x18
F6656:  POPEQ.W         {R8,R9,R11}
F665A:  POPEQ           {R4-R7,PC}
F665C:  BLX             __stack_chk_fail
