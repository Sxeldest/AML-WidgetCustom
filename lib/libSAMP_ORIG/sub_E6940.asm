; =========================================================
; Game Engine Function: sub_E6940
; Address            : 0xE6940 - 0xE69F0
; =========================================================

E6940:  PUSH            {R4-R7,LR}
E6942:  ADD             R7, SP, #0xC
E6944:  PUSH.W          {R4-R10}
E6948:  MOV             R4, R0
E694A:  LDR             R0, =(__stack_chk_guard_ptr - 0xE6952)
E694C:  MOVS            R6, #0
E694E:  ADD             R0, PC; __stack_chk_guard_ptr
E6950:  LDR             R0, [R0]; __stack_chk_guard
E6952:  LDR             R0, [R0]
E6954:  STR             R0, [SP,#0x28+var_1C]
E6956:  CBZ             R4, loc_E69D2
E6958:  LDR.W           R10, [R7,#arg_0]
E695C:  MOV             R9, R2
E695E:  SUBS            R0, R3, R1
E6960:  SUB.W           R5, R9, R1
E6964:  MOV             R8, R3
E6966:  LDR.W           R2, [R10,#0xC]
E696A:  SUBS            R0, R2, R0
E696C:  IT GT
E696E:  MOVGT           R6, R0
E6970:  CMP             R5, #1
E6972:  BLT             loc_E6982
E6974:  LDR             R0, [R4]
E6976:  MOV             R2, R5
E6978:  LDR             R3, [R0,#0x30]
E697A:  MOV             R0, R4
E697C:  BLX             R3
E697E:  CMP             R0, R5
E6980:  BNE             loc_E69D2
E6982:  CBZ             R6, loc_E69B2
E6984:  LDR             R2, [R7,#arg_4]
E6986:  MOV             R5, SP
E6988:  MOV             R0, R5
E698A:  MOV             R1, R6
E698C:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEjc; std::string::__init(uint,char)
E6990:  LDRB.W          R0, [SP,#0x28+var_28]
E6994:  LDR             R1, [SP,#0x28+var_20]
E6996:  LSLS            R0, R0, #0x1F
E6998:  IT EQ
E699A:  ADDEQ           R1, R5, #1
E699C:  LDR             R0, [R4]
E699E:  LDR             R3, [R0,#0x30]
E69A0:  MOV             R0, R4
E69A2:  MOV             R2, R6
E69A4:  BLX             R3
E69A6:  MOV             R5, R0
E69A8:  MOV             R0, SP
E69AA:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev; std::string::~string()
E69AE:  CMP             R5, R6
E69B0:  BNE             loc_E69D2
E69B2:  SUB.W           R5, R8, R9
E69B6:  CMP             R5, #1
E69B8:  BLT             loc_E69CA
E69BA:  LDR             R0, [R4]
E69BC:  MOV             R1, R9
E69BE:  MOV             R2, R5
E69C0:  LDR             R3, [R0,#0x30]
E69C2:  MOV             R0, R4
E69C4:  BLX             R3
E69C6:  CMP             R0, R5
E69C8:  BNE             loc_E69D2
E69CA:  MOVS            R0, #0
E69CC:  STR.W           R0, [R10,#0xC]
E69D0:  B               loc_E69D4
E69D2:  MOVS            R4, #0
E69D4:  LDR             R0, [SP,#0x28+var_1C]
E69D6:  LDR             R1, =(__stack_chk_guard_ptr - 0xE69DC)
E69D8:  ADD             R1, PC; __stack_chk_guard_ptr
E69DA:  LDR             R1, [R1]; __stack_chk_guard
E69DC:  LDR             R1, [R1]
E69DE:  CMP             R1, R0
E69E0:  ITTTT EQ
E69E2:  MOVEQ           R0, R4
E69E4:  ADDEQ           SP, SP, #0x10
E69E6:  POPEQ.W         {R8-R10}
E69EA:  POPEQ           {R4-R7,PC}
E69EC:  BLX             __stack_chk_fail
