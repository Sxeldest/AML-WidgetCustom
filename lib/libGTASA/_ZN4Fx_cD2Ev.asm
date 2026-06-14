; =========================================================
; Game Engine Function: _ZN4Fx_cD2Ev
; Address            : 0x3639BA - 0x3639CC
; =========================================================

3639BA:  PUSH            {R4,R6,R7,LR}
3639BC:  ADD             R7, SP, #8
3639BE:  MOV             R4, R0
3639C0:  ADD.W           R0, R4, #0x44 ; 'D'; this
3639C4:  BLX             j__ZN6List_cD2Ev; List_c::~List_c()
3639C8:  MOV             R0, R4
3639CA:  POP             {R4,R6,R7,PC}
