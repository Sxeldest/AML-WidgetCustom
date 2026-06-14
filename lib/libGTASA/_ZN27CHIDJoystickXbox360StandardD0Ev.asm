; =========================================================
; Game Engine Function: _ZN27CHIDJoystickXbox360StandardD0Ev
; Address            : 0x2905EC - 0x29061C
; =========================================================

2905EC:  PUSH            {R4,R6,R7,LR}
2905EE:  ADD             R7, SP, #8
2905F0:  MOV             R4, R0
2905F2:  LDR             R0, =(_ZTV12CHIDJoystick_ptr - 0x2905F8)
2905F4:  ADD             R0, PC; _ZTV12CHIDJoystick_ptr
2905F6:  LDR             R0, [R0]; `vtable for'CHIDJoystick ...
2905F8:  ADDS            R0, #8
2905FA:  STR             R0, [R4]
2905FC:  ADD.W           R0, R4, #0x10; this
290600:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
290604:  LDR             R0, [R4,#0xC]; p
290606:  MOVS            R1, #0
290608:  STR             R1, [R4,#8]
29060A:  CMP             R0, #0
29060C:  IT NE
29060E:  BLXNE           free
290612:  MOV             R0, R4; void *
290614:  POP.W           {R4,R6,R7,LR}
290618:  B.W             j__ZdlPv; operator delete(void *)
