; =========================================================
; Game Engine Function: sub_1FADE8
; Address            : 0x1FADE8 - 0x1FAE20
; =========================================================

1FADE8:  PUSH            {R2-R5,R7,LR}
1FADEA:  ADD             R7, SP, #0x10
1FADEC:  MOV             R5, R0
1FADEE:  MOVS            R0, #0x10; thrown_size
1FADF0:  BLX             j___cxa_allocate_exception
1FADF4:  MOV             R4, R0
1FADF6:  BLX             j__ZNSt6__ndk117iostream_categoryEv; std::iostream_category(void)
1FADFA:  LDR             R0, =(unk_38372C - 0x1FAE00)
1FADFC:  ADD             R0, PC; unk_38372C
1FADFE:  STR             R0, [SP,#0x10+var_C]
1FAE00:  MOVS            R0, #1
1FAE02:  STR             R0, [SP,#0x10+var_10]
1FAE04:  MOV             R2, SP; std::error_code *
1FAE06:  MOV             R0, R4; this
1FAE08:  MOV             R1, R5; char *
1FAE0A:  BLX             j__ZNSt6__ndk18ios_base7failureC2EPKcRKNS_10error_codeE; std::ios_base::failure::failure(char const*,std::error_code const&)
1FAE0E:  LDR             R0, =(_ZTINSt6__ndk18ios_base7failureE_ptr - 0x1FAE14)
1FAE10:  ADD             R0, PC; _ZTINSt6__ndk18ios_base7failureE_ptr
1FAE12:  LDR             R1, [R0]; lptinfo
1FAE14:  LDR             R0, =(_ZNSt6__ndk18ios_base7failureD2Ev_ptr - 0x1FAE1A)
1FAE16:  ADD             R0, PC; _ZNSt6__ndk18ios_base7failureD2Ev_ptr
1FAE18:  LDR             R2, [R0]; std::ios_base::failure::~failure() ; void (*)(void *)
1FAE1A:  MOV             R0, R4; void *
1FAE1C:  BLX             j___cxa_throw
