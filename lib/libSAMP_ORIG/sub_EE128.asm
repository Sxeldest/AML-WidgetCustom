; =========================================================
; Game Engine Function: sub_EE128
; Address            : 0xEE128 - 0xEE15A
; =========================================================

EE128:  PUSH            {R4-R7,LR}
EE12A:  ADD             R7, SP, #0xC
EE12C:  PUSH.W          {R11}
EE130:  MOV             R5, R0
EE132:  LDR             R0, =(_ZNSt6__ndk19money_getIwNS_19istreambuf_iteratorIwNS_11char_traitsIwEEEEE2idE_ptr - 0xEE13A)
EE134:  MOV             R4, R1
EE136:  ADD             R0, PC; _ZNSt6__ndk19money_getIwNS_19istreambuf_iteratorIwNS_11char_traitsIwEEEEE2idE_ptr
EE138:  LDR             R0, [R0]; this
EE13A:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
EE13E:  MOV             R6, R0
EE140:  MOV             R0, R4
EE142:  MOV             R1, R6
EE144:  BL              sub_EE674
EE148:  MOV             R1, R0; this
EE14A:  MOV             R0, R5; int
EE14C:  MOV             R2, R6
EE14E:  POP.W           {R11}
EE152:  POP.W           {R4-R7,LR}
EE156:  B.W             sub_EE550
