; =========================================================
; Game Engine Function: _ZN12CHIDJoystickD2Ev
; Address            : 0x28D500 - 0x28D52C
; =========================================================

28D500:  PUSH            {R4,R5,R7,LR}
28D502:  ADD             R7, SP, #8
28D504:  MOV             R4, R0
28D506:  LDR             R0, =(_ZTV12CHIDJoystick_ptr - 0x28D50C)
28D508:  ADD             R0, PC; _ZTV12CHIDJoystick_ptr
28D50A:  LDR             R0, [R0]; `vtable for'CHIDJoystick ...
28D50C:  ADDS            R0, #8
28D50E:  STR             R0, [R4]
28D510:  ADD.W           R0, R4, #0x10; this
28D514:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
28D518:  LDR             R0, [R4,#0xC]; p
28D51A:  MOVS            R5, #0
28D51C:  STR             R5, [R4,#8]
28D51E:  CBZ             R0, loc_28D526
28D520:  BLX             free
28D524:  STR             R5, [R4,#0xC]
28D526:  MOV             R0, R4
28D528:  STR             R5, [R4,#4]
28D52A:  POP             {R4,R5,R7,PC}
