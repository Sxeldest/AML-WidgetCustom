; =========================================================
; Game Engine Function: sub_F2F9C
; Address            : 0xF2F9C - 0xF2FBE
; =========================================================

F2F9C:  PUSH            {R4,R6,R7,LR}
F2F9E:  ADD             R7, SP, #8
F2FA0:  MOV             R4, R0
F2FA2:  MOVS            R0, #0x10; unsigned int
F2FA4:  BLX             j__Znwj; operator new(uint)
F2FA8:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFbN17ApplicationEvents11OSEventTypeEPvEEC1IS3_EEMT_FbS4_S5_EPS9_EUlS4_S5_E_NS_9allocatorISD_EES6_EE - 0xF2FB2); `vtable for'std::__function::__func<function_helper<bool ()(ApplicationEvents::OSEventType,void *)>::function_helper<ApplicationEvents>(bool (ApplicationEvents::*)(ApplicationEvents::OSEventType,void *),ApplicationEvents*)::{lambda(ApplicationEvents::OSEventType,void *)#1},std::allocator<function_helper<bool ()(ApplicationEvents::OSEventType,void *)>::function_helper<ApplicationEvents>(bool (ApplicationEvents::*)(ApplicationEvents::OSEventType,void *),ApplicationEvents*)::{lambda(ApplicationEvents::OSEventType,void *)#1}>,bool ()(ApplicationEvents::OSEventType,void *)> ...
F2FAA:  VLDR            D16, [R4,#4]
F2FAE:  ADD             R1, PC; `vtable for'std::__function::__func<function_helper<bool ()(ApplicationEvents::OSEventType,void *)>::function_helper<ApplicationEvents>(bool (ApplicationEvents::*)(ApplicationEvents::OSEventType,void *),ApplicationEvents*)::{lambda(ApplicationEvents::OSEventType,void *)#1},std::allocator<function_helper<bool ()(ApplicationEvents::OSEventType,void *)>::function_helper<ApplicationEvents>(bool (ApplicationEvents::*)(ApplicationEvents::OSEventType,void *),ApplicationEvents*)::{lambda(ApplicationEvents::OSEventType,void *)#1}>,bool ()(ApplicationEvents::OSEventType,void *)>
F2FB0:  LDR             R2, [R4,#0xC]
F2FB2:  ADDS            R1, #8
F2FB4:  STR             R1, [R0]
F2FB6:  STR             R2, [R0,#0xC]
F2FB8:  VSTR            D16, [R0,#4]
F2FBC:  POP             {R4,R6,R7,PC}
