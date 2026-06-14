; =========================================================
; Game Engine Function: sub_152356
; Address            : 0x152356 - 0x1523BE
; =========================================================

152356:  PUSH            {R4-R7,LR}
152358:  ADD             R7, SP, #0xC
15235A:  PUSH.W          {R8,R9,R11}
15235E:  SUB             SP, SP, #0x10
152360:  MOV             R9, R0
152362:  MOVS            R0, #1
152364:  STRB.W          R0, [SP,#0x28+var_1C]
152368:  ADD.W           R0, R1, #0xC; this
15236C:  MOV             R4, R1
15236E:  STR             R0, [SP,#0x28+var_20]
152370:  BLX             j__ZNSt6__ndk15mutex4lockEv; std::mutex::lock(void)
152374:  ADD             R1, SP, #0x28+var_20
152376:  MOV             R0, R4
152378:  BLX             j__ZNSt6__ndk117__assoc_sub_state10__sub_waitERNS_11unique_lockINS_5mutexEEE; std::__assoc_sub_state::__sub_wait(std::unique_lock<std::mutex> &)
15237C:  ADD             R0, SP, #0x28+var_24; this
15237E:  MOV             R6, R4
152380:  MOV.W           R8, #0
152384:  LDR.W           R5, [R6,#8]!
152388:  STR.W           R8, [SP,#0x28+var_24]
15238C:  BLX             j__ZNSt13exception_ptrD2Ev; std::exception_ptr::~exception_ptr()
152390:  CBNZ            R5, loc_1523B2
152392:  LDRB.W          R0, [SP,#0x28+var_1C]
152396:  LDRD.W          R1, R2, [R4,#0x18]
15239A:  STRD.W          R1, R2, [R9]
15239E:  STRD.W          R8, R8, [R4,#0x18]
1523A2:  CBZ             R0, loc_1523AA
1523A4:  LDR             R0, [SP,#0x28+var_20]; this
1523A6:  BLX             j__ZNSt6__ndk15mutex6unlockEv; std::mutex::unlock(void)
1523AA:  ADD             SP, SP, #0x10
1523AC:  POP.W           {R8,R9,R11}
1523B0:  POP             {R4-R7,PC}
1523B2:  MOV             R0, SP
1523B4:  MOV             R1, R6
1523B6:  BLX             j__ZNSt13exception_ptrC2ERKS_; std::exception_ptr::exception_ptr(std::exception_ptr const&)
1523BA:  BLX             j__ZSt17rethrow_exceptionSt13exception_ptr; std::rethrow_exception(std::exception_ptr)
