; =========================================================
; Game Engine Function: _ZN17FxInfoEmWeather_cD2Ev
; Address            : 0x36BCD8 - 0x36BCF6
; =========================================================

36BCD8:  PUSH            {R4,R6,R7,LR}
36BCDA:  ADD             R7, SP, #8
36BCDC:  MOV             R4, R0
36BCDE:  LDR             R0, =(_ZTV17FxInfoEmWeather_c_ptr - 0x36BCE4)
36BCE0:  ADD             R0, PC; _ZTV17FxInfoEmWeather_c_ptr
36BCE2:  LDR             R0, [R0]; `vtable for'FxInfoEmWeather_c ...
36BCE4:  ADD.W           R1, R0, #8
36BCE8:  MOV             R0, R4
36BCEA:  STR.W           R1, [R0],#8; this
36BCEE:  BLX             j__ZN19FxInterpInfoFloat_cD2Ev_0; FxInterpInfoFloat_c::~FxInterpInfoFloat_c()
36BCF2:  MOV             R0, R4
36BCF4:  POP             {R4,R6,R7,PC}
