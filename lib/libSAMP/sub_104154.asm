; =========================================================
; Game Engine Function: sub_104154
; Address            : 0x104154 - 0x1041D2
; =========================================================

104154:  PUSH            {R4-R7,LR}
104156:  ADD             R7, SP, #0xC
104158:  PUSH.W          {R8}
10415C:  SUB             SP, SP, #0x58
10415E:  MOV             R4, R0
104160:  LDR             R0, [R0,#8]
104162:  CBZ             R0, loc_1041CA
104164:  LDR             R0, [R4,#0x5C]
104166:  CBZ             R0, loc_1041CA
104168:  ADD             R1, SP, #0x68+var_50
10416A:  MOV             R0, R4
10416C:  BL              sub_F8910
104170:  LDR             R0, [R4]
104172:  ADD             R3, SP, #0x68+var_20
104174:  LDM             R3, {R1-R3}
104176:  LDR             R6, [R0,#0x10]
104178:  MOV             R0, R4
10417A:  BLX             R6
10417C:  LDR             R0, =(off_234A74 - 0x104186)
10417E:  MOVS            R2, #0
104180:  MOV             R8, SP
104182:  ADD             R0, PC; off_234A74
104184:  LDR             R5, [R0]; dword_2402E4
104186:  LDR             R0, [R4,#0x5C]
104188:  LDR             R1, [R5]
10418A:  LDR             R6, [R1]
10418C:  STR.W           R2, [R0,#0x544]
104190:  LDRB.W          R2, [R4,#0x60]
104194:  LDR             R3, =(_ZTVNSt6__ndk110__function6__funcIZN10CPlayerPed7SetDeadEvE3$_0NS_9allocatorIS3_EEFvvEEE - 0x10419C); `vtable for'std::__function::__func<CPlayerPed::SetDead(void)::$_0,std::allocator<CPlayerPed::SetDead(void)::$_0>,void ()(void)> ...
104196:  LDR             R0, =(unk_B3984 - 0x1041A8)
104198:  ADD             R3, PC; `vtable for'std::__function::__func<CPlayerPed::SetDead(void)::$_0,std::allocator<CPlayerPed::SetDead(void)::$_0>,void ()(void)>
10419A:  STR             R2, [R1]
10419C:  ADD.W           R1, R3, #8
1041A0:  STR             R1, [SP,#0x68+var_68]
1041A2:  LDR             R1, [R4,#8]
1041A4:  ADD             R0, PC; unk_B3984
1041A6:  STR.W           R8, [SP,#0x68+var_58]
1041AA:  STR             R4, [SP,#0x68+var_64]
1041AC:  BL              sub_107188
1041B0:  LDR             R0, [SP,#0x68+var_58]
1041B2:  LDR             R1, [R5]
1041B4:  CMP             R8, R0
1041B6:  STR             R6, [R1]
1041B8:  BEQ             loc_1041C0
1041BA:  CBZ             R0, loc_1041CA
1041BC:  MOVS            R1, #5
1041BE:  B               loc_1041C2
1041C0:  MOVS            R1, #4
1041C2:  LDR             R2, [R0]
1041C4:  LDR.W           R1, [R2,R1,LSL#2]
1041C8:  BLX             R1
1041CA:  ADD             SP, SP, #0x58 ; 'X'
1041CC:  POP.W           {R8}
1041D0:  POP             {R4-R7,PC}
