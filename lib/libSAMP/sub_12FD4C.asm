; =========================================================
; Game Engine Function: sub_12FD4C
; Address            : 0x12FD4C - 0x12FD94
; =========================================================

12FD4C:  PUSH            {R4,R5,R7,LR}
12FD4E:  ADD             R7, SP, #8
12FD50:  SUB             SP, SP, #0x10
12FD52:  MOV             R4, R0
12FD54:  ADDS            R0, #0x64 ; 'd'
12FD56:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc; std::string::push_back(char)
12FD5A:  LDRB.W          R0, [R4,#0x64]
12FD5E:  LDRD.W          R2, R1, [R4,#0x68]
12FD62:  ANDS.W          R3, R0, #1
12FD66:  ITT EQ
12FD68:  ADDEQ.W         R1, R4, #0x65 ; 'e'
12FD6C:  LSREQ           R2, R0, #1
12FD6E:  MOV             R0, SP
12FD70:  BL              sub_164D04
12FD74:  MOV             R5, R4
12FD76:  LDRB.W          R0, [R5,#0x58]!
12FD7A:  LSLS            R0, R0, #0x1F
12FD7C:  ITT NE
12FD7E:  LDRNE           R0, [R4,#0x60]; void *
12FD80:  BLXNE           j__ZdlPv; operator delete(void *)
12FD84:  VLDR            D16, [SP,#0x18+var_18]
12FD88:  LDR             R0, [SP,#0x18+var_10]
12FD8A:  STR             R0, [R5,#8]
12FD8C:  VSTR            D16, [R5]
12FD90:  ADD             SP, SP, #0x10
12FD92:  POP             {R4,R5,R7,PC}
