; =========================================================
; Game Engine Function: _ZN12CHIDKeyboardD2Ev
; Address            : 0x295BF8 - 0x295C24
; =========================================================

295BF8:  PUSH            {R4,R5,R7,LR}
295BFA:  ADD             R7, SP, #8
295BFC:  MOV             R4, R0
295BFE:  LDR             R0, =(_ZTV12CHIDKeyboard_ptr - 0x295C04)
295C00:  ADD             R0, PC; _ZTV12CHIDKeyboard_ptr
295C02:  LDR             R0, [R0]; `vtable for'CHIDKeyboard ...
295C04:  ADDS            R0, #8
295C06:  STR             R0, [R4]
295C08:  ADD.W           R0, R4, #0x10; this
295C0C:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
295C10:  LDR             R0, [R4,#0xC]; p
295C12:  MOVS            R5, #0
295C14:  STR             R5, [R4,#8]
295C16:  CBZ             R0, loc_295C1E
295C18:  BLX             free
295C1C:  STR             R5, [R4,#0xC]
295C1E:  MOV             R0, R4
295C20:  STR             R5, [R4,#4]
295C22:  POP             {R4,R5,R7,PC}
