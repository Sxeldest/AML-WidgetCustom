; =========================================================
; Game Engine Function: sub_1586DC
; Address            : 0x1586DC - 0x15873C
; =========================================================

1586DC:  PUSH            {R4-R7,LR}
1586DE:  ADD             R7, SP, #0xC
1586E0:  PUSH.W          {R8,R9,R11}
1586E4:  SUB             SP, SP, #8
1586E6:  ADD.W           R8, R0, #0xC
1586EA:  MOV             R5, R0
1586EC:  MOV             R6, R1
1586EE:  MOV             R0, R8; this
1586F0:  BLX             j__ZNSt6__ndk15mutex4lockEv; std::mutex::lock(void)
1586F4:  LDRB            R0, [R5,#0x14]
1586F6:  LSLS            R0, R0, #0x1F
1586F8:  BNE             loc_158736
1586FA:  ADD             R0, SP, #0x20+var_1C; this
1586FC:  MOV.W           R9, #0
158700:  LDR             R4, [R5,#8]
158702:  STR.W           R9, [SP,#0x20+var_1C]
158706:  BLX             j__ZNSt13exception_ptrD2Ev; std::exception_ptr::~exception_ptr()
15870A:  CBNZ            R4, loc_158736
15870C:  LDR             R2, [R5,#0x14]
15870E:  LDRD.W          R0, R1, [R6]
158712:  STRD.W          R0, R1, [R5,#0x18]
158716:  ORR.W           R0, R2, #5
15871A:  STR             R0, [R5,#0x14]
15871C:  ADD.W           R0, R5, #0x10; this
158720:  STRD.W          R9, R9, [R6]
158724:  BLX             j__ZNSt6__ndk118condition_variable10notify_allEv; std::condition_variable::notify_all(void)
158728:  MOV             R0, R8; this
15872A:  BLX             j__ZNSt6__ndk15mutex6unlockEv; std::mutex::unlock(void)
15872E:  ADD             SP, SP, #8
158730:  POP.W           {R8,R9,R11}
158734:  POP             {R4-R7,PC}
158736:  MOVS            R0, #2
158738:  BL              sub_158460
