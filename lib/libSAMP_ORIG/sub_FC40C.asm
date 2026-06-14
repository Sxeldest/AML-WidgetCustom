; =========================================================
; Game Engine Function: sub_FC40C
; Address            : 0xFC40C - 0xFC44C
; =========================================================

FC40C:  PUSH            {R4-R7,LR}
FC40E:  ADD             R7, SP, #0xC
FC410:  PUSH.W          {R8,R9,R11}
FC414:  SUBS            R4, R2, R1
FC416:  MOV             R8, R3
FC418:  MOV             R6, R1
FC41A:  MOV             R9, R0
FC41C:  CMP             R4, #9
FC41E:  BGT             loc_FC434
FC420:  MOV             R0, R8
FC422:  MOV             R5, R2
FC424:  BL              sub_FC44C
FC428:  CMP             R0, R4
FC42A:  BLE             loc_FC434
FC42C:  MOVS            R0, #0x4B ; 'K'
FC42E:  STR.W           R5, [R9]
FC432:  B               loc_FC442
FC434:  MOV             R0, R8; this
FC436:  MOV             R1, R6; unsigned int
FC438:  BLX             j__ZNSt6__ndk16__itoa8__u32toaEjPc; std::__itoa::__u32toa(uint,char *)
FC43C:  STR.W           R0, [R9]
FC440:  MOVS            R0, #0
FC442:  STR.W           R0, [R9,#4]
FC446:  POP.W           {R8,R9,R11}
FC44A:  POP             {R4-R7,PC}
