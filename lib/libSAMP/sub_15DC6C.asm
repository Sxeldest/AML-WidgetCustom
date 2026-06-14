; =========================================================
; Game Engine Function: sub_15DC6C
; Address            : 0x15DC6C - 0x15DCD4
; =========================================================

15DC6C:  PUSH            {R4-R7,LR}
15DC6E:  ADD             R7, SP, #0xC
15DC70:  PUSH.W          {R8,R9,R11}
15DC74:  SUB             SP, SP, #0x10
15DC76:  MOV             R9, R0
15DC78:  MOVS            R0, #1
15DC7A:  STRB.W          R0, [SP,#0x28+var_1C]
15DC7E:  ADD.W           R0, R1, #0xC; this
15DC82:  MOV             R4, R1
15DC84:  STR             R0, [SP,#0x28+var_20]
15DC86:  BLX             j__ZNSt6__ndk15mutex4lockEv; std::mutex::lock(void)
15DC8A:  ADD             R1, SP, #0x28+var_20
15DC8C:  MOV             R0, R4
15DC8E:  BLX             j__ZNSt6__ndk117__assoc_sub_state10__sub_waitERNS_11unique_lockINS_5mutexEEE; std::__assoc_sub_state::__sub_wait(std::unique_lock<std::mutex> &)
15DC92:  ADD             R0, SP, #0x28+var_24; this
15DC94:  MOV             R6, R4
15DC96:  MOV.W           R8, #0
15DC9A:  LDR.W           R5, [R6,#8]!
15DC9E:  STR.W           R8, [SP,#0x28+var_24]
15DCA2:  BLX             j__ZNSt13exception_ptrD2Ev; std::exception_ptr::~exception_ptr()
15DCA6:  CBNZ            R5, loc_15DCC8
15DCA8:  LDRB.W          R0, [SP,#0x28+var_1C]
15DCAC:  LDRD.W          R1, R2, [R4,#0x18]
15DCB0:  STRD.W          R1, R2, [R9]
15DCB4:  STRD.W          R8, R8, [R4,#0x18]
15DCB8:  CBZ             R0, loc_15DCC0
15DCBA:  LDR             R0, [SP,#0x28+var_20]; this
15DCBC:  BLX             j__ZNSt6__ndk15mutex6unlockEv; std::mutex::unlock(void)
15DCC0:  ADD             SP, SP, #0x10
15DCC2:  POP.W           {R8,R9,R11}
15DCC6:  POP             {R4-R7,PC}
15DCC8:  MOV             R0, SP
15DCCA:  MOV             R1, R6
15DCCC:  BLX             j__ZNSt13exception_ptrC2ERKS_; std::exception_ptr::exception_ptr(std::exception_ptr const&)
15DCD0:  BLX             j__ZSt17rethrow_exceptionSt13exception_ptr; std::rethrow_exception(std::exception_ptr)
