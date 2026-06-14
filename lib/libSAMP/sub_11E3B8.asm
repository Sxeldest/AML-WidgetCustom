; =========================================================
; Game Engine Function: sub_11E3B8
; Address            : 0x11E3B8 - 0x11E3FC
; =========================================================

11E3B8:  PUSH            {R4,R5,R7,LR}
11E3BA:  ADD             R7, SP, #8
11E3BC:  SUB             SP, SP, #0x18
11E3BE:  MOV             R4, R0
11E3C0:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFvP9_PED_TYPE7_VECTORfEEC1IN5fixes5DeathEEEMT_FvS4_S5_fEPSB_EUlS4_S5_fE_NS_9allocatorISF_EES6_EE - 0x11E3CC); `vtable for'std::__function::__func<function_helper<void ()(_PED_TYPE *,_VECTOR,float)>::function_helper<fixes::Death>(void (fixes::Death::*)(_PED_TYPE *,_VECTOR,float),fixes::Death*)::{lambda(_PED_TYPE *,_VECTOR,float)#1},std::allocator<function_helper<void ()(_PED_TYPE *,_VECTOR,float)>::function_helper<fixes::Death>(void (fixes::Death::*)(_PED_TYPE *,_VECTOR,float),fixes::Death*)::{lambda(_PED_TYPE *,_VECTOR,float)#1}>,void ()(_PED_TYPE *,_VECTOR,float)> ...
11E3C2:  LDRD.W          R2, R3, [R1]
11E3C6:  MOV             R5, SP
11E3C8:  ADD             R0, PC; `vtable for'std::__function::__func<function_helper<void ()(_PED_TYPE *,_VECTOR,float)>::function_helper<fixes::Death>(void (fixes::Death::*)(_PED_TYPE *,_VECTOR,float),fixes::Death*)::{lambda(_PED_TYPE *,_VECTOR,float)#1},std::allocator<function_helper<void ()(_PED_TYPE *,_VECTOR,float)>::function_helper<fixes::Death>(void (fixes::Death::*)(_PED_TYPE *,_VECTOR,float),fixes::Death*)::{lambda(_PED_TYPE *,_VECTOR,float)#1}>,void ()(_PED_TYPE *,_VECTOR,float)>
11E3CA:  LDR             R1, [R1,#8]
11E3CC:  ADDS            R0, #8
11E3CE:  STRD.W          R1, R5, [SP,#0x20+var_14]
11E3D2:  STR             R0, [SP,#0x20+var_20]
11E3D4:  MOV             R0, R5
11E3D6:  MOV             R1, R4
11E3D8:  STRD.W          R2, R3, [SP,#0x20+var_1C]
11E3DC:  BL              sub_11E4BA
11E3E0:  LDR             R0, [SP,#0x20+var_10]
11E3E2:  CMP             R5, R0
11E3E4:  BEQ             loc_11E3EC
11E3E6:  CBZ             R0, loc_11E3F6
11E3E8:  MOVS            R1, #5
11E3EA:  B               loc_11E3EE
11E3EC:  MOVS            R1, #4
11E3EE:  LDR             R2, [R0]
11E3F0:  LDR.W           R1, [R2,R1,LSL#2]
11E3F4:  BLX             R1
11E3F6:  MOV             R0, R4
11E3F8:  ADD             SP, SP, #0x18
11E3FA:  POP             {R4,R5,R7,PC}
