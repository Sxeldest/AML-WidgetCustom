; =========================================================
; Game Engine Function: _ZN16CAEAudioHardware7SetHRTFEi
; Address            : 0x3925B8 - 0x3925C6
; =========================================================

3925B8:  LDR.W           R0, [R0,#0xB80]
3925BC:  CMP             R0, #0
3925BE:  IT NE
3925C0:  BNE.W           j_j_AudioSetHRTF
3925C4:  BX              LR
