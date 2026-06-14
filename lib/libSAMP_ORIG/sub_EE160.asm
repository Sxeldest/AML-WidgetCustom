; =========================================================
; Game Engine Function: sub_EE160
; Address            : 0xEE160 - 0xEE192
; =========================================================

EE160:  PUSH            {R4-R7,LR}
EE162:  ADD             R7, SP, #0xC
EE164:  PUSH.W          {R11}
EE168:  MOV             R5, R0
EE16A:  LDR             R0, =(_ZNSt6__ndk19money_putIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE_ptr - 0xEE172)
EE16C:  MOV             R4, R1
EE16E:  ADD             R0, PC; _ZNSt6__ndk19money_putIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE_ptr
EE170:  LDR             R0, [R0]; this
EE172:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
EE176:  MOV             R6, R0
EE178:  MOV             R0, R4
EE17A:  MOV             R1, R6
EE17C:  BL              sub_EE674
EE180:  MOV             R1, R0; this
EE182:  MOV             R0, R5; int
EE184:  MOV             R2, R6
EE186:  POP.W           {R11}
EE18A:  POP.W           {R4-R7,LR}
EE18E:  B.W             sub_EE550
