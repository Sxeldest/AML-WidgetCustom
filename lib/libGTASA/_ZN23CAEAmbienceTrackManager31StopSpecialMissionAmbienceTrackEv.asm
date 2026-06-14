; =========================================================
; Game Engine Function: _ZN23CAEAmbienceTrackManager31StopSpecialMissionAmbienceTrackEv
; Address            : 0x39186A - 0x391888
; =========================================================

39186A:  LDR             R1, [R0,#8]
39186C:  MOVS            R2, #0
39186E:  CMP             R1, #3
391870:  ITT LS
391872:  MOVLS           R1, #4
391874:  STRLS           R1, [R0,#8]
391876:  MOV.W           R1, #0xFFFFFFFF
39187A:  STRD.W          R1, R1, [R0,#0xC]
39187E:  MOV.W           R1, #0xFF000000
391882:  STR             R2, [R0,#0x14]
391884:  STR             R1, [R0]
391886:  BX              LR
