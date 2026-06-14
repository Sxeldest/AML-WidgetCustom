; =========================================================
; Game Engine Function: _ZN7CCamera13SetMotionBlurEiiiii
; Address            : 0x3D4AA8 - 0x3D4ABE
; =========================================================

3D4AA8:  PUSH            {R7,LR}
3D4AAA:  MOV             R7, SP
3D4AAC:  LDRD.W          R12, LR, [R7,#8+arg_0]
3D4AB0:  STRD.W          R3, R2, [R0,#0x80]
3D4AB4:  STRD.W          R1, LR, [R0,#0x88]
3D4AB8:  STR.W           R12, [R0,#0x9C]
3D4ABC:  POP             {R7,PC}
