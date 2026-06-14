; =========================================================
; Game Engine Function: _ZN22CHIDJoystickMogaPocketD0Ev
; Address            : 0x28ED44 - 0x28ED74
; =========================================================

28ED44:  PUSH            {R4,R6,R7,LR}
28ED46:  ADD             R7, SP, #8
28ED48:  MOV             R4, R0
28ED4A:  LDR             R0, =(_ZTV12CHIDJoystick_ptr - 0x28ED50)
28ED4C:  ADD             R0, PC; _ZTV12CHIDJoystick_ptr
28ED4E:  LDR             R0, [R0]; `vtable for'CHIDJoystick ...
28ED50:  ADDS            R0, #8
28ED52:  STR             R0, [R4]
28ED54:  ADD.W           R0, R4, #0x10; this
28ED58:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
28ED5C:  LDR             R0, [R4,#0xC]; p
28ED5E:  MOVS            R1, #0
28ED60:  STR             R1, [R4,#8]
28ED62:  CMP             R0, #0
28ED64:  IT NE
28ED66:  BLXNE           free
28ED6A:  MOV             R0, R4; void *
28ED6C:  POP.W           {R4,R6,R7,LR}
28ED70:  B.W             j__ZdlPv; operator delete(void *)
