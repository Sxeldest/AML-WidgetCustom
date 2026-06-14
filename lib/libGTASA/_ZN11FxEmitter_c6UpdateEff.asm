; =========================================================
; Game Engine Function: _ZN11FxEmitter_c6UpdateEff
; Address            : 0x3689E0 - 0x3689F6
; =========================================================

3689E0:  LDRB            R3, [R0,#0xC]
3689E2:  CMP             R3, #0
3689E4:  IT EQ
3689E6:  BXEQ            LR
3689E8:  LDR             R3, [R0,#8]
3689EA:  LDRB.W          R3, [R3,#0x66]
3689EE:  LSLS            R3, R3, #0x1C
3689F0:  IT PL
3689F2:  BPL             _ZN11FxEmitter_c15CreateParticlesEff; FxEmitter_c::CreateParticles(float,float)
3689F4:  BX              LR
