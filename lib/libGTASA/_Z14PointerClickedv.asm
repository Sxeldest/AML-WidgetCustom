; =========================================================
; Game Engine Function: _Z14PointerClickedv
; Address            : 0x297238 - 0x297284
; =========================================================

297238:  PUSH            {R4-R7,LR}
29723A:  ADD             R7, SP, #0xC
29723C:  PUSH.W          {R11}
297240:  LDR             R0, =(lastDevice_ptr - 0x29724A)
297242:  MOVS            R4, #0
297244:  LDR             R1, =(gMobileMenu_ptr - 0x29724C)
297246:  ADD             R0, PC; lastDevice_ptr
297248:  ADD             R1, PC; gMobileMenu_ptr
29724A:  LDR             R0, [R0]; lastDevice
29724C:  LDR             R1, [R1]; gMobileMenu
29724E:  LDR             R0, [R0]
297250:  ADD.W           R0, R1, R0,LSL#2
297254:  LDR.W           R0, [R0,#0x90]
297258:  CBNZ            R0, loc_29727C
29725A:  LDR             R0, =(lastDevice_ptr - 0x297262)
29725C:  LDR             R5, =(gMobileMenu_ptr - 0x297264)
29725E:  ADD             R0, PC; lastDevice_ptr
297260:  ADD             R5, PC; gMobileMenu_ptr
297262:  LDR             R6, [R0]; lastDevice
297264:  BLX             j__Z9OS_TimeMSv; OS_TimeMS(void)
297268:  LDR             R1, [R6]
29726A:  LDR             R2, [R5]; gMobileMenu
29726C:  ADD.W           R1, R2, R1,LSL#2
297270:  LDR.W           R1, [R1,#0xA0]
297274:  SUBS            R0, R0, R1
297276:  CMP             R0, #0xC8
297278:  IT CC
29727A:  MOVCC           R4, #1
29727C:  MOV             R0, R4
29727E:  POP.W           {R11}
297282:  POP             {R4-R7,PC}
