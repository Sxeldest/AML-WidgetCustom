; =========================================================
; Game Engine Function: sub_20533C
; Address            : 0x20533C - 0x20535C
; =========================================================

20533C:  PUSH            {R4,R6,R7,LR}
20533E:  ADD             R7, SP, #8
205340:  LDRB            R4, [R1]
205342:  LDR             R3, [R1,#8]
205344:  LSLS            R4, R4, #0x1F
205346:  IT EQ
205348:  ADDEQ           R3, R1, #1
20534A:  MOV             R1, R3; s1
20534C:  BLX             j__ZNSt6__ndk17codecvtIwc9mbstate_tEC2EPKcj; std::codecvt<wchar_t,char,mbstate_t>::codecvt(char const*,uint)
205350:  LDR             R1, =(_ZTVNSt6__ndk114codecvt_bynameIwc9mbstate_tEE_ptr - 0x205356)
205352:  ADD             R1, PC; _ZTVNSt6__ndk114codecvt_bynameIwc9mbstate_tEE_ptr
205354:  LDR             R1, [R1]; `vtable for'std::codecvt_byname<wchar_t,char,mbstate_t> ...
205356:  ADDS            R1, #8
205358:  STR             R1, [R0]
20535A:  POP             {R4,R6,R7,PC}
