; =========================================================
; Game Engine Function: sub_2064A0
; Address            : 0x2064A0 - 0x2064EE
; =========================================================

2064A0:  PUSH            {R4-R7,LR}
2064A2:  ADD             R7, SP, #0xC
2064A4:  PUSH.W          {R11}
2064A8:  MOV             R4, R0
2064AA:  LDR             R0, =(_ZTVNSt6__ndk16locale5__impE - 0x2064B4); `vtable for'std::locale::__imp ...
2064AC:  MOV             R5, R4
2064AE:  MOVS            R6, #0
2064B0:  ADD             R0, PC; `vtable for'std::locale::__imp
2064B2:  ADDS            R0, #8
2064B4:  STR.W           R0, [R5],#8
2064B8:  LDRD.W          R0, R1, [R4,#8]
2064BC:  SUBS            R1, R1, R0
2064BE:  CMP.W           R6, R1,ASR#2
2064C2:  BCS             loc_2064D2
2064C4:  LDR.W           R0, [R0,R6,LSL#2]; this
2064C8:  CBZ             R0, loc_2064CE
2064CA:  BLX             j__ZNSt6__ndk114__shared_count16__release_sharedEv; std::__shared_count::__release_shared(void)
2064CE:  ADDS            R6, #1
2064D0:  B               loc_2064B8
2064D2:  ADD.W           R0, R4, #0x90
2064D6:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev; std::string::~string()
2064DA:  MOV             R0, R5
2064DC:  BL              sub_20E1EE
2064E0:  MOV             R0, R4
2064E2:  POP.W           {R11}
2064E6:  POP.W           {R4-R7,LR}
2064EA:  B.W             _ZNSt6__ndk17collateIcED2Ev_0; std::collate<char>::~collate()
