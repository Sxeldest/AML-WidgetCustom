; =========================================================
; Game Engine Function: sub_1289F8
; Address            : 0x1289F8 - 0x128A3C
; =========================================================

1289F8:  PUSH            {R4,R5,R7,LR}
1289FA:  ADD             R7, SP, #8
1289FC:  SUB             SP, SP, #0x18
1289FE:  MOV             R4, R0
128A00:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFPhS3_EEC1I15StreamingLimitsEEMT_FS3_S3_EPS8_EUlS3_E_NS_9allocatorISC_EES4_EE - 0x128A0C); `vtable for'std::__function::__func<function_helper<uchar * ()(uchar *)>::function_helper<StreamingLimits>(uchar * (StreamingLimits::*)(uchar *),StreamingLimits*)::{lambda(uchar *)#1},std::allocator<function_helper<uchar * ()(uchar *)>::function_helper<StreamingLimits>(uchar * (StreamingLimits::*)(uchar *),StreamingLimits*)::{lambda(uchar *)#1}>,uchar * ()(uchar *)> ...
128A02:  LDRD.W          R2, R3, [R1]
128A06:  MOV             R5, SP
128A08:  ADD             R0, PC; `vtable for'std::__function::__func<function_helper<uchar * ()(uchar *)>::function_helper<StreamingLimits>(uchar * (StreamingLimits::*)(uchar *),StreamingLimits*)::{lambda(uchar *)#1},std::allocator<function_helper<uchar * ()(uchar *)>::function_helper<StreamingLimits>(uchar * (StreamingLimits::*)(uchar *),StreamingLimits*)::{lambda(uchar *)#1}>,uchar * ()(uchar *)>
128A0A:  LDR             R1, [R1,#8]
128A0C:  ADDS            R0, #8
128A0E:  STRD.W          R1, R5, [SP,#0x20+var_14]
128A12:  STR             R0, [SP,#0x20+var_20]
128A14:  MOV             R0, R5
128A16:  MOV             R1, R4
128A18:  STRD.W          R2, R3, [SP,#0x20+var_1C]
128A1C:  BL              sub_128AD0
128A20:  LDR             R0, [SP,#0x20+var_10]
128A22:  CMP             R5, R0
128A24:  BEQ             loc_128A2C
128A26:  CBZ             R0, loc_128A36
128A28:  MOVS            R1, #5
128A2A:  B               loc_128A2E
128A2C:  MOVS            R1, #4
128A2E:  LDR             R2, [R0]
128A30:  LDR.W           R1, [R2,R1,LSL#2]
128A34:  BLX             R1
128A36:  MOV             R0, R4
128A38:  ADD             SP, SP, #0x18
128A3A:  POP             {R4,R5,R7,PC}
