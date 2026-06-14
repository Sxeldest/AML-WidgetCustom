; =========================================================
; Game Engine Function: sub_21A990
; Address            : 0x21A990 - 0x21A9FE
; =========================================================

21A990:  PUSH            {R4-R7,LR}
21A992:  ADD             R7, SP, #0xC
21A994:  PUSH.W          {R8}
21A998:  SUB             SP, SP, #8
21A99A:  MOV             R8, R1
21A99C:  LDR             R1, =(__stack_chk_guard_ptr - 0x21A9A2)
21A99E:  ADD             R1, PC; __stack_chk_guard_ptr
21A9A0:  LDR             R1, [R1]; __stack_chk_guard
21A9A2:  LDR             R1, [R1]
21A9A4:  STR             R1, [SP,#0x18+var_14]
21A9A6:  LDR             R6, [R0]
21A9A8:  ADD.W           R0, R6, R8,LSL#2
21A9AC:  LDR.W           R5, [R0,#0x18C]
21A9B0:  ADDS            R1, R5, #1
21A9B2:  STR.W           R1, [R0,#0x18C]
21A9B6:  ADD.W           R0, R6, #0x198
21A9BA:  MOVS            R1, #0x10
21A9BC:  BL              sub_216EF0
21A9C0:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle26SyntheticTemplateParamNameE - 0x21A9CA); `vtable for'`anonymous namespace'::itanium_demangle::SyntheticTemplateParamName ...
21A9C2:  MOV             R4, R0
21A9C4:  LDR             R0, =0x101011B
21A9C6:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::SyntheticTemplateParamName
21A9C8:  STRD.W          R8, R5, [R4,#8]
21A9CC:  ADDS            R1, #8
21A9CE:  STR             R4, [SP,#0x18+var_18]
21A9D0:  STRD.W          R1, R0, [R4]
21A9D4:  MOV             R1, SP
21A9D6:  LDR.W           R0, [R6,#0x150]
21A9DA:  LDR.W           R0, [R0,#-4]
21A9DE:  BL              sub_21AA10
21A9E2:  LDR             R0, [SP,#0x18+var_14]
21A9E4:  LDR             R1, =(__stack_chk_guard_ptr - 0x21A9EA)
21A9E6:  ADD             R1, PC; __stack_chk_guard_ptr
21A9E8:  LDR             R1, [R1]; __stack_chk_guard
21A9EA:  LDR             R1, [R1]
21A9EC:  CMP             R1, R0
21A9EE:  ITTTT EQ
21A9F0:  MOVEQ           R0, R4
21A9F2:  ADDEQ           SP, SP, #8
21A9F4:  POPEQ.W         {R8}
21A9F8:  POPEQ           {R4-R7,PC}
21A9FA:  BLX             __stack_chk_fail
