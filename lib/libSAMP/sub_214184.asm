; =========================================================
; Game Engine Function: sub_214184
; Address            : 0x214184 - 0x2141C4
; =========================================================

214184:  PUSH            {R4-R7,LR}
214186:  ADD             R7, SP, #0xC
214188:  PUSH.W          {R8,R9,R11}
21418C:  SUBS            R4, R2, R1
21418E:  MOV             R8, R3
214190:  MOV             R6, R1
214192:  MOV             R9, R0
214194:  CMP             R4, #9
214196:  BGT             loc_2141AC
214198:  MOV             R0, R8
21419A:  MOV             R5, R2
21419C:  BL              sub_2141C4
2141A0:  CMP             R0, R4
2141A2:  BLE             loc_2141AC
2141A4:  MOVS            R0, #0x4B ; 'K'
2141A6:  STR.W           R5, [R9]
2141AA:  B               loc_2141BA
2141AC:  MOV             R0, R8; this
2141AE:  MOV             R1, R6; unsigned int
2141B0:  BLX             j__ZNSt6__ndk16__itoa8__u32toaEjPc; std::__itoa::__u32toa(uint,char *)
2141B4:  STR.W           R0, [R9]
2141B8:  MOVS            R0, #0
2141BA:  STR.W           R0, [R9,#4]
2141BE:  POP.W           {R8,R9,R11}
2141C2:  POP             {R4-R7,PC}
