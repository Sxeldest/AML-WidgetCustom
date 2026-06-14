; =========================================================
; Game Engine Function: sub_DFC2C
; Address            : 0xDFC2C - 0xDFC70
; =========================================================

DFC2C:  PUSH            {R2-R4,R6,R7,LR}
DFC2E:  ADD             R7, SP, #0x10
DFC30:  MOV             R4, R1
DFC32:  LDR             R1, =(__stack_chk_guard_ptr - 0xDFC38)
DFC34:  ADD             R1, PC; __stack_chk_guard_ptr
DFC36:  LDR             R1, [R1]; __stack_chk_guard
DFC38:  LDR             R1, [R1]
DFC3A:  STR             R1, [SP,#0x10+var_C]
DFC3C:  ADD.W           R1, R0, #0x1C; std::locale *
DFC40:  MOV             R0, SP; this
DFC42:  BLX             j__ZNSt6__ndk16localeC2ERKS0_; std::locale::locale(std::locale const&)
DFC46:  BL              sub_DEDA4
DFC4A:  LDR             R1, [R0]
DFC4C:  LDR             R2, [R1,#0x2C]
DFC4E:  MOV             R1, R4
DFC50:  BLX             R2
DFC52:  MOV             R4, R0
DFC54:  MOV             R0, SP; this
DFC56:  BLX             j__ZNSt6__ndk16localeD2Ev; std::locale::~locale()
DFC5A:  LDR             R0, [SP,#0x10+var_C]
DFC5C:  LDR             R1, =(__stack_chk_guard_ptr - 0xDFC62)
DFC5E:  ADD             R1, PC; __stack_chk_guard_ptr
DFC60:  LDR             R1, [R1]; __stack_chk_guard
DFC62:  LDR             R1, [R1]
DFC64:  CMP             R1, R0
DFC66:  ITT EQ
DFC68:  MOVEQ           R0, R4
DFC6A:  POPEQ           {R2-R4,R6,R7,PC}
DFC6C:  BLX             __stack_chk_fail
