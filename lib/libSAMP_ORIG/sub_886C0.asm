; =========================================================
; Game Engine Function: sub_886C0
; Address            : 0x886C0 - 0x8871A
; =========================================================

886C0:  SUB             SP, SP, #4
886C2:  PUSH            {R4,R5,R7,LR}
886C4:  ADD             R7, SP, #8
886C6:  SUB             SP, SP, #0xC
886C8:  STR             R3, [R7,#var_s8]
886CA:  MOV             R4, R0
886CC:  LDR             R0, =(__stack_chk_guard_ptr - 0x886D8)
886CE:  ADD.W           R3, R7, #8; arg
886D2:  MOV             R5, R1
886D4:  ADD             R0, PC; __stack_chk_guard_ptr
886D6:  LDR             R0, [R0]; __stack_chk_guard
886D8:  LDR             R0, [R0]
886DA:  STR             R0, [SP,#0x14+var_C]
886DC:  MOV             R0, R4; s
886DE:  STR             R3, [SP,#0x14+var_10]
886E0:  BLX             vsnprintf
886E4:  CBZ             R4, loc_886FE
886E6:  SUBS            R1, R5, #1
886E8:  CMP             R0, R5
886EA:  MOV             R2, R1
886EC:  IT LT
886EE:  MOVLT           R2, R0
886F0:  ADDS            R0, #1
886F2:  MOV.W           R0, #0
886F6:  IT EQ
886F8:  MOVEQ           R2, R1
886FA:  STRB            R0, [R4,R2]
886FC:  MOV             R0, R2
886FE:  LDR             R1, [SP,#0x14+var_C]
88700:  LDR             R2, =(__stack_chk_guard_ptr - 0x88706)
88702:  ADD             R2, PC; __stack_chk_guard_ptr
88704:  LDR             R2, [R2]; __stack_chk_guard
88706:  LDR             R2, [R2]
88708:  CMP             R2, R1
8870A:  ITTTT EQ
8870C:  ADDEQ           SP, SP, #0xC
8870E:  POPEQ.W         {R4,R5,R7,LR}
88712:  ADDEQ           SP, SP, #4
88714:  BXEQ            LR
88716:  BLX             __stack_chk_fail
