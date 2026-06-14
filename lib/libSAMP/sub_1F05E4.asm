; =========================================================
; Game Engine Function: sub_1F05E4
; Address            : 0x1F05E4 - 0x1F066E
; =========================================================

1F05E4:  PUSH            {R4-R7,LR}
1F05E6:  ADD             R7, SP, #0xC
1F05E8:  PUSH.W          {R11}
1F05EC:  SUB             SP, SP, #0x20
1F05EE:  MOV             R5, R0
1F05F0:  LDR             R0, =(__stack_chk_guard_ptr - 0x1F05F8)
1F05F2:  MOV             R4, R1
1F05F4:  ADD             R0, PC; __stack_chk_guard_ptr
1F05F6:  LDR             R0, [R0]; __stack_chk_guard
1F05F8:  LDR             R0, [R0]
1F05FA:  STR             R0, [SP,#0x30+var_14]
1F05FC:  LDR             R0, [R5,#4]
1F05FE:  CBZ             R0, loc_1F0622
1F0600:  LDRD.W          R1, R2, [R4]
1F0604:  STRD.W          R1, R2, [R0]
1F0608:  LDR             R0, [SP,#0x30+var_14]
1F060A:  LDR             R1, =(__stack_chk_guard_ptr - 0x1F0610)
1F060C:  ADD             R1, PC; __stack_chk_guard_ptr
1F060E:  LDR             R1, [R1]; __stack_chk_guard
1F0610:  LDR             R1, [R1]
1F0612:  CMP             R1, R0
1F0614:  ITTT EQ
1F0616:  ADDEQ           SP, SP, #0x20 ; ' '
1F0618:  POPEQ.W         {R11}
1F061C:  POPEQ           {R4-R7,PC}
1F061E:  BLX             __stack_chk_fail
1F0622:  ADD             R6, SP, #0x30+var_2C
1F0624:  LDR             R1, =(aIn_0 - 0x1F062A); "in " ...
1F0626:  ADD             R1, PC; "in "
1F0628:  MOV             R0, R6; int
1F062A:  BL              sub_DC6DC
1F062E:  LDR             R2, [R5]; s
1F0630:  ADD             R0, SP, #0x30+var_20; int
1F0632:  MOV             R1, R6; int
1F0634:  BL              sub_1EE6FE
1F0638:  ADD             R0, SP, #0x30+var_2C
1F063A:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev; std::string::~string()
1F063E:  LDRD.W          R1, R2, [R5,#8]
1F0642:  CMP             R1, #0
1F0644:  MOV             R0, R1
1F0646:  IT NE
1F0648:  MOVNE           R0, #1
1F064A:  CMP             R2, #0
1F064C:  IT NE
1F064E:  ADDNE           R0, #1
1F0650:  CBZ             R0, loc_1F065E
1F0652:  CMP             R0, #1
1F0654:  BNE             loc_1F0666
1F0656:  ADD             R0, SP, #0x30+var_20
1F0658:  MOV             R2, R4
1F065A:  BL              sub_1EE764
1F065E:  ADD             R0, SP, #0x30+var_20
1F0660:  MOV             R1, R4
1F0662:  BL              sub_1EE720
1F0666:  ADD             R0, SP, #0x30+var_20
1F0668:  MOV             R3, R4
1F066A:  BL              sub_1EE7B0
