; =========================================================
; Game Engine Function: sub_FC49C
; Address            : 0xFC49C - 0xFC4DC
; =========================================================

FC49C:  PUSH            {R4-R7,LR}
FC49E:  ADD             R7, SP, #0xC
FC4A0:  PUSH.W          {R8,R9,R11}
FC4A4:  SUBS            R4, R2, R1
FC4A6:  MOV             R8, R3
FC4A8:  MOV             R6, R1
FC4AA:  MOV             R9, R0
FC4AC:  CMP             R4, #9
FC4AE:  BGT             loc_FC4C4
FC4B0:  MOV             R0, R8
FC4B2:  MOV             R5, R2
FC4B4:  BL              sub_FC4DC
FC4B8:  CMP             R0, R4
FC4BA:  BLE             loc_FC4C4
FC4BC:  MOVS            R0, #0x4B ; 'K'
FC4BE:  STR.W           R5, [R9]
FC4C2:  B               loc_FC4D2
FC4C4:  MOV             R0, R8; this
FC4C6:  MOV             R1, R6; unsigned int
FC4C8:  BLX             j__ZNSt6__ndk16__itoa8__u32toaEjPc; std::__itoa::__u32toa(uint,char *)
FC4CC:  STR.W           R0, [R9]
FC4D0:  MOVS            R0, #0
FC4D2:  STR.W           R0, [R9,#4]
FC4D6:  POP.W           {R8,R9,R11}
FC4DA:  POP             {R4-R7,PC}
