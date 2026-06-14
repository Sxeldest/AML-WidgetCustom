; =========================================================
; Game Engine Function: sub_EE66C
; Address            : 0xEE66C - 0xEE6D8
; =========================================================

EE66C:  PUSH            {R4-R7,LR}
EE66E:  ADD             R7, SP, #0xC
EE670:  PUSH.W          {R8,R9,R11}
EE674:  SUB             SP, SP, #0x68
EE676:  MOV             R8, R0
EE678:  ADD             R0, SP, #0x80+var_50
EE67A:  STRD.W          R2, R3, [SP,#0x80+var_50]
EE67E:  BLX             j__ZNSt6__ndk16chrono12system_clock9to_time_tERKNS0_10time_pointIS1_NS0_8durationIxNS_5ratioILx1ELx1000000EEEEEEE; std::chrono::system_clock::to_time_t(std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1ll,1000000ll>>> const&)
EE682:  STR             R0, [SP,#0x80+timer]
EE684:  ADD             R0, SP, #0x80+timer; timer
EE686:  ADD.W           R9, R0, #4
EE68A:  MOV             R1, R9; tp
EE68C:  BLX             localtime_r
EE690:  CBZ             R0, loc_EE6B6
EE692:  LDM.W           R9!, {R3-R6,R12}
EE696:  MOV             R1, SP
EE698:  MOV             R0, R1
EE69A:  STM.W           R0!, {R3-R6,R12}
EE69E:  LDM.W           R9, {R3-R6,R12,LR}
EE6A2:  LDR             R2, [R7,#arg_0]
EE6A4:  STM.W           R0, {R3-R6,R12,LR}
EE6A8:  MOV             R0, R8
EE6AA:  BL              sub_EE978
EE6AE:  ADD             SP, SP, #0x68 ; 'h'
EE6B0:  POP.W           {R8,R9,R11}
EE6B4:  POP             {R4-R7,PC}
EE6B6:  MOVS            R0, #8; thrown_size
EE6B8:  BLX             j___cxa_allocate_exception
EE6BC:  LDR             R1, =(aTimeTValueOutO - 0xEE6C4); "time_t value out of range" ...
EE6BE:  MOV             R4, R0
EE6C0:  ADD             R1, PC; "time_t value out of range"
EE6C2:  BL              sub_EE924
EE6C6:  LDR             R0, =(_ZTIN3fmt2v812format_errorE_ptr - 0xEE6CE)
EE6C8:  LDR             R2, =(_ZN3fmt2v812format_errorD2Ev_ptr - 0xEE6D0)
EE6CA:  ADD             R0, PC; _ZTIN3fmt2v812format_errorE_ptr
EE6CC:  ADD             R2, PC; _ZN3fmt2v812format_errorD2Ev_ptr
EE6CE:  LDR             R1, [R0]; lptinfo
EE6D0:  MOV             R0, R4; void *
EE6D2:  LDR             R2, [R2]; fmt::v8::format_error::~format_error() ; void (*)(void *)
EE6D4:  BLX             j___cxa_throw
