; =========================================================
; Game Engine Function: _ZN20CAERadioTrackManager14SetBassSettingEaf
; Address            : 0x3A320C - 0x3A3238
; =========================================================

3A320C:  STRB.W          R1, [R0,#0xEA]
3A3210:  STRB.W          R1, [R0,#0xAE]
3A3214:  LDRB            R3, [R0,#4]
3A3216:  STR.W           R2, [R0,#0xB0]
3A321A:  CMP             R3, #0
3A321C:  STR.W           R2, [R0,#0xEC]
3A3220:  BEQ             loc_3A322C
3A3222:  LDR             R0, =(AEAudioHardware_ptr - 0x3A3228)
3A3224:  ADD             R0, PC; AEAudioHardware_ptr
3A3226:  LDR             R0, [R0]; AEAudioHardware ; this
3A3228:  B.W             sub_18E46C
3A322C:  LDR             R0, =(AEAudioHardware_ptr - 0x3A3234)
3A322E:  MOVS            R1, #0; signed __int8
3A3230:  ADD             R0, PC; AEAudioHardware_ptr
3A3232:  LDR             R0, [R0]; AEAudioHardware ; this
3A3234:  B.W             sub_18E46C
