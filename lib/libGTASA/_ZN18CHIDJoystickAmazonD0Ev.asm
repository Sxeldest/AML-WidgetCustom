; =========================================================
; Game Engine Function: _ZN18CHIDJoystickAmazonD0Ev
; Address            : 0x28DADC - 0x28DB0C
; =========================================================

28DADC:  PUSH            {R4,R6,R7,LR}
28DADE:  ADD             R7, SP, #8
28DAE0:  MOV             R4, R0
28DAE2:  LDR             R0, =(_ZTV12CHIDJoystick_ptr - 0x28DAE8)
28DAE4:  ADD             R0, PC; _ZTV12CHIDJoystick_ptr
28DAE6:  LDR             R0, [R0]; `vtable for'CHIDJoystick ...
28DAE8:  ADDS            R0, #8
28DAEA:  STR             R0, [R4]
28DAEC:  ADD.W           R0, R4, #0x10; this
28DAF0:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
28DAF4:  LDR             R0, [R4,#0xC]; p
28DAF6:  MOVS            R1, #0
28DAF8:  STR             R1, [R4,#8]
28DAFA:  CMP             R0, #0
28DAFC:  IT NE
28DAFE:  BLXNE           free
28DB02:  MOV             R0, R4; void *
28DB04:  POP.W           {R4,R6,R7,LR}
28DB08:  B.W             j__ZdlPv; operator delete(void *)
