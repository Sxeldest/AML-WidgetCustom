; =========================================================
; Game Engine Function: sub_158C02
; Address            : 0x158C02 - 0x158C62
; =========================================================

158C02:  PUSH            {R4-R7,LR}
158C04:  ADD             R7, SP, #0xC
158C06:  PUSH.W          {R8,R9,R11}
158C0A:  SUB             SP, SP, #8
158C0C:  ADD.W           R8, R0, #0xC
158C10:  MOV             R5, R0
158C12:  MOV             R6, R1
158C14:  MOV             R0, R8; this
158C16:  BLX             j__ZNSt6__ndk15mutex4lockEv; std::mutex::lock(void)
158C1A:  LDRB            R0, [R5,#0x14]
158C1C:  LSLS            R0, R0, #0x1F
158C1E:  BNE             loc_158C5C
158C20:  ADD             R0, SP, #0x20+var_1C; this
158C22:  MOV.W           R9, #0
158C26:  LDR             R4, [R5,#8]
158C28:  STR.W           R9, [SP,#0x20+var_1C]
158C2C:  BLX             j__ZNSt13exception_ptrD2Ev; std::exception_ptr::~exception_ptr()
158C30:  CBNZ            R4, loc_158C5C
158C32:  LDR             R2, [R5,#0x14]
158C34:  LDRD.W          R0, R1, [R6]
158C38:  STRD.W          R0, R1, [R5,#0x18]
158C3C:  ORR.W           R0, R2, #5
158C40:  STR             R0, [R5,#0x14]
158C42:  ADD.W           R0, R5, #0x10; this
158C46:  STRD.W          R9, R9, [R6]
158C4A:  BLX             j__ZNSt6__ndk118condition_variable10notify_allEv; std::condition_variable::notify_all(void)
158C4E:  MOV             R0, R8; this
158C50:  BLX             j__ZNSt6__ndk15mutex6unlockEv; std::mutex::unlock(void)
158C54:  ADD             SP, SP, #8
158C56:  POP.W           {R8,R9,R11}
158C5A:  POP             {R4-R7,PC}
158C5C:  MOVS            R0, #2
158C5E:  BL              sub_158460
