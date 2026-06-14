; =========================================================
; Game Engine Function: sub_11F274
; Address            : 0x11F274 - 0x11F2B8
; =========================================================

11F274:  PUSH            {R4,R5,R7,LR}
11F276:  ADD             R7, SP, #8
11F278:  SUB             SP, SP, #0x18
11F27A:  MOV             R4, R0
11F27C:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFvPfEEC1I14FixMatrixStackEEMT_FvS3_EPS8_EUlS3_E_NS_9allocatorISC_EES4_EE - 0x11F288); `vtable for'std::__function::__func<function_helper<void ()(float *)>::function_helper<FixMatrixStack>(void (FixMatrixStack::*)(float *),FixMatrixStack*)::{lambda(float *)#1},std::allocator<function_helper<void ()(float *)>::function_helper<FixMatrixStack>(void (FixMatrixStack::*)(float *),FixMatrixStack*)::{lambda(float *)#1}>,void ()(float *)> ...
11F27E:  LDRD.W          R2, R3, [R1]
11F282:  MOV             R5, SP
11F284:  ADD             R0, PC; `vtable for'std::__function::__func<function_helper<void ()(float *)>::function_helper<FixMatrixStack>(void (FixMatrixStack::*)(float *),FixMatrixStack*)::{lambda(float *)#1},std::allocator<function_helper<void ()(float *)>::function_helper<FixMatrixStack>(void (FixMatrixStack::*)(float *),FixMatrixStack*)::{lambda(float *)#1}>,void ()(float *)>
11F286:  LDR             R1, [R1,#8]
11F288:  ADDS            R0, #8
11F28A:  STRD.W          R1, R5, [SP,#0x20+var_14]
11F28E:  STR             R0, [SP,#0x20+var_20]
11F290:  MOV             R0, R5
11F292:  MOV             R1, R4
11F294:  STRD.W          R2, R3, [SP,#0x20+var_1C]
11F298:  BL              sub_11F34C
11F29C:  LDR             R0, [SP,#0x20+var_10]
11F29E:  CMP             R5, R0
11F2A0:  BEQ             loc_11F2A8
11F2A2:  CBZ             R0, loc_11F2B2
11F2A4:  MOVS            R1, #5
11F2A6:  B               loc_11F2AA
11F2A8:  MOVS            R1, #4
11F2AA:  LDR             R2, [R0]
11F2AC:  LDR.W           R1, [R2,R1,LSL#2]
11F2B0:  BLX             R1
11F2B2:  MOV             R0, R4
11F2B4:  ADD             SP, SP, #0x18
11F2B6:  POP             {R4,R5,R7,PC}
