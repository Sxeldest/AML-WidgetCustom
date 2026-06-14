; =========================================================
; Game Engine Function: sub_826F4
; Address            : 0x826F4 - 0x8270E
; =========================================================

826F4:  LDR             R0, =(_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev_ptr - 0x826FE)
826F6:  MOVS            R3, #0
826F8:  LDR             R1, =(dword_1A49F0 - 0x82702)
826FA:  ADD             R0, PC; _ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev_ptr
826FC:  LDR             R2, =(off_110560 - 0x82706)
826FE:  ADD             R1, PC; dword_1A49F0
82700:  LDR             R0, [R0]; std::string::~string()
82702:  ADD             R2, PC; off_110560
82704:  STRD.W          R3, R3, [R1]
82708:  STR             R3, [R1,#(dword_1A49F8 - 0x1A49F0)]
8270A:  B.W             sub_10C188
