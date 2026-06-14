; =========================================================
; Game Engine Function: sub_F01C4
; Address            : 0xF01C4 - 0xF022E
; =========================================================

F01C4:  PUSH            {R4-R7,LR}
F01C6:  ADD             R7, SP, #0xC
F01C8:  PUSH.W          {R8}
F01CC:  SUB             SP, SP, #0x18
F01CE:  MOV             R6, R0
F01D0:  LDR             R0, =(_ZNSt6__ndk17codecvtIDic9mbstate_tE2idE_ptr - 0xF01DA)
F01D2:  MOV             R4, R1
F01D4:  MOV             R8, R2
F01D6:  ADD             R0, PC; _ZNSt6__ndk17codecvtIDic9mbstate_tE2idE_ptr
F01D8:  LDR             R1, [R0]; std::locale::id *
F01DA:  MOV             R0, R3; this
F01DC:  BLX             j__ZNKSt6__ndk16locale9use_facetERNS0_2idE; std::locale::use_facet(std::locale::id &)
F01E0:  MOVS            R1, #0
F01E2:  ADD.W           R3, R4, R8
F01E6:  STR             R1, [SP,#0x28+var_14]
F01E8:  LDR             R2, [R0]
F01EA:  STR             R1, [SP,#0x28+var_18]
F01EC:  ADD.W           R1, R6, #0x80
F01F0:  LDR             R5, [R2,#0x10]
F01F2:  ADD             R2, SP, #0x28+var_18
F01F4:  STRD.W          R1, R1, [SP,#0x28+var_20]
F01F8:  ADD             R1, SP, #0x28+var_14
F01FA:  STRD.W          R2, R6, [SP,#0x28+var_28]
F01FE:  MOV             R2, R4
F0200:  BLX             R5
F0202:  CBNZ            R0, loc_F020C
F0204:  ADD             SP, SP, #0x18
F0206:  POP.W           {R8}
F020A:  POP             {R4-R7,PC}
F020C:  MOVS            R0, #8; thrown_size
F020E:  BLX             j___cxa_allocate_exception
F0212:  LDR             R1, =(aFailedToFormat - 0xF021A); "failed to format time" ...
F0214:  MOV             R4, R0
F0216:  ADD             R1, PC; "failed to format time"
F0218:  BL              sub_EE924
F021C:  LDR             R0, =(_ZTIN3fmt2v812format_errorE_ptr - 0xF0224)
F021E:  LDR             R2, =(_ZN3fmt2v812format_errorD2Ev_ptr - 0xF0226)
F0220:  ADD             R0, PC; _ZTIN3fmt2v812format_errorE_ptr
F0222:  ADD             R2, PC; _ZN3fmt2v812format_errorD2Ev_ptr
F0224:  LDR             R1, [R0]; lptinfo
F0226:  MOV             R0, R4; void *
F0228:  LDR             R2, [R2]; fmt::v8::format_error::~format_error() ; void (*)(void *)
F022A:  BLX             j___cxa_throw
