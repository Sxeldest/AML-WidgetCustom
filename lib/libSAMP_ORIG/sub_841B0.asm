; =========================================================
; Game Engine Function: sub_841B0
; Address            : 0x841B0 - 0x84228
; =========================================================

841B0:  PUSH            {R4-R7,LR}
841B2:  ADD             R7, SP, #0xC
841B4:  PUSH.W          {R11}
841B8:  SUB             SP, SP, #0x20
841BA:  MOV             R6, R0
841BC:  LDR             R0, =(__stack_chk_guard_ptr - 0x841C2)
841BE:  ADD             R0, PC; __stack_chk_guard_ptr
841C0:  LDR             R0, [R0]; __stack_chk_guard
841C2:  LDR             R0, [R0]
841C4:  STR             R0, [SP,#0x30+var_14]
841C6:  LSRS            R0, R1, #2
841C8:  CMP             R0, #0xFA
841CA:  BHI             loc_8420E
841CC:  MOV             R0, R6
841CE:  MOV             R5, R1
841D0:  BL              sub_84A94
841D4:  LDR             R3, =(unk_52B19 - 0x841E0)
841D6:  MOV             R4, R0
841D8:  LDR             R0, =(unk_1A6FB0 - 0x841E4)
841DA:  ADD             R2, SP, #0x30+var_28
841DC:  ADD             R3, PC; unk_52B19
841DE:  STR             R6, [SP,#0x30+var_28]
841E0:  ADD             R0, PC; unk_1A6FB0
841E2:  STR             R2, [SP,#0x30+var_20]
841E4:  ADD             R1, SP, #0x30+var_24
841E6:  ADD             R6, SP, #0x30+var_20
841E8:  STRD.W          R6, R1, [SP,#0x30+var_30]
841EC:  ADD.W           R1, R5, R5,LSL#2
841F0:  ADD.W           R1, R0, R1,LSL#2
841F4:  ADD             R0, SP, #0x30+var_1C
841F6:  BL              sub_842E4
841FA:  LDR             R0, [SP,#0x30+var_1C]
841FC:  LDRD.W          R1, R2, [R4]
84200:  STRD.W          R1, R2, [R0,#0xC]
84204:  ADD.W           R1, R4, #8
84208:  ADDS            R0, #0x14
8420A:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_; std::string::operator=(std::string const&)
8420E:  LDR             R0, [SP,#0x30+var_14]
84210:  LDR             R1, =(__stack_chk_guard_ptr - 0x84216)
84212:  ADD             R1, PC; __stack_chk_guard_ptr
84214:  LDR             R1, [R1]; __stack_chk_guard
84216:  LDR             R1, [R1]
84218:  CMP             R1, R0
8421A:  ITTT EQ
8421C:  ADDEQ           SP, SP, #0x20 ; ' '
8421E:  POPEQ.W         {R11}
84222:  POPEQ           {R4-R7,PC}
84224:  BLX             __stack_chk_fail
