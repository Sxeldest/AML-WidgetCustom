; =========================================================
; Game Engine Function: sub_128A48
; Address            : 0x128A48 - 0x128A6A
; =========================================================

128A48:  PUSH            {R4,R6,R7,LR}
128A4A:  ADD             R7, SP, #8
128A4C:  MOV             R4, R0
128A4E:  MOVS            R0, #0x10; unsigned int
128A50:  BLX             j__Znwj; operator new(uint)
128A54:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFPhS3_EEC1I15StreamingLimitsEEMT_FS3_S3_EPS8_EUlS3_E_NS_9allocatorISC_EES4_EE - 0x128A5E); `vtable for'std::__function::__func<function_helper<uchar * ()(uchar *)>::function_helper<StreamingLimits>(uchar * (StreamingLimits::*)(uchar *),StreamingLimits*)::{lambda(uchar *)#1},std::allocator<function_helper<uchar * ()(uchar *)>::function_helper<StreamingLimits>(uchar * (StreamingLimits::*)(uchar *),StreamingLimits*)::{lambda(uchar *)#1}>,uchar * ()(uchar *)> ...
128A56:  VLDR            D16, [R4,#4]
128A5A:  ADD             R1, PC; `vtable for'std::__function::__func<function_helper<uchar * ()(uchar *)>::function_helper<StreamingLimits>(uchar * (StreamingLimits::*)(uchar *),StreamingLimits*)::{lambda(uchar *)#1},std::allocator<function_helper<uchar * ()(uchar *)>::function_helper<StreamingLimits>(uchar * (StreamingLimits::*)(uchar *),StreamingLimits*)::{lambda(uchar *)#1}>,uchar * ()(uchar *)>
128A5C:  LDR             R2, [R4,#0xC]
128A5E:  ADDS            R1, #8
128A60:  STR             R1, [R0]
128A62:  STR             R2, [R0,#0xC]
128A64:  VSTR            D16, [R0,#4]
128A68:  POP             {R4,R6,R7,PC}
