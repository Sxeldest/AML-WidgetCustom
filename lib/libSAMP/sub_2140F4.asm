; =========================================================
; Game Engine Function: sub_2140F4
; Address            : 0x2140F4 - 0x214134
; =========================================================

2140F4:  PUSH            {R4-R7,LR}
2140F6:  ADD             R7, SP, #0xC
2140F8:  PUSH.W          {R8,R9,R11}
2140FC:  SUBS            R4, R2, R1
2140FE:  MOV             R8, R3
214100:  MOV             R6, R1
214102:  MOV             R9, R0
214104:  CMP             R4, #9
214106:  BGT             loc_21411C
214108:  MOV             R0, R8
21410A:  MOV             R5, R2
21410C:  BL              sub_214134
214110:  CMP             R0, R4
214112:  BLE             loc_21411C
214114:  MOVS            R0, #0x4B ; 'K'
214116:  STR.W           R5, [R9]
21411A:  B               loc_21412A
21411C:  MOV             R0, R8; this
21411E:  MOV             R1, R6; unsigned int
214120:  BLX             j__ZNSt6__ndk16__itoa8__u32toaEjPc; std::__itoa::__u32toa(uint,char *)
214124:  STR.W           R0, [R9]
214128:  MOVS            R0, #0
21412A:  STR.W           R0, [R9,#4]
21412E:  POP.W           {R8,R9,R11}
214132:  POP             {R4-R7,PC}
