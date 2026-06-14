; =========================================================
; Game Engine Function: _ZN15CMissionCleanup18DoFadeScrewUpCheckEv
; Address            : 0x3281D0 - 0x328224
; =========================================================

3281D0:  LDR             R0, =(_ZN11CTheScripts18bScriptHasFadedOutE_ptr - 0x3281D6)
3281D2:  ADD             R0, PC; _ZN11CTheScripts18bScriptHasFadedOutE_ptr
3281D4:  LDR             R0, [R0]; CTheScripts::bScriptHasFadedOut ...
3281D6:  LDRB            R0, [R0]; CTheScripts::bScriptHasFadedOut
3281D8:  CBZ             R0, locret_328222
3281DA:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x3281E4)
3281DC:  MOVS            R2, #0
3281DE:  LDR             R1, =(_ZN11CTheScripts18bScriptHasFadedOutE_ptr - 0x3281E6)
3281E0:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
3281E2:  ADD             R1, PC; _ZN11CTheScripts18bScriptHasFadedOutE_ptr
3281E4:  LDR             R0, [R0]; CWorld::Players ...
3281E6:  LDR             R1, [R1]; CTheScripts::bScriptHasFadedOut ...
3281E8:  LDRB.W          R0, [R0,#(byte_96B778 - 0x96B69C)]
3281EC:  STRB            R2, [R1]; CTheScripts::bScriptHasFadedOut
3281EE:  SUBS            R0, #1
3281F0:  UXTB            R0, R0
3281F2:  CMP             R0, #2
3281F4:  IT CC
3281F6:  BXCC            LR
3281F8:  PUSH            {R7,LR}
3281FA:  MOV             R7, SP
3281FC:  LDR             R0, =(TheCamera_ptr - 0x328208)
3281FE:  MOV.W           R1, #0x3F000000; float
328202:  MOVS            R2, #1; __int16
328204:  ADD             R0, PC; TheCamera_ptr
328206:  LDR             R0, [R0]; TheCamera ; this
328208:  BLX             j__ZN7CCamera4FadeEfs; CCamera::Fade(float,short)
32820C:  MOVS            R0, #0; this
32820E:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
328212:  LDRH.W          R1, [R0,#0x110]
328216:  BIC.W           R1, R1, #0x20 ; ' '
32821A:  STRH.W          R1, [R0,#0x110]
32821E:  POP.W           {R7,LR}
328222:  BX              LR
