; =========================================================
; Game Engine Function: _ZN19CHIDJoystickXbox360D0Ev
; Address            : 0x28FF90 - 0x28FFC0
; =========================================================

28FF90:  PUSH            {R4,R6,R7,LR}
28FF92:  ADD             R7, SP, #8
28FF94:  MOV             R4, R0
28FF96:  LDR             R0, =(_ZTV12CHIDJoystick_ptr - 0x28FF9C)
28FF98:  ADD             R0, PC; _ZTV12CHIDJoystick_ptr
28FF9A:  LDR             R0, [R0]; `vtable for'CHIDJoystick ...
28FF9C:  ADDS            R0, #8
28FF9E:  STR             R0, [R4]
28FFA0:  ADD.W           R0, R4, #0x10; this
28FFA4:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
28FFA8:  LDR             R0, [R4,#0xC]; p
28FFAA:  MOVS            R1, #0
28FFAC:  STR             R1, [R4,#8]
28FFAE:  CMP             R0, #0
28FFB0:  IT NE
28FFB2:  BLXNE           free
28FFB6:  MOV             R0, R4; void *
28FFB8:  POP.W           {R4,R6,R7,LR}
28FFBC:  B.W             j__ZdlPv; operator delete(void *)
