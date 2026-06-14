; =========================================================
; Game Engine Function: _ZN4Fx_cC2Ev
; Address            : 0x3639A8 - 0x3639BA
; =========================================================

3639A8:  PUSH            {R4,R6,R7,LR}; Alternative name is 'Fx_c::Fx_c(void)'
3639AA:  ADD             R7, SP, #8
3639AC:  MOV             R4, R0
3639AE:  ADD.W           R0, R4, #0x44 ; 'D'; this
3639B2:  BLX             j__ZN6List_cC2Ev; List_c::List_c(void)
3639B6:  MOV             R0, R4
3639B8:  POP             {R4,R6,R7,PC}
