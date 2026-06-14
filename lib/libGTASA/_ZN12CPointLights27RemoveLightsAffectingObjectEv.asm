; =========================================================
; Game Engine Function: _ZN12CPointLights27RemoveLightsAffectingObjectEv
; Address            : 0x5B194C - 0x5B1958
; =========================================================

5B194C:  LDR             R0, =(Scene_ptr - 0x5B1952)
5B194E:  ADD             R0, PC; Scene_ptr
5B1950:  LDR             R0, [R0]; Scene
5B1952:  LDR             R0, [R0]
5B1954:  B.W             sub_18F870
