; =========================================================
; Game Engine Function: _ZN21CHIDJoystickAndroidTVD0Ev
; Address            : 0x28E124 - 0x28E154
; =========================================================

28E124:  PUSH            {R4,R6,R7,LR}
28E126:  ADD             R7, SP, #8
28E128:  MOV             R4, R0
28E12A:  LDR             R0, =(_ZTV12CHIDJoystick_ptr - 0x28E130)
28E12C:  ADD             R0, PC; _ZTV12CHIDJoystick_ptr
28E12E:  LDR             R0, [R0]; `vtable for'CHIDJoystick ...
28E130:  ADDS            R0, #8
28E132:  STR             R0, [R4]
28E134:  ADD.W           R0, R4, #0x10; this
28E138:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
28E13C:  LDR             R0, [R4,#0xC]; p
28E13E:  MOVS            R1, #0
28E140:  STR             R1, [R4,#8]
28E142:  CMP             R0, #0
28E144:  IT NE
28E146:  BLXNE           free
28E14A:  MOV             R0, R4; void *
28E14C:  POP.W           {R4,R6,R7,LR}
28E150:  B.W             j__ZdlPv; operator delete(void *)
