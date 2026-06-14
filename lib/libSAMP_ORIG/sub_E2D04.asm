; =========================================================
; Game Engine Function: sub_E2D04
; Address            : 0xE2D04 - 0xE2D3C
; =========================================================

E2D04:  PUSH            {R2-R5,R7,LR}
E2D06:  ADD             R7, SP, #0x10
E2D08:  MOV             R5, R0
E2D0A:  MOVS            R0, #0x10; thrown_size
E2D0C:  BLX             j___cxa_allocate_exception
E2D10:  MOV             R4, R0
E2D12:  BLX             j__ZNSt6__ndk117iostream_categoryEv; std::iostream_category(void)
E2D16:  LDR             R0, =(unk_1AEEA0 - 0xE2D1C)
E2D18:  ADD             R0, PC; unk_1AEEA0
E2D1A:  STR             R0, [SP,#0x10+var_C]
E2D1C:  MOVS            R0, #1
E2D1E:  STR             R0, [SP,#0x10+var_10]
E2D20:  MOV             R2, SP; std::error_code *
E2D22:  MOV             R0, R4; this
E2D24:  MOV             R1, R5; char *
E2D26:  BLX             j__ZNSt6__ndk18ios_base7failureC2EPKcRKNS_10error_codeE; std::ios_base::failure::failure(char const*,std::error_code const&)
E2D2A:  LDR             R0, =(_ZTINSt6__ndk18ios_base7failureE_ptr - 0xE2D30)
E2D2C:  ADD             R0, PC; _ZTINSt6__ndk18ios_base7failureE_ptr
E2D2E:  LDR             R1, [R0]; lptinfo
E2D30:  LDR             R0, =(_ZNSt6__ndk18ios_base7failureD2Ev_ptr - 0xE2D36)
E2D32:  ADD             R0, PC; _ZNSt6__ndk18ios_base7failureD2Ev_ptr
E2D34:  LDR             R2, [R0]; std::ios_base::failure::~failure() ; void (*)(void *)
E2D36:  MOV             R0, R4; void *
E2D38:  BLX             j___cxa_throw
