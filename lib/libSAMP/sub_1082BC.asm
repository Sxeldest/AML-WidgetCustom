; =========================================================
; Game Engine Function: sub_1082BC
; Address            : 0x1082BC - 0x1082D6
; =========================================================

1082BC:  LDR             R0, =(_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev_ptr - 0x1082C6)
1082BE:  MOVS            R3, #0
1082C0:  LDR             R1, =(dword_25DAD8 - 0x1082CA)
1082C2:  ADD             R0, PC; _ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev_ptr
1082C4:  LDR             R2, =(off_22A540 - 0x1082CE)
1082C6:  ADD             R1, PC; dword_25DAD8
1082C8:  LDR             R0, [R0]; std::string::~string()
1082CA:  ADD             R2, PC; off_22A540
1082CC:  STRD.W          R3, R3, [R1]
1082D0:  STR             R3, [R1,#(dword_25DAE0 - 0x25DAD8)]
1082D2:  B.W             sub_224250
