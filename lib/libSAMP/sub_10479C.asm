; =========================================================
; Game Engine Function: sub_10479C
; Address            : 0x10479C - 0x104810
; =========================================================

10479C:  PUSH            {R4-R7,LR}
10479E:  ADD             R7, SP, #0xC
1047A0:  PUSH.W          {R11}
1047A4:  SUB             SP, SP, #0x20
1047A6:  MOV             R4, R0
1047A8:  LDR             R0, [R0,#0x5C]
1047AA:  STRB.W          R2, [R7,#var_12]
1047AE:  STRB.W          R1, [R7,#var_11]
1047B2:  CBZ             R0, loc_104808
1047B4:  LDR             R0, [R4,#8]
1047B6:  BL              sub_1082F4
1047BA:  CBZ             R0, loc_104808
1047BC:  LDR             R0, =(off_234A74 - 0x1047CC)
1047BE:  SUB.W           R2, R7, #-var_11
1047C2:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN10CPlayerPed14SetArmedWeaponEhbE3$_3NS_9allocatorIS3_EEFvvEEE - 0x1047D4); `vtable for'std::__function::__func<CPlayerPed::SetArmedWeapon(uchar,bool)::$_3,std::allocator<CPlayerPed::SetArmedWeapon(uchar,bool)::$_3>,void ()(void)> ...
1047C4:  SUB.W           R3, R7, #-var_12
1047C8:  ADD             R0, PC; off_234A74
1047CA:  STR             R2, [SP,#0x30+var_24]
1047CC:  STRD.W          R4, R3, [SP,#0x30+var_2C]
1047D0:  ADD             R1, PC; `vtable for'std::__function::__func<CPlayerPed::SetArmedWeapon(uchar,bool)::$_3,std::allocator<CPlayerPed::SetArmedWeapon(uchar,bool)::$_3>,void ()(void)>
1047D2:  LDR             R5, [R0]; dword_2402E4
1047D4:  LDRB.W          R0, [R4,#0x60]
1047D8:  MOV             R4, SP
1047DA:  STR             R4, [SP,#0x30+var_20]
1047DC:  LDR             R2, [R5]
1047DE:  LDR             R6, [R2]
1047E0:  STR             R0, [R2]
1047E2:  ADD.W           R0, R1, #8
1047E6:  STR             R0, [SP,#0x30+var_30]
1047E8:  MOV             R0, R4
1047EA:  BL              sub_107020
1047EE:  LDR             R1, [R5]
1047F0:  LDR             R0, [SP,#0x30+var_20]
1047F2:  CMP             R4, R0
1047F4:  STR             R6, [R1]
1047F6:  BEQ             loc_1047FE
1047F8:  CBZ             R0, loc_104808
1047FA:  MOVS            R1, #5
1047FC:  B               loc_104800
1047FE:  MOVS            R1, #4
104800:  LDR             R2, [R0]
104802:  LDR.W           R1, [R2,R1,LSL#2]
104806:  BLX             R1
104808:  ADD             SP, SP, #0x20 ; ' '
10480A:  POP.W           {R11}
10480E:  POP             {R4-R7,PC}
