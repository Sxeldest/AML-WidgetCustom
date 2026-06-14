; =========================================================
; Game Engine Function: sub_EE5E8
; Address            : 0xEE5E8 - 0xEE636
; =========================================================

EE5E8:  PUSH            {R4-R7,LR}
EE5EA:  ADD             R7, SP, #0xC
EE5EC:  PUSH.W          {R11}
EE5F0:  MOV             R4, R0
EE5F2:  LDR             R0, =(_ZTVNSt6__ndk16locale5__impE - 0xEE5FC); `vtable for'std::locale::__imp ...
EE5F4:  MOV             R5, R4
EE5F6:  MOVS            R6, #0
EE5F8:  ADD             R0, PC; `vtable for'std::locale::__imp
EE5FA:  ADDS            R0, #8
EE5FC:  STR.W           R0, [R5],#8
EE600:  LDRD.W          R0, R1, [R4,#8]
EE604:  SUBS            R1, R1, R0
EE606:  CMP.W           R6, R1,ASR#2
EE60A:  BCS             loc_EE61A
EE60C:  LDR.W           R0, [R0,R6,LSL#2]; this
EE610:  CBZ             R0, loc_EE616
EE612:  BLX             j__ZNSt6__ndk114__shared_count16__release_sharedEv; std::__shared_count::__release_shared(void)
EE616:  ADDS            R6, #1
EE618:  B               loc_EE600
EE61A:  ADD.W           R0, R4, #0x90
EE61E:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev; std::string::~string()
EE622:  MOV             R0, R5
EE624:  BL              sub_F62FE
EE628:  MOV             R0, R4
EE62A:  POP.W           {R11}
EE62E:  POP.W           {R4-R7,LR}
EE632:  B.W             _ZNSt6__ndk17collateIcED2Ev_0; std::collate<char>::~collate()
