; =========================================================
; Game Engine Function: sub_DCCDE
; Address            : 0xDCCDE - 0xDCD26
; =========================================================

DCCDE:  PUSH            {R4-R7,LR}
DCCE0:  ADD             R7, SP, #0xC
DCCE2:  PUSH.W          {R8}
DCCE6:  MOV             R8, R0
DCCE8:  ADD.W           R5, R8, #0x10
DCCEC:  LDR             R0, [R0,#8]
DCCEE:  MOVS            R3, #0
DCCF0:  LDM             R5, {R1,R2,R5}
DCCF2:  ADDS            R6, R1, R0
DCCF4:  STR.W           R6, [R8,#0x10]
DCCF8:  SUBS            R6, R2, R1
DCCFA:  STR.W           R3, [R8,#8]
DCCFE:  IT CC
DCD00:  MOVCC           R6, R3
DCD02:  CMP             R6, R0
DCD04:  IT HI
DCD06:  MOVHI           R6, R0
DCD08:  CBZ             R6, loc_DCD1C
DCD0A:  ADD.W           R4, R8, #0x1C
DCD0E:  LDRB.W          R1, [R4],#1
DCD12:  MOV             R0, R5
DCD14:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc; std::string::push_back(char)
DCD18:  SUBS            R6, #1
DCD1A:  BNE             loc_DCD0E
DCD1C:  STR.W           R5, [R8,#0x18]
DCD20:  POP.W           {R8}
DCD24:  POP             {R4-R7,PC}
