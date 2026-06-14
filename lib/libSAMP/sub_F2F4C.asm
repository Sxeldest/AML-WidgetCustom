; =========================================================
; Game Engine Function: sub_F2F4C
; Address            : 0xF2F4C - 0xF2F90
; =========================================================

F2F4C:  PUSH            {R4,R5,R7,LR}
F2F4E:  ADD             R7, SP, #8
F2F50:  SUB             SP, SP, #0x18
F2F52:  MOV             R4, R0
F2F54:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFbN17ApplicationEvents11OSEventTypeEPvEEC1IS3_EEMT_FbS4_S5_EPS9_EUlS4_S5_E_NS_9allocatorISD_EES6_EE - 0xF2F60); `vtable for'std::__function::__func<function_helper<bool ()(ApplicationEvents::OSEventType,void *)>::function_helper<ApplicationEvents>(bool (ApplicationEvents::*)(ApplicationEvents::OSEventType,void *),ApplicationEvents*)::{lambda(ApplicationEvents::OSEventType,void *)#1},std::allocator<function_helper<bool ()(ApplicationEvents::OSEventType,void *)>::function_helper<ApplicationEvents>(bool (ApplicationEvents::*)(ApplicationEvents::OSEventType,void *),ApplicationEvents*)::{lambda(ApplicationEvents::OSEventType,void *)#1}>,bool ()(ApplicationEvents::OSEventType,void *)> ...
F2F56:  LDRD.W          R2, R3, [R1]
F2F5A:  MOV             R5, SP
F2F5C:  ADD             R0, PC; `vtable for'std::__function::__func<function_helper<bool ()(ApplicationEvents::OSEventType,void *)>::function_helper<ApplicationEvents>(bool (ApplicationEvents::*)(ApplicationEvents::OSEventType,void *),ApplicationEvents*)::{lambda(ApplicationEvents::OSEventType,void *)#1},std::allocator<function_helper<bool ()(ApplicationEvents::OSEventType,void *)>::function_helper<ApplicationEvents>(bool (ApplicationEvents::*)(ApplicationEvents::OSEventType,void *),ApplicationEvents*)::{lambda(ApplicationEvents::OSEventType,void *)#1}>,bool ()(ApplicationEvents::OSEventType,void *)>
F2F5E:  LDR             R1, [R1,#8]
F2F60:  ADDS            R0, #8
F2F62:  STRD.W          R1, R5, [SP,#0x20+var_14]
F2F66:  STR             R0, [SP,#0x20+var_20]
F2F68:  MOV             R0, R5
F2F6A:  MOV             R1, R4
F2F6C:  STRD.W          R2, R3, [SP,#0x20+var_1C]
F2F70:  BL              sub_F302C
F2F74:  LDR             R0, [SP,#0x20+var_10]
F2F76:  CMP             R5, R0
F2F78:  BEQ             loc_F2F80
F2F7A:  CBZ             R0, loc_F2F8A
F2F7C:  MOVS            R1, #5
F2F7E:  B               loc_F2F82
F2F80:  MOVS            R1, #4
F2F82:  LDR             R2, [R0]
F2F84:  LDR.W           R1, [R2,R1,LSL#2]
F2F88:  BLX             R1
F2F8A:  MOV             R0, R4
F2F8C:  ADD             SP, SP, #0x18
F2F8E:  POP             {R4,R5,R7,PC}
