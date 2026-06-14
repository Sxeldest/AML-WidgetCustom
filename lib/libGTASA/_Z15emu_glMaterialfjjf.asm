; =========================================================
; Game Engine Function: _Z15emu_glMaterialfjjf
; Address            : 0x1BA2E4 - 0x1BA2F6
; =========================================================

1BA2E4:  PUSH            {R7,LR}
1BA2E6:  MOV             R7, SP
1BA2E8:  SUB             SP, SP, #8
1BA2EA:  STR             R2, [SP,#0x10+var_C]
1BA2EC:  ADD             R2, SP, #0x10+var_C; float *
1BA2EE:  BLX             j__Z16emu_glMaterialfvjjPKf; emu_glMaterialfv(uint,uint,float const*)
1BA2F2:  ADD             SP, SP, #8
1BA2F4:  POP             {R7,PC}
