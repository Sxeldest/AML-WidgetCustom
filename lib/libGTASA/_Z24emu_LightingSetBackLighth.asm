; =========================================================
; Game Engine Function: _Z24emu_LightingSetBackLighth
; Address            : 0x1BA618 - 0x1BA64E
; =========================================================

1BA618:  CBZ             R0, loc_1BA638
1BA61A:  PUSH            {R7,LR}
1BA61C:  MOV             R7, SP
1BA61E:  BLX             j__Z22GetMobileEffectSettingv; GetMobileEffectSetting(void)
1BA622:  CMP             R0, #3
1BA624:  POP.W           {R7,LR}
1BA628:  BNE             loc_1BA638
1BA62A:  LDR             R0, =(curShaderStateFlags_ptr - 0x1BA630)
1BA62C:  ADD             R0, PC; curShaderStateFlags_ptr
1BA62E:  LDR             R0, [R0]; curShaderStateFlags
1BA630:  LDR             R0, [R0]
1BA632:  ORR.W           R0, R0, #0x1000
1BA636:  B               loc_1BA644
1BA638:  LDR             R0, =(curShaderStateFlags_ptr - 0x1BA63E)
1BA63A:  ADD             R0, PC; curShaderStateFlags_ptr
1BA63C:  LDR             R0, [R0]; curShaderStateFlags
1BA63E:  LDR             R0, [R0]
1BA640:  BIC.W           R0, R0, #0x1000
1BA644:  LDR             R1, =(curShaderStateFlags_ptr - 0x1BA64A)
1BA646:  ADD             R1, PC; curShaderStateFlags_ptr
1BA648:  LDR             R1, [R1]; curShaderStateFlags
1BA64A:  STR             R0, [R1]
1BA64C:  BX              LR
