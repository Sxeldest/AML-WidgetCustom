; =========================================================
; Game Engine Function: sub_111374
; Address            : 0x111374 - 0x1113B8
; =========================================================

111374:  PUSH            {R4,R5,R7,LR}
111376:  ADD             R7, SP, #8
111378:  SUB             SP, SP, #0x18
11137A:  MOV             R4, R0
11137C:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFvP9CPhysicalEEC1I8airbrakeEEMT_FvS4_EPS9_EUlS4_E_NS_9allocatorISD_EES5_EE - 0x111388); `vtable for'std::__function::__func<function_helper<void ()(CPhysical *)>::function_helper<airbrake>(void (airbrake::*)(CPhysical *),airbrake*)::{lambda(CPhysical *)#1},std::allocator<function_helper<void ()(CPhysical *)>::function_helper<airbrake>(void (airbrake::*)(CPhysical *),airbrake*)::{lambda(CPhysical *)#1}>,void ()(CPhysical *)> ...
11137E:  LDRD.W          R2, R3, [R1]
111382:  MOV             R5, SP
111384:  ADD             R0, PC; `vtable for'std::__function::__func<function_helper<void ()(CPhysical *)>::function_helper<airbrake>(void (airbrake::*)(CPhysical *),airbrake*)::{lambda(CPhysical *)#1},std::allocator<function_helper<void ()(CPhysical *)>::function_helper<airbrake>(void (airbrake::*)(CPhysical *),airbrake*)::{lambda(CPhysical *)#1}>,void ()(CPhysical *)>
111386:  LDR             R1, [R1,#8]
111388:  ADDS            R0, #8
11138A:  STRD.W          R1, R5, [SP,#0x20+var_14]
11138E:  STR             R0, [SP,#0x20+var_20]
111390:  MOV             R0, R5
111392:  MOV             R1, R4
111394:  STRD.W          R2, R3, [SP,#0x20+var_1C]
111398:  BL              sub_11144C
11139C:  LDR             R0, [SP,#0x20+var_10]
11139E:  CMP             R5, R0
1113A0:  BEQ             loc_1113A8
1113A2:  CBZ             R0, loc_1113B2
1113A4:  MOVS            R1, #5
1113A6:  B               loc_1113AA
1113A8:  MOVS            R1, #4
1113AA:  LDR             R2, [R0]
1113AC:  LDR.W           R1, [R2,R1,LSL#2]
1113B0:  BLX             R1
1113B2:  MOV             R0, R4
1113B4:  ADD             SP, SP, #0x18
1113B6:  POP             {R4,R5,R7,PC}
