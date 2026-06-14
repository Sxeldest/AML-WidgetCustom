; =========================================================
; Game Engine Function: _ZN14CHIDKeyboardPCC2EPKc
; Address            : 0x295C30 - 0x295C56
; =========================================================

295C30:  PUSH            {R4,R6,R7,LR}
295C32:  ADD             R7, SP, #8
295C34:  MOV             R4, R0
295C36:  BLX             j__ZN12CHIDKeyboardC2EPKc; CHIDKeyboard::CHIDKeyboard(char const*)
295C3A:  LDR             R0, =(_ZTV14CHIDKeyboardPC_ptr - 0x295C40)
295C3C:  ADD             R0, PC; _ZTV14CHIDKeyboardPC_ptr
295C3E:  LDR             R0, [R0]; `vtable for'CHIDKeyboardPC ...
295C40:  ADDS            R0, #8
295C42:  STR             R0, [R4]
295C44:  MOV             R0, R4; this
295C46:  BLX             j__ZN14CHIDKeyboardPC17DoDefaultMappingsEv; CHIDKeyboardPC::DoDefaultMappings(void)
295C4A:  MOV             R0, R4; this
295C4C:  MOVS            R1, #1; bool
295C4E:  BLX             j__ZN12CHIDKeyboard20LoadMappingsFromDiskEb; CHIDKeyboard::LoadMappingsFromDisk(bool)
295C52:  MOV             R0, R4
295C54:  POP             {R4,R6,R7,PC}
