; =========================================================
; Game Engine Function: sub_121B40
; Address            : 0x121B40 - 0x121B6C
; =========================================================

121B40:  PUSH            {R4,R6,R7,LR}
121B42:  ADD             R7, SP, #8
121B44:  LDR             R0, =(unk_263954 - 0x121B4E)
121B46:  MOVS            R1, #0
121B48:  MOVS            R4, #0
121B4A:  ADD             R0, PC; unk_263954
121B4C:  BL              sub_121274
121B50:  LDR             R0, =(_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev_ptr - 0x121B58)
121B52:  LDR             R1, =(dword_263960 - 0x121B5C)
121B54:  ADD             R0, PC; _ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev_ptr
121B56:  LDR             R2, =(off_22A540 - 0x121B5E)
121B58:  ADD             R1, PC; dword_263960
121B5A:  ADD             R2, PC; off_22A540
121B5C:  LDR             R0, [R0]; std::string::~string()
121B5E:  STRD.W          R4, R4, [R1]
121B62:  STR             R4, [R1,#(dword_263968 - 0x263960)]
121B64:  POP.W           {R4,R6,R7,LR}
121B68:  B.W             sub_224250
