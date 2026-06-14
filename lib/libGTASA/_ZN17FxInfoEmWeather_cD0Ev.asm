; =========================================================
; Game Engine Function: _ZN17FxInfoEmWeather_cD0Ev
; Address            : 0x36BCFC - 0x36BD20
; =========================================================

36BCFC:  PUSH            {R4,R6,R7,LR}
36BCFE:  ADD             R7, SP, #8
36BD00:  MOV             R4, R0
36BD02:  LDR             R0, =(_ZTV17FxInfoEmWeather_c_ptr - 0x36BD08)
36BD04:  ADD             R0, PC; _ZTV17FxInfoEmWeather_c_ptr
36BD06:  LDR             R0, [R0]; `vtable for'FxInfoEmWeather_c ...
36BD08:  ADD.W           R1, R0, #8
36BD0C:  MOV             R0, R4
36BD0E:  STR.W           R1, [R0],#8; this
36BD12:  BLX             j__ZN19FxInterpInfoFloat_cD2Ev_0; FxInterpInfoFloat_c::~FxInterpInfoFloat_c()
36BD16:  MOV             R0, R4; void *
36BD18:  POP.W           {R4,R6,R7,LR}
36BD1C:  B.W             j__ZdlPv; operator delete(void *)
