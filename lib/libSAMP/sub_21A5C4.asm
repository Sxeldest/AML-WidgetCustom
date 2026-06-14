; =========================================================
; Game Engine Function: sub_21A5C4
; Address            : 0x21A5C4 - 0x21A676
; =========================================================

21A5C4:  PUSH            {R4-R7,LR}
21A5C6:  ADD             R7, SP, #0xC
21A5C8:  PUSH.W          {R11}
21A5CC:  SUB             SP, SP, #0x40
21A5CE:  MOV             R4, R1
21A5D0:  LDR             R1, =(__stack_chk_guard_ptr - 0x21A5D6)
21A5D2:  ADD             R1, PC; __stack_chk_guard_ptr
21A5D4:  LDR             R1, [R1]; __stack_chk_guard
21A5D6:  LDR             R1, [R1]
21A5D8:  STR             R1, [SP,#0x50+var_14]
21A5DA:  LDRD.W          R2, R0, [R0,#8]
21A5DE:  SUBS            R0, R0, R2
21A5E0:  ADDS            R0, #1
21A5E2:  CMP             R0, #0x11
21A5E4:  BCC             loc_21A65C
21A5E6:  ADD             R1, SP, #0x50+var_48
21A5E8:  MOVS            R0, #0
21A5EA:  CMP             R0, #0x10
21A5EC:  BEQ             loc_21A620
21A5EE:  LDRB            R3, [R2,R0]
21A5F0:  SUB.W           R5, R3, #0x3A ; ':'
21A5F4:  CMN.W           R5, #0xA
21A5F8:  IT CC
21A5FA:  ADDCC           R3, #9
21A5FC:  ADDS            R5, R2, R0
21A5FE:  LDRB            R5, [R5,#1]
21A600:  SUB.W           R6, R5, #0x3A ; ':'
21A604:  CMN.W           R6, #0xA
21A608:  MOV             R6, #0xFFFFFFD0
21A60C:  IT CC
21A60E:  MOVCC           R6, #0xFFFFFFA9
21A612:  ADD             R5, R6
21A614:  ADD.W           R3, R5, R3,LSL#4
21A618:  STRB.W          R3, [R1],#1
21A61C:  ADDS            R0, #2
21A61E:  B               loc_21A5EA
21A620:  ADD             R0, SP, #0x50+var_48
21A622:  BL              sub_20F088
21A626:  ADD             R5, SP, #0x50+var_40
21A628:  VMOV.I32        Q8, #0
21A62C:  MOVS            R1, #0
21A62E:  MOVS            R2, #0x28 ; '('
21A630:  MOV             R0, R5
21A632:  STR             R1, [SP,#0x50+var_1C]
21A634:  VST1.64         {D16-D17}, [R0]!
21A638:  VST1.64         {D16-D17}, [R0]!
21A63C:  VLDR            D16, [SP,#0x50+var_48]
21A640:  STR             R1, [R0]
21A642:  MOV             R0, R5
21A644:  VSTR            D16, [SP,#0x50+var_50]
21A648:  MOVS            R1, #0x28 ; '('
21A64A:  LDR             R3, =(aLal - 0x21A650); "%LaL" ...
21A64C:  ADD             R3, PC; "%LaL"
21A64E:  BL              sub_21A4C4
21A652:  ADDS            R2, R5, R0
21A654:  MOV             R0, R4
21A656:  MOV             R1, R5
21A658:  BL              sub_216F98
21A65C:  LDR             R0, [SP,#0x50+var_14]
21A65E:  LDR             R1, =(__stack_chk_guard_ptr - 0x21A664)
21A660:  ADD             R1, PC; __stack_chk_guard_ptr
21A662:  LDR             R1, [R1]; __stack_chk_guard
21A664:  LDR             R1, [R1]
21A666:  CMP             R1, R0
21A668:  ITTT EQ
21A66A:  ADDEQ           SP, SP, #0x40 ; '@'
21A66C:  POPEQ.W         {R11}
21A670:  POPEQ           {R4-R7,PC}
21A672:  BLX             __stack_chk_fail
