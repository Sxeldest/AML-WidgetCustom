; =========================================================
; Game Engine Function: sub_157FD4
; Address            : 0x157FD4 - 0x158098
; =========================================================

157FD4:  PUSH            {R4-R7,LR}
157FD6:  ADD             R7, SP, #0xC
157FD8:  PUSH.W          {R8-R10}
157FDC:  SUB             SP, SP, #0x10
157FDE:  MOV             R4, R0
157FE0:  MOVS            R0, #0x20 ; ' '; unsigned int
157FE2:  MOV             R8, R2
157FE4:  MOV             R5, R1
157FE6:  BLX             j__Znwj; operator new(uint)
157FEA:  MOV             R9, R0
157FEC:  LDR             R0, =(_ZTVNSt6__ndk113__assoc_stateINS_10shared_ptrIjEEEE - 0x157FF8); `vtable for'std::__assoc_state<std::shared_ptr<uint>> ...
157FEE:  MOV             R6, R9
157FF0:  VMOV.I32        Q8, #0
157FF4:  ADD             R0, PC; `vtable for'std::__assoc_state<std::shared_ptr<uint>>
157FF6:  MOVS            R1, #0
157FF8:  ADDS            R0, #8
157FFA:  STR.W           R0, [R6],#4
157FFE:  STR.W           R9, [R4]
158002:  MOV             R0, R6
158004:  STR.W           R9, [SP,#0x28+var_24]
158008:  VST1.32         {D16-D17}, [R0]!
15800C:  STR             R1, [R0]
15800E:  MOV             R0, R9
158010:  BL              sub_1584A0
158014:  MOVS            R0, #4; unsigned int
158016:  BLX             j__Znwj; operator new(uint)
15801A:  MOV             R10, R0
15801C:  BLX             j__ZNSt6__ndk115__thread_structC2Ev; std::__thread_struct::__thread_struct(void)
158020:  MOVS            R0, #0x18; unsigned int
158022:  BLX             j__Znwj; operator new(uint)
158026:  MOV             R4, R0
158028:  STRD.W          R10, R9, [R0]
15802C:  STR.W           R8, [R0,#0x14]
158030:  MOVS            R0, #0
158032:  LDRB.W          R12, [R5]
158036:  LDR             R1, [R5,#8]
158038:  LDR.W           R3, [R5,#1]
15803C:  LDR             R2, [R5,#4]
15803E:  STRD.W          R0, R0, [R5]
158042:  STR             R0, [R5,#8]
158044:  STRD.W          R0, R0, [SP,#0x28+var_24]
158048:  ADD             R0, SP, #0x28+var_20
15804A:  STR.W           R3, [R4,#9]
15804E:  STR             R2, [R4,#0xC]
158050:  STR             R1, [R4,#0x10]
158052:  STRB.W          R12, [R4,#8]
158056:  STR             R4, [SP,#0x28+var_1C]
158058:  BL              sub_1580F4
15805C:  LDR             R2, =(sub_1584E8+1 - 0x158062)
15805E:  ADD             R2, PC; sub_1584E8 ; start_routine
158060:  MOV             R0, SP; newthread
158062:  MOVS            R1, #0; attr
158064:  MOV             R3, R4; arg
158066:  BLX             pthread_create
15806A:  CBNZ            R0, loc_158090
15806C:  MOVS            R0, #0
15806E:  STR             R0, [SP,#0x28+var_1C]
158070:  ADD             R0, SP, #0x28+var_1C
158072:  BL              sub_158680
158076:  MOV             R0, SP; this
158078:  BLX             j__ZNSt6__ndk16thread6detachEv; std::thread::detach(void)
15807C:  MOV             R0, SP; this
15807E:  BLX             j__ZNSt6__ndk16threadD2Ev; std::thread::~thread()
158082:  ADD             R0, SP, #0x28+var_24
158084:  BL              sub_1580F4
158088:  ADD             SP, SP, #0x10
15808A:  POP.W           {R8-R10}
15808E:  POP             {R4-R7,PC}
158090:  LDR             R1, =(aThreadConstruc - 0x158096); "thread constructor failed" ...
158092:  ADD             R1, PC; "thread constructor failed"
158094:  BLX             j__ZNSt6__ndk120__throw_system_errorEiPKc; std::__throw_system_error(int,char const*)
