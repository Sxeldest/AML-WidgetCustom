; =========================================================
; Game Engine Function: sub_158190
; Address            : 0x158190 - 0x158276
; =========================================================

158190:  PUSH            {R4-R7,LR}
158192:  ADD             R7, SP, #0xC
158194:  PUSH.W          {R8-R10}
158198:  SUB             SP, SP, #0x10
15819A:  MOV             R4, R0
15819C:  MOVS            R0, #0x20 ; ' '; unsigned int
15819E:  MOV             R10, R2
1581A0:  MOV             R6, R1
1581A2:  BLX             j__Znwj; operator new(uint)
1581A6:  MOV             R8, R0
1581A8:  LDR             R0, =(_ZTVNSt6__ndk113__assoc_stateINS_10shared_ptrI25AudioStreamDownloadStatusEEEE - 0x1581B4); `vtable for'std::__assoc_state<std::shared_ptr<AudioStreamDownloadStatus>> ...
1581AA:  MOV             R5, R8
1581AC:  VMOV.I32        Q8, #0
1581B0:  ADD             R0, PC; `vtable for'std::__assoc_state<std::shared_ptr<AudioStreamDownloadStatus>>
1581B2:  MOVS            R1, #0
1581B4:  ADDS            R0, #8
1581B6:  STR.W           R0, [R5],#4
1581BA:  STR.W           R8, [R4]
1581BE:  MOV             R0, R5
1581C0:  STR.W           R8, [SP,#0x28+var_24]
1581C4:  VST1.32         {D16-D17}, [R0]!
1581C8:  STR             R1, [R0]
1581CA:  MOV             R0, R8
1581CC:  BL              sub_1584A0
1581D0:  MOVS            R0, #4; unsigned int
1581D2:  BLX             j__Znwj; operator new(uint)
1581D6:  MOV             R9, R0
1581D8:  BLX             j__ZNSt6__ndk115__thread_structC2Ev; std::__thread_struct::__thread_struct(void)
1581DC:  MOVS            R0, #0x20 ; ' '; unsigned int
1581DE:  BLX             j__Znwj; operator new(uint)
1581E2:  MOV             R4, R0
1581E4:  MOVS            R0, #0
1581E6:  LDRB.W          R12, [R6]
1581EA:  LDR.W           LR, [R6,#8]
1581EE:  LDR.W           R3, [R6,#1]
1581F2:  LDR             R2, [R6,#4]
1581F4:  STRD.W          R0, R0, [R6]
1581F8:  STR             R0, [R6,#8]
1581FA:  STR.W           R3, [R4,#9]
1581FE:  LDR.W           R3, [R10,#1]
158202:  STR             R2, [R4,#0xC]
158204:  LDRB.W          R2, [R10]
158208:  LDR.W           R6, [R10,#4]
15820C:  LDR.W           R1, [R10,#8]
158210:  STRD.W          R0, R0, [R10]
158214:  STR.W           R0, [R10,#8]
158218:  STR             R0, [SP,#0x28+var_24]
15821A:  STR             R0, [SP,#0x28+var_20]
15821C:  ADD             R0, SP, #0x28+var_20
15821E:  STR.W           R3, [R4,#0x15]
158222:  STR             R6, [R4,#0x18]
158224:  STRD.W          R9, R8, [R4]
158228:  STR             R1, [R4,#0x1C]
15822A:  STRB            R2, [R4,#0x14]
15822C:  STR.W           LR, [R4,#0x10]
158230:  STRB.W          R12, [R4,#8]
158234:  STR             R4, [SP,#0x28+var_1C]
158236:  BL              sub_1582D0
15823A:  LDR             R2, =(sub_158820+1 - 0x158240)
15823C:  ADD             R2, PC; sub_158820 ; start_routine
15823E:  MOV             R0, SP; newthread
158240:  MOVS            R1, #0; attr
158242:  MOV             R3, R4; arg
158244:  BLX             pthread_create
158248:  CBNZ            R0, loc_15826E
15824A:  MOVS            R0, #0
15824C:  STR             R0, [SP,#0x28+var_1C]
15824E:  ADD             R0, SP, #0x28+var_1C
158250:  BL              sub_158AC8
158254:  MOV             R0, SP; this
158256:  BLX             j__ZNSt6__ndk16thread6detachEv; std::thread::detach(void)
15825A:  MOV             R0, SP; this
15825C:  BLX             j__ZNSt6__ndk16threadD2Ev; std::thread::~thread()
158260:  ADD             R0, SP, #0x28+var_24
158262:  BL              sub_1582D0
158266:  ADD             SP, SP, #0x10
158268:  POP.W           {R8-R10}
15826C:  POP             {R4-R7,PC}
15826E:  LDR             R1, =(aThreadConstruc - 0x158274); "thread constructor failed" ...
158270:  ADD             R1, PC; "thread constructor failed"
158272:  BLX             j__ZNSt6__ndk120__throw_system_errorEiPKc; std::__throw_system_error(int,char const*)
