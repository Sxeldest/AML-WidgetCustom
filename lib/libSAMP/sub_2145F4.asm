; =========================================================
; Game Engine Function: sub_2145F4
; Address            : 0x2145F4 - 0x214674
; =========================================================

2145F4:  PUSH            {R4-R7,LR}
2145F6:  ADD             R7, SP, #0xC
2145F8:  PUSH.W          {R8,R9,R11}
2145FC:  SUB.W           SP, SP, #0x408
214600:  MOV             R8, R0
214602:  LDR             R0, =(__stack_chk_guard_ptr - 0x21460A)
214604:  MOV             R6, R2
214606:  ADD             R0, PC; __stack_chk_guard_ptr
214608:  LDR             R0, [R0]; __stack_chk_guard
21460A:  LDR             R0, [R0]
21460C:  STR.W           R0, [R7,#var_1C]
214610:  BLX             __errno
214614:  LDR.W           R9, [R0]
214618:  ADD             R4, SP, #0x420+buf
21461A:  MOV             R5, R0
21461C:  MOV             R0, R6; errnum
21461E:  MOV             R1, R4; buf
214620:  MOV.W           R2, #0x400; n
214624:  BLX             strerror_r
214628:  CBZ             R0, loc_214638
21462A:  ADDS            R1, R0, #1
21462C:  IT EQ
21462E:  LDREQ           R0, [R5]
214630:  CMP             R0, #0x16
214632:  BNE             loc_214670
214634:  LDR             R4, =(byte_8F794 - 0x21463A)
214636:  ADD             R4, PC; byte_8F794
214638:  LDRB            R0, [R4]
21463A:  CBNZ            R0, loc_214646
21463C:  STR             R6, [SP,#0x420+var_420]
21463E:  ADD             R4, SP, #0x420+buf
214640:  MOV             R0, R4
214642:  BL              sub_214C00
214646:  MOV             R0, R8; int
214648:  MOV             R1, R4; s
21464A:  STR.W           R9, [R5]
21464E:  BL              sub_DC6DC
214652:  LDR.W           R0, [R7,#var_1C]
214656:  LDR             R1, =(__stack_chk_guard_ptr - 0x21465C)
214658:  ADD             R1, PC; __stack_chk_guard_ptr
21465A:  LDR             R1, [R1]; __stack_chk_guard
21465C:  LDR             R1, [R1]
21465E:  CMP             R1, R0
214660:  ITTT EQ
214662:  ADDEQ.W         SP, SP, #0x408
214666:  POPEQ.W         {R8,R9,R11}
21466A:  POPEQ           {R4-R7,PC}
21466C:  BLX             __stack_chk_fail
214670:  BLX             abort
