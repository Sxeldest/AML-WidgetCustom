; =========================================================
; Game Engine Function: sub_7E6E0
; Address            : 0x7E6E0 - 0x7E798
; =========================================================

7E6E0:  PUSH            {R4-R7,LR}
7E6E2:  ADD             R7, SP, #0xC
7E6E4:  PUSH.W          {R11}
7E6E8:  SUB             SP, SP, #0x120
7E6EA:  MOV             R6, R0
7E6EC:  LDR             R0, =(dword_1A45F4 - 0x7E6F6)
7E6EE:  MOV             R5, R1
7E6F0:  LDR             R1, =(__stack_chk_guard_ptr - 0x7E6F8)
7E6F2:  ADD             R0, PC; dword_1A45F4
7E6F4:  ADD             R1, PC; __stack_chk_guard_ptr
7E6F6:  LDR             R1, [R1]; __stack_chk_guard
7E6F8:  LDR             R1, [R1]
7E6FA:  STR             R1, [SP,#0x130+var_14]
7E6FC:  LDR             R0, [R0]
7E6FE:  CMP             R0, #3
7E700:  BNE             loc_7E77A
7E702:  MOV             R4, R2
7E704:  ADD             R0, SP, #0x130+var_128
7E706:  BL              sub_86B90
7E70A:  MOVS            R0, #0xDE
7E70C:  STRB.W          R0, [SP,#0x130+var_12A]
7E710:  ADD             R0, SP, #0x130+var_128
7E712:  ADD.W           R1, SP, #0x130+var_12A
7E716:  MOVS            R2, #8
7E718:  MOVS            R3, #1
7E71A:  BL              sub_86D52
7E71E:  STRH.W          R6, [SP,#0x130+var_12A]
7E722:  ADD             R0, SP, #0x130+var_128
7E724:  ADD.W           R1, SP, #0x130+var_12A
7E728:  MOVS            R2, #0x10
7E72A:  MOVS            R3, #1
7E72C:  BL              sub_86D52
7E730:  STRH.W          R4, [SP,#0x130+var_12A]
7E734:  ADD             R0, SP, #0x130+var_128
7E736:  ADD.W           R1, SP, #0x130+var_12A
7E73A:  MOVS            R2, #0x10
7E73C:  MOVS            R3, #1
7E73E:  BL              sub_86D52
7E742:  CMP             R5, #0
7E744:  IT NE
7E746:  CMPNE           R4, #0
7E748:  BEQ             loc_7E754
7E74A:  ADD             R0, SP, #0x130+var_128
7E74C:  MOV             R1, R5
7E74E:  MOV             R2, R4
7E750:  BL              sub_86C1C
7E754:  LDR             R0, =(off_114AD8 - 0x7E75A)
7E756:  ADD             R0, PC; off_114AD8
7E758:  LDR             R0, [R0]; dword_1A4434
7E75A:  LDR             R0, [R0]
7E75C:  LDR.W           R0, [R0,#0x210]
7E760:  LDR             R1, [R0]
7E762:  LDR             R6, [R1,#0x20]
7E764:  MOVS            R1, #0
7E766:  MOVS            R2, #1
7E768:  STR             R1, [SP,#0x130+var_130]
7E76A:  ADD             R1, SP, #0x130+var_128
7E76C:  MOVS            R3, #8
7E76E:  BLX             R6
7E770:  MOV             R4, R0
7E772:  ADD             R0, SP, #0x130+var_128
7E774:  BL              sub_86BF8
7E778:  B               loc_7E77C
7E77A:  MOVS            R4, #0
7E77C:  LDR             R0, [SP,#0x130+var_14]
7E77E:  LDR             R1, =(__stack_chk_guard_ptr - 0x7E784)
7E780:  ADD             R1, PC; __stack_chk_guard_ptr
7E782:  LDR             R1, [R1]; __stack_chk_guard
7E784:  LDR             R1, [R1]
7E786:  CMP             R1, R0
7E788:  ITTTT EQ
7E78A:  MOVEQ           R0, R4
7E78C:  ADDEQ           SP, SP, #0x120
7E78E:  POPEQ.W         {R11}
7E792:  POPEQ           {R4-R7,PC}
7E794:  BLX             __stack_chk_fail
