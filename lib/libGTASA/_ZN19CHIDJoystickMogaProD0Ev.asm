; =========================================================
; Game Engine Function: _ZN19CHIDJoystickMogaProD0Ev
; Address            : 0x28F33C - 0x28F36C
; =========================================================

28F33C:  PUSH            {R4,R6,R7,LR}
28F33E:  ADD             R7, SP, #8
28F340:  MOV             R4, R0
28F342:  LDR             R0, =(_ZTV12CHIDJoystick_ptr - 0x28F348)
28F344:  ADD             R0, PC; _ZTV12CHIDJoystick_ptr
28F346:  LDR             R0, [R0]; `vtable for'CHIDJoystick ...
28F348:  ADDS            R0, #8
28F34A:  STR             R0, [R4]
28F34C:  ADD.W           R0, R4, #0x10; this
28F350:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
28F354:  LDR             R0, [R4,#0xC]; p
28F356:  MOVS            R1, #0
28F358:  STR             R1, [R4,#8]
28F35A:  CMP             R0, #0
28F35C:  IT NE
28F35E:  BLXNE           free
28F362:  MOV             R0, R4; void *
28F364:  POP.W           {R4,R6,R7,LR}
28F368:  B.W             j__ZdlPv; operator delete(void *)
