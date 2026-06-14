; =========================================================
; Game Engine Function: _ZN13FxInfoEmDir_c8GetValueEffffhPv
; Address            : 0x36A572 - 0x36A590
; =========================================================

36A572:  PUSH            {R7,LR}
36A574:  MOV             R7, SP
36A576:  SUB             SP, SP, #0x40
36A578:  ADDS            R0, #8; this
36A57A:  MOV             R2, R1; float
36A57C:  MOV             R1, SP; float *
36A57E:  BLX             j__ZN16FxInterpInfo32_c6GetValEPff; FxInterpInfo32_c::GetVal(float *,float)
36A582:  LDR             R0, [R7,#0x10]
36A584:  LDMFD.W         SP, {R1-R3}
36A588:  ADDS            R0, #0x28 ; '('
36A58A:  STM             R0!, {R1-R3}
36A58C:  ADD             SP, SP, #0x40 ; '@'
36A58E:  POP             {R7,PC}
