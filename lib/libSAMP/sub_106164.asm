; =========================================================
; Game Engine Function: sub_106164
; Address            : 0x106164 - 0x1061D4
; =========================================================

106164:  PUSH            {R4-R7,LR}
106166:  ADD             R7, SP, #0xC
106168:  PUSH.W          {R8-R10}
10616C:  SUB             SP, SP, #0x18
10616E:  LDR             R1, [R0,#0x5C]
106170:  CBZ             R1, loc_1061CC
106172:  LDR             R2, =(off_234A74 - 0x10617C)
106174:  MOV             R8, SP
106176:  LDR             R3, [R1,#0x14]
106178:  ADD             R2, PC; off_234A74
10617A:  LDR             R5, =(_ZTVNSt6__ndk110__function6__funcIZN10CPlayerPed12StartJetpackEvE3$_4NS_9allocatorIS3_EEFvvEEE - 0x10618A); `vtable for'std::__function::__func<CPlayerPed::StartJetpack(void)::$_4,std::allocator<CPlayerPed::StartJetpack(void)::$_4>,void ()(void)> ...
10617C:  ADDS            R3, #0x30 ; '0'
10617E:  LDR.W           R12, [R0]
106182:  LDR.W           R10, [R2]; dword_2402E4
106186:  ADD             R5, PC; `vtable for'std::__function::__func<CPlayerPed::StartJetpack(void)::$_4,std::allocator<CPlayerPed::StartJetpack(void)::$_4>,void ()(void)>
106188:  LDRB.W          R4, [R0,#0x60]
10618C:  LDM             R3, {R1-R3}
10618E:  LDR.W           R6, [R10]
106192:  STR.W           R8, [SP,#0x30+var_20]
106196:  STR             R0, [SP,#0x30+var_2C]
106198:  LDR.W           R9, [R6]
10619C:  STR             R4, [R6]
10619E:  ADD.W           R6, R5, #8
1061A2:  STR             R6, [SP,#0x30+var_30]
1061A4:  LDR.W           R6, [R12,#0x10]
1061A8:  BLX             R6
1061AA:  BL              sub_F88F8
1061AE:  LDR.W           R1, [R10]
1061B2:  LDR             R0, [SP,#0x30+var_20]
1061B4:  CMP             R8, R0
1061B6:  STR.W           R9, [R1]
1061BA:  BEQ             loc_1061C2
1061BC:  CBZ             R0, loc_1061CC
1061BE:  MOVS            R1, #5
1061C0:  B               loc_1061C4
1061C2:  MOVS            R1, #4
1061C4:  LDR             R2, [R0]
1061C6:  LDR.W           R1, [R2,R1,LSL#2]
1061CA:  BLX             R1
1061CC:  ADD             SP, SP, #0x18
1061CE:  POP.W           {R8-R10}
1061D2:  POP             {R4-R7,PC}
