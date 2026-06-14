; =========================================================
; Game Engine Function: sub_F0734
; Address            : 0xF0734 - 0xF07A2
; =========================================================

F0734:  PUSH            {R4,R6,R7,LR}
F0736:  ADD             R7, SP, #8
F0738:  LDR             R0, =(byte_23DEE4 - 0xF073E)
F073A:  ADD             R0, PC; byte_23DEE4
F073C:  LDRB            R0, [R0]
F073E:  DMB.W           ISH
F0742:  LDR             R4, =(dword_23DED8 - 0xF0748)
F0744:  ADD             R4, PC; dword_23DED8
F0746:  LSLS            R0, R0, #0x1F
F0748:  BEQ             loc_F0774
F074A:  LDRB            R0, [R4]
F074C:  LSLS            R0, R0, #0x1F
F074E:  ITTTT NE
F0750:  LDRNE           R0, [R4]
F0752:  BICNE.W         R0, R0, #1
F0756:  SUBNE           R0, #1
F0758:  MOVNE           R1, #0
F075A:  IT NE
F075C:  CMPNE.W         R1, R0,LSR#12
F0760:  BNE             loc_F076E
F0762:  LDR             R0, =(dword_23DED8 - 0xF076C)
F0764:  MOV.W           R1, #0x1000
F0768:  ADD             R0, PC; dword_23DED8
F076A:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj; std::string::reserve(uint)
F076E:  LDR             R0, =(dword_23DED8 - 0xF0774)
F0770:  ADD             R0, PC; dword_23DED8
F0772:  POP             {R4,R6,R7,PC}
F0774:  LDR             R0, =(byte_23DEE4 - 0xF077A)
F0776:  ADD             R0, PC; byte_23DEE4 ; __guard *
F0778:  BLX             j___cxa_guard_acquire
F077C:  CMP             R0, #0
F077E:  BEQ             loc_F074A
F0780:  LDR             R2, =(off_22A540 - 0xF078A)
F0782:  MOVS            R1, #0
F0784:  LDR             R0, =(_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev_ptr - 0xF0790)
F0786:  ADD             R2, PC; off_22A540 ; lpdso_handle
F0788:  STRD.W          R1, R1, [R4]
F078C:  ADD             R0, PC; _ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev_ptr
F078E:  STR             R1, [R4,#(dword_23DEE0 - 0x23DED8)]
F0790:  MOV             R1, R4; obj
F0792:  LDR             R0, [R0]; std::string::~string() ; lpfunc
F0794:  BLX             __cxa_atexit
F0798:  LDR             R0, =(byte_23DEE4 - 0xF079E)
F079A:  ADD             R0, PC; byte_23DEE4 ; __guard *
F079C:  BLX             j___cxa_guard_release
F07A0:  B               loc_F074A
