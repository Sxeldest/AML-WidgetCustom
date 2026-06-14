; =========================================================
; Game Engine Function: sub_1048BC
; Address            : 0x1048BC - 0x104926
; =========================================================

1048BC:  PUSH            {R4-R7,LR}
1048BE:  ADD             R7, SP, #0xC
1048C0:  PUSH.W          {R8}
1048C4:  SUB             SP, SP, #0x18
1048C6:  MOV             R1, R0
1048C8:  LDR             R0, [R0,#0x5C]
1048CA:  CBZ             R0, loc_10491E
1048CC:  LDR             R2, =(off_234A74 - 0x1048D2)
1048CE:  ADD             R2, PC; off_234A74
1048D0:  LDR             R4, [R2]; dword_2402E4
1048D2:  LDR             R2, [R4]
1048D4:  LDR             R3, =(off_23494C - 0x1048DE)
1048D6:  LDRB.W          R5, [R1,#0x60]
1048DA:  ADD             R3, PC; off_23494C
1048DC:  LDR.W           R8, [R2]
1048E0:  LDR             R6, =(_ZTVNSt6__ndk110__function6__funcIZN10CPlayerPed12ClearWeaponsEvE3$_1NS_9allocatorIS3_EEFvvEEE - 0x1048E8); `vtable for'std::__function::__func<CPlayerPed::ClearWeapons(void)::$_1,std::allocator<CPlayerPed::ClearWeapons(void)::$_1>,void ()(void)> ...
1048E2:  LDR             R3, [R3]; dword_23DF24
1048E4:  ADD             R6, PC; `vtable for'std::__function::__func<CPlayerPed::ClearWeapons(void)::$_1,std::allocator<CPlayerPed::ClearWeapons(void)::$_1>,void ()(void)>
1048E6:  STR             R5, [R2]
1048E8:  STR             R1, [SP,#0x28+var_24]
1048EA:  ADD.W           R1, R6, #8
1048EE:  STR             R1, [SP,#0x28+var_28]
1048F0:  MOVW            R1, #0xF7C7
1048F4:  LDR             R2, [R3]
1048F6:  MOVT            R1, #0x49 ; 'I'
1048FA:  MOV             R5, SP
1048FC:  ADD             R1, R2
1048FE:  STR             R5, [SP,#0x28+var_18]
104900:  BLX             R1
104902:  LDR             R1, [R4]
104904:  LDR             R0, [SP,#0x28+var_18]
104906:  CMP             R5, R0
104908:  STR.W           R8, [R1]
10490C:  BEQ             loc_104914
10490E:  CBZ             R0, loc_10491E
104910:  MOVS            R1, #5
104912:  B               loc_104916
104914:  MOVS            R1, #4
104916:  LDR             R2, [R0]
104918:  LDR.W           R1, [R2,R1,LSL#2]
10491C:  BLX             R1
10491E:  ADD             SP, SP, #0x18
104920:  POP.W           {R8}
104924:  POP             {R4-R7,PC}
