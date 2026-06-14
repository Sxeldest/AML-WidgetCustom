; =========================================================
; Game Engine Function: sub_FD368
; Address            : 0xFD368 - 0xFD3F4
; =========================================================

FD368:  PUSH            {R4-R7,LR}
FD36A:  ADD             R7, SP, #0xC
FD36C:  PUSH.W          {R11}
FD370:  SUB             SP, SP, #0x28
FD372:  MOV             R4, R1
FD374:  MOV             R5, R0
FD376:  STRD.W          R1, R0, [SP,#0x38+var_18]
FD37A:  BL              sub_1082E4
FD37E:  CMP             R0, R4
FD380:  BEQ             loc_FD3CA
FD382:  MOV             R0, R4
FD384:  BL              sub_108D44
FD388:  LDR             R1, =(off_234A74 - 0xFD394)
FD38A:  ADD             R2, SP, #0x38+var_18
FD38C:  ADD             R3, SP, #0x38+var_14
FD38E:  MOV             R4, SP
FD390:  ADD             R1, PC; off_234A74
FD392:  LDR             R5, [R1]; dword_2402E4
FD394:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZ37CTaskSimpleUseGun_SetPedPosition_hookjP9_PED_TYPEE3$_2NS_9allocatorIS4_EEFvvEEE - 0xFD39E); `vtable for'std::__function::__func<CTaskSimpleUseGun_SetPedPosition_hook(uint,_PED_TYPE *)::$_2,std::allocator<CTaskSimpleUseGun_SetPedPosition_hook(uint,_PED_TYPE *)::$_2>,void ()(void)> ...
FD396:  STR             R2, [SP,#0x38+var_2C]
FD398:  LDR             R2, [R5]
FD39A:  ADD             R1, PC; `vtable for'std::__function::__func<CTaskSimpleUseGun_SetPedPosition_hook(uint,_PED_TYPE *)::$_2,std::allocator<CTaskSimpleUseGun_SetPedPosition_hook(uint,_PED_TYPE *)::$_2>,void ()(void)>
FD39C:  STR             R3, [SP,#0x38+var_30]
FD39E:  SUB.W           R3, R7, #-var_19
FD3A2:  STR             R3, [SP,#0x38+var_34]
FD3A4:  LDR             R6, [R2]
FD3A6:  STR             R0, [R2]
FD3A8:  STRB.W          R0, [R7,#var_19]
FD3AC:  ADD.W           R0, R1, #8
FD3B0:  STR             R0, [SP,#0x38+var_38]
FD3B2:  STR             R4, [SP,#0x38+var_28]
FD3B4:  MOV             R0, R4
FD3B6:  BL              sub_100EE8
FD3BA:  LDR             R0, [SP,#0x38+var_28]
FD3BC:  LDR             R1, [R5]
FD3BE:  CMP             R4, R0
FD3C0:  STR             R6, [R1]
FD3C2:  BEQ             loc_FD3E0
FD3C4:  CBZ             R0, loc_FD3EA
FD3C6:  MOVS            R1, #5
FD3C8:  B               loc_FD3E2
FD3CA:  LDR             R0, =(off_247510 - 0xFD3D2)
FD3CC:  MOV             R1, R4
FD3CE:  ADD             R0, PC; off_247510
FD3D0:  LDR             R2, [R0]
FD3D2:  MOV             R0, R5
FD3D4:  ADD             SP, SP, #0x28 ; '('
FD3D6:  POP.W           {R11}
FD3DA:  POP.W           {R4-R7,LR}
FD3DE:  BX              R2
FD3E0:  MOVS            R1, #4
FD3E2:  LDR             R2, [R0]
FD3E4:  LDR.W           R1, [R2,R1,LSL#2]
FD3E8:  BLX             R1
FD3EA:  MOVS            R0, #0
FD3EC:  ADD             SP, SP, #0x28 ; '('
FD3EE:  POP.W           {R11}
FD3F2:  POP             {R4-R7,PC}
