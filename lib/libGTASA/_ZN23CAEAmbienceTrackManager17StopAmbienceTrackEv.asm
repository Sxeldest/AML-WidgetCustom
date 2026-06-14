; =========================================================
; Game Engine Function: _ZN23CAEAmbienceTrackManager17StopAmbienceTrackEv
; Address            : 0x391818 - 0x39182A
; =========================================================

391818:  LDR             R1, [R0,#8]
39181A:  CMP             R1, #3
39181C:  ITT LS
39181E:  MOVLS           R1, #4
391820:  STRLS           R1, [R0,#8]
391822:  MOVS            R1, #0
391824:  STRB            R1, [R0,#2]
391826:  STRH            R1, [R0]
391828:  BX              LR
