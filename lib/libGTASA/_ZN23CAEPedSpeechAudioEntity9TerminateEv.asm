; =========================================================
; Game Engine Function: _ZN23CAEPedSpeechAudioEntity9TerminateEv
; Address            : 0x39D08C - 0x39D0CA
; =========================================================

39D08C:  PUSH            {R4,R6,R7,LR}
39D08E:  ADD             R7, SP, #8
39D090:  MOV             R4, R0
39D092:  BLX             j__ZN23CAEPedSpeechAudioEntity17StopCurrentSpeechEv; CAEPedSpeechAudioEntity::StopCurrentSpeech(void)
39D096:  MOVS            R0, #0
39D098:  MOV.W           R1, #0xFFFFFFFF
39D09C:  STRB.W          R0, [R4,#0x90]
39D0A0:  STR             R0, [R4,#4]
39D0A2:  STR.W           R1, [R4,#0x92]
39D0A6:  STRB.W          R0, [R4,#0x98]
39D0AA:  STRB.W          R0, [R4,#0x99]
39D0AE:  STRB.W          R0, [R4,#0x9A]
39D0B2:  STRD.W          R0, R1, [R4,#0xA0]
39D0B6:  MOVW            R0, #0xFFFF
39D0BA:  STRH.W          R0, [R4,#0xA8]
39D0BE:  MOVS            R0, #0xC2C80000
39D0C4:  STR.W           R0, [R4,#0xAC]
39D0C8:  POP             {R4,R6,R7,PC}
