; =========================================================
; Game Engine Function: sub_164D04
; Address            : 0x164D04 - 0x164D56
; =========================================================

164D04:  PUSH            {R4-R7,LR}
164D06:  ADD             R7, SP, #0xC
164D08:  PUSH.W          {R8-R10}
164D0C:  SUB             SP, SP, #8
164D0E:  MOV.W           R10, #0
164D12:  STRD.W          R10, R10, [R0]
164D16:  STR.W           R10, [R0,#8]
164D1A:  CBZ             R2, loc_164D4E
164D1C:  ADD             R4, SP, #0x20+var_1C
164D1E:  SUB.W           R9, R7, #-var_1E
164D22:  MOV             R5, R2
164D24:  MOV             R6, R1
164D26:  MOV             R8, R0
164D28:  LDRB            R0, [R6]
164D2A:  MOV             R1, R9
164D2C:  STRH.W          R10, [R7,#var_1E]
164D30:  STRB.W          R0, [R7,#var_1E]
164D34:  MOV             R0, R4
164D36:  STR.W           R10, [SP,#0x20+var_1C]
164D3A:  BL              sub_164D6C
164D3E:  MOV             R0, R8; int
164D40:  MOV             R1, R4; s
164D42:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc; std::string::append(char const*)
164D46:  SUBS            R5, #1
164D48:  ADD.W           R6, R6, #1
164D4C:  BNE             loc_164D28
164D4E:  ADD             SP, SP, #8
164D50:  POP.W           {R8-R10}
164D54:  POP             {R4-R7,PC}
