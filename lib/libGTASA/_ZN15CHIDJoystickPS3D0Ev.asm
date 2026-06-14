; =========================================================
; Game Engine Function: _ZN15CHIDJoystickPS3D0Ev
; Address            : 0x28F934 - 0x28F964
; =========================================================

28F934:  PUSH            {R4,R6,R7,LR}
28F936:  ADD             R7, SP, #8
28F938:  MOV             R4, R0
28F93A:  LDR             R0, =(_ZTV12CHIDJoystick_ptr - 0x28F940)
28F93C:  ADD             R0, PC; _ZTV12CHIDJoystick_ptr
28F93E:  LDR             R0, [R0]; `vtable for'CHIDJoystick ...
28F940:  ADDS            R0, #8
28F942:  STR             R0, [R4]
28F944:  ADD.W           R0, R4, #0x10; this
28F948:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
28F94C:  LDR             R0, [R4,#0xC]; p
28F94E:  MOVS            R1, #0
28F950:  STR             R1, [R4,#8]
28F952:  CMP             R0, #0
28F954:  IT NE
28F956:  BLXNE           free
28F95A:  MOV             R0, R4; void *
28F95C:  POP.W           {R4,R6,R7,LR}
28F960:  B.W             j__ZdlPv; operator delete(void *)
