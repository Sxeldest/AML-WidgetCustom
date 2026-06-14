; =========================================================
; Game Engine Function: sub_135804
; Address            : 0x135804 - 0x13587E
; =========================================================

135804:  PUSH            {R4-R7,LR}
135806:  ADD             R7, SP, #0xC
135808:  PUSH.W          {R11}
13580C:  SUB             SP, SP, #0x20
13580E:  STRD.W          R1, R2, [R0,#0x84]
135812:  CBZ             R1, loc_135876
135814:  LDR             R1, [R1]; float
135816:  ADD             R6, SP, #0x30+var_2C
135818:  MOV             R5, R0
13581A:  LDR             R4, [R0,#0x74]
13581C:  MOV             R0, R6; this
13581E:  BLX             j__ZNSt6__ndk19to_stringEf; std::to_string(float)
135822:  LDRB.W          R0, [R5,#0x78]
135826:  LDRD.W          R3, R2, [R5,#0x7C]
13582A:  ANDS.W          R1, R0, #1
13582E:  ITT EQ
135830:  ADDEQ.W         R2, R5, #0x79 ; 'y'
135834:  LSREQ           R3, R0, #1
135836:  MOV             R0, R6
135838:  MOVS            R1, #0
13583A:  MOVS            R5, #0
13583C:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEjPKcj; std::string::insert(uint,char const*,uint)
135840:  LDR             R1, [R0,#8]
135842:  VLDR            D16, [R0]
135846:  STR             R1, [SP,#0x30+var_18]
135848:  VSTR            D16, [SP,#0x30+var_20]
13584C:  STRD.W          R5, R5, [R0]
135850:  STR             R5, [R0,#8]
135852:  ADD             R1, SP, #0x30+var_20
135854:  MOV             R0, R4
135856:  BL              sub_13D450
13585A:  LDRB.W          R0, [SP,#0x30+var_20]
13585E:  LSLS            R0, R0, #0x1F
135860:  ITT NE
135862:  LDRNE           R0, [SP,#0x30+var_18]; void *
135864:  BLXNE           j__ZdlPv; operator delete(void *)
135868:  LDRB.W          R0, [SP,#0x30+var_2C]
13586C:  LSLS            R0, R0, #0x1F
13586E:  ITT NE
135870:  LDRNE           R0, [SP,#0x30+var_24]; void *
135872:  BLXNE           j__ZdlPv; operator delete(void *)
135876:  ADD             SP, SP, #0x20 ; ' '
135878:  POP.W           {R11}
13587C:  POP             {R4-R7,PC}
