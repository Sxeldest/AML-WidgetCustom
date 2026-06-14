; =========================================================
; Game Engine Function: _ZN16CAEAudioHardware30RequestVirtualChannelSoundInfoEttt
; Address            : 0x392C90 - 0x392CA8
; =========================================================

392C90:  MOV.W           R12, R1,LSR#2
392C94:  CMP.W           R12, #0x4A ; 'J'
392C98:  ITTT LS
392C9A:  ADDLS.W         R0, R0, R1,LSL#1
392C9E:  STRHLS.W        R2, [R0,#0x468]
392CA2:  STRHLS.W        R3, [R0,#0x210]
392CA6:  BX              LR
