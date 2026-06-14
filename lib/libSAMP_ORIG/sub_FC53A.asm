; =========================================================
; Game Engine Function: sub_FC53A
; Address            : 0xFC53A - 0xFC580
; =========================================================

FC53A:  PUSH            {R4-R7,LR}
FC53C:  ADD             R7, SP, #0xC
FC53E:  PUSH.W          {R8-R10}; char *
FC542:  LDRD.W          R9, R8, [R7,#arg_0]
FC546:  SUBS            R4, R2, R1
FC548:  MOV             R5, R1
FC54A:  MOV             R10, R0
FC54C:  CMP             R4, #0x13
FC54E:  BGT             loc_FC566
FC550:  MOV             R0, R9
FC552:  MOV             R1, R8
FC554:  MOV             R6, R2
FC556:  BL              sub_FC580
FC55A:  CMP             R0, R4
FC55C:  BLE             loc_FC566
FC55E:  MOVS            R0, #0x4B ; 'K'
FC560:  STR.W           R6, [R10]
FC564:  B               loc_FC576
FC566:  MOV             R0, R9; this
FC568:  MOV             R1, R8
FC56A:  MOV             R2, R5; unsigned __int64
FC56C:  BLX             j__ZNSt6__ndk16__itoa8__u64toaEyPc; std::__itoa::__u64toa(ulong long,char *)
FC570:  STR.W           R0, [R10]
FC574:  MOVS            R0, #0
FC576:  STR.W           R0, [R10,#4]
FC57A:  POP.W           {R8-R10}
FC57E:  POP             {R4-R7,PC}
