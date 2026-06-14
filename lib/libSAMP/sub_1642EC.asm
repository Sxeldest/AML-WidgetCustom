; =========================================================
; Game Engine Function: sub_1642EC
; Address            : 0x1642EC - 0x164420
; =========================================================

1642EC:  PUSH            {R4-R7,LR}
1642EE:  ADD             R7, SP, #0xC
1642F0:  PUSH.W          {R8,R9,R11}
1642F4:  SUB             SP, SP, #8
1642F6:  MOV             R4, R0
1642F8:  LDR             R0, =(byte_381AC0 - 0x164300)
1642FA:  MOV             R8, R1
1642FC:  ADD             R0, PC; byte_381AC0
1642FE:  LDRB            R0, [R0]
164300:  DMB.W           ISH
164304:  LSLS            R0, R0, #0x1F
164306:  BEQ             loc_1643EE
164308:  LDR             R0, =(unk_381ABC - 0x16430E)
16430A:  ADD             R0, PC; unk_381ABC ; this
16430C:  BLX             j__ZNSt6__ndk15mutex4lockEv; std::mutex::lock(void)
164310:  BLX             j__ZN4llmo3mem8pageSizeEv; llmo::mem::pageSize(void)
164314:  MOV             R9, R0
164316:  BLX             j__ZN4llmo3mem8pageSizeEv; llmo::mem::pageSize(void)
16431A:  MOV             R6, R0
16431C:  MOV             R0, R4; this
16431E:  MOV             R1, R6; unsigned int
164320:  BLX             j__ZN4llmo3mem4prot3getEjj; llmo::mem::prot::get(uint,uint)
164324:  MOV             R5, R0
164326:  ADDS            R0, #1
164328:  IT EQ
16432A:  MOVEQ           R5, #5
16432C:  ORR.W           R2, R5, #2; unsigned int
164330:  MOV             R0, R4; this
164332:  MOV             R1, R6; unsigned int
164334:  BLX             j__ZN4llmo3mem4prot3setEjji; llmo::mem::prot::set(uint,uint,int)
164338:  CBZ             R0, loc_16435C
16433A:  LDR.W           R0, [R8,#0x10]
16433E:  CMP             R0, #0
164340:  BEQ             loc_164418
164342:  LDR             R1, [R0]
164344:  LDR             R1, [R1,#0x18]
164346:  BLX             R1
164348:  MOV             R0, R4; this
16434A:  MOV             R1, R6; unsigned int
16434C:  MOV             R2, R5; unsigned int
16434E:  BLX             j__ZN4llmo3mem4prot3setEjji; llmo::mem::prot::set(uint,uint,int)
164352:  MOVS            R4, #0xD
164354:  CMP             R0, #0
164356:  IT NE
164358:  MOVNE           R4, #0
16435A:  B               loc_1643A8
16435C:  RSB.W           R0, R9, #0
164360:  ANDS            R0, R4
164362:  CMP             R0, R4
164364:  BNE             loc_1643A6
164366:  MOV             R0, R6; unsigned int
164368:  BLX             j__Znaj; operator new[](uint)
16436C:  MOV             R1, R4; src
16436E:  MOV             R2, R6; n
164370:  MOV             R9, R0
164372:  BLX             j_memcpy
164376:  MOV             R0, R4; addr
164378:  MOV             R1, R6; len
16437A:  BLX             munmap
16437E:  CBNZ            R0, loc_164398
164380:  MOVS            R0, #0
164382:  MOV             R1, R6; len
164384:  STRD.W          R0, R0, [SP,#0x20+fd]; fd
164388:  MOV             R0, R4; addr
16438A:  MOVS            R2, #3; prot
16438C:  MOVS            R3, #0x32 ; '2'; flags
16438E:  BLX             mmap
164392:  ADDS            R1, R0, #1
164394:  CMP             R1, #1
164396:  BHI             loc_1643BA
164398:  BLX             __errno
16439C:  LDR             R4, [R0]
16439E:  MOV             R0, R9; void *
1643A0:  BLX             j__ZdlPv; operator delete(void *)
1643A4:  B               loc_1643A8
1643A6:  MOVS            R4, #0x16
1643A8:  LDR             R0, =(unk_381ABC - 0x1643AE)
1643AA:  ADD             R0, PC; unk_381ABC ; this
1643AC:  BLX             j__ZNSt6__ndk15mutex6unlockEv; std::mutex::unlock(void)
1643B0:  MOV             R0, R4
1643B2:  ADD             SP, SP, #8
1643B4:  POP.W           {R8,R9,R11}
1643B8:  POP             {R4-R7,PC}
1643BA:  CMP             R0, R4
1643BC:  BEQ             loc_1643C4
1643BE:  MOV.W           R4, #0xFFFFFFFF
1643C2:  B               loc_16439E
1643C4:  MOV             R0, R4; dest
1643C6:  MOV             R1, R9; src
1643C8:  MOV             R2, R6; n
1643CA:  BLX             j_memcpy
1643CE:  LDR.W           R0, [R8,#0x10]
1643D2:  CBZ             R0, loc_16441C
1643D4:  LDR             R1, [R0]
1643D6:  LDR             R1, [R1,#0x18]
1643D8:  BLX             R1
1643DA:  MOV             R0, R4; this
1643DC:  MOV             R1, R6; unsigned int
1643DE:  MOV             R2, R5; unsigned int
1643E0:  BLX             j__ZN4llmo3mem4prot3setEjji; llmo::mem::prot::set(uint,uint,int)
1643E4:  MOVS            R4, #0xD
1643E6:  CMP             R0, #0
1643E8:  IT NE
1643EA:  MOVNE           R4, #0
1643EC:  B               loc_16439E
1643EE:  LDR             R0, =(byte_381AC0 - 0x1643F4)
1643F0:  ADD             R0, PC; byte_381AC0 ; __guard *
1643F2:  BLX             j___cxa_guard_acquire
1643F6:  CMP             R0, #0
1643F8:  BEQ.W           loc_164308
1643FC:  LDR             R0, =(_ZNSt6__ndk15mutexD2Ev_ptr - 0x164404)
1643FE:  LDR             R1, =(unk_381ABC - 0x164408)
164400:  ADD             R0, PC; _ZNSt6__ndk15mutexD2Ev_ptr
164402:  LDR             R2, =(off_22A540 - 0x16440C)
164404:  ADD             R1, PC; unk_381ABC ; obj
164406:  LDR             R0, [R0]; std::mutex::~mutex() ; lpfunc
164408:  ADD             R2, PC; off_22A540 ; lpdso_handle
16440A:  BLX             __cxa_atexit
16440E:  LDR             R0, =(byte_381AC0 - 0x164414)
164410:  ADD             R0, PC; byte_381AC0 ; __guard *
164412:  BLX             j___cxa_guard_release
164416:  B               loc_164308
164418:  BL              sub_DC92C
16441C:  BL              sub_DC92C
