; =========================================================
; Game Engine Function: sub_128A70
; Address            : 0x128A70 - 0x128A86
; =========================================================

128A70:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFPhS3_EEC1I15StreamingLimitsEEMT_FS3_S3_EPS8_EUlS3_E_NS_9allocatorISC_EES4_EE - 0x128A76); `vtable for'std::__function::__func<function_helper<uchar * ()(uchar *)>::function_helper<StreamingLimits>(uchar * (StreamingLimits::*)(uchar *),StreamingLimits*)::{lambda(uchar *)#1},std::allocator<function_helper<uchar * ()(uchar *)>::function_helper<StreamingLimits>(uchar * (StreamingLimits::*)(uchar *),StreamingLimits*)::{lambda(uchar *)#1}>,uchar * ()(uchar *)> ...
128A72:  ADD             R2, PC; `vtable for'std::__function::__func<function_helper<uchar * ()(uchar *)>::function_helper<StreamingLimits>(uchar * (StreamingLimits::*)(uchar *),StreamingLimits*)::{lambda(uchar *)#1},std::allocator<function_helper<uchar * ()(uchar *)>::function_helper<StreamingLimits>(uchar * (StreamingLimits::*)(uchar *),StreamingLimits*)::{lambda(uchar *)#1}>,uchar * ()(uchar *)>
128A74:  ADDS            R2, #8
128A76:  STR             R2, [R1]
128A78:  VLDR            D16, [R0,#4]
128A7C:  LDR             R0, [R0,#0xC]
128A7E:  STR             R0, [R1,#0xC]
128A80:  VSTR            D16, [R1,#4]
128A84:  BX              LR
