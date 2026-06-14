; =========================================================
; Game Engine Function: sub_155FE4
; Address            : 0x155FE4 - 0x15601A
; =========================================================

155FE4:  PUSH            {R4,R5,R7,LR}
155FE6:  ADD             R7, SP, #8
155FE8:  MOV             R5, R0
155FEA:  LDRB            R0, [R2]
155FEC:  MOV             R12, R1
155FEE:  LDRD.W          R3, R1, [R2,#4]
155FF2:  ANDS.W          R4, R0, #1
155FF6:  ITT EQ
155FF8:  ADDEQ           R1, R2, #1
155FFA:  LSREQ           R3, R0, #1
155FFC:  MOV             R0, R12
155FFE:  MOV             R2, R3
156000:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcj; std::string::append(char const*,uint)
156004:  VLDR            D16, [R0]
156008:  MOVS            R2, #0
15600A:  LDR             R1, [R0,#8]
15600C:  STRD.W          R2, R2, [R0]
156010:  STR             R2, [R0,#8]
156012:  STR             R1, [R5,#8]
156014:  VSTR            D16, [R5]
156018:  POP             {R4,R5,R7,PC}
