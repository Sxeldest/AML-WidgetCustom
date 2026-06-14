; =========================================================
; Game Engine Function: _ZN11CTheScripts30UndoEntityInvisibilitySettingsEv
; Address            : 0x34A868 - 0x34A8AC
; =========================================================

34A868:  PUSH            {R7,LR}
34A86A:  MOV             R7, SP
34A86C:  LDR             R0, =(_ZN11CTheScripts24InvisibilitySettingArrayE_ptr - 0x34A878)
34A86E:  MOV.W           R12, #0
34A872:  MOVS            R3, #0
34A874:  ADD             R0, PC; _ZN11CTheScripts24InvisibilitySettingArrayE_ptr
34A876:  LDR.W           LR, [R0]; CTheScripts::InvisibilitySettingArray ...
34A87A:  LDR             R0, =(_ZN11CTheScripts24InvisibilitySettingArrayE_ptr - 0x34A880)
34A87C:  ADD             R0, PC; _ZN11CTheScripts24InvisibilitySettingArrayE_ptr
34A87E:  LDR             R2, [R0]; CTheScripts::InvisibilitySettingArray ...
34A880:  B               loc_34A88A
34A882:  ADDS            R3, #1
34A884:  CMP             R3, #0x14
34A886:  IT EQ
34A888:  POPEQ           {R7,PC}
34A88A:  LDR.W           R0, [LR,R3,LSL#2]
34A88E:  CMP             R0, #0
34A890:  BEQ             loc_34A882
34A892:  LDR             R1, [R0,#0x1C]
34A894:  ORR.W           R1, R1, #0x80
34A898:  STR             R1, [R0,#0x1C]
34A89A:  LDR.W           R0, [R2,R3,LSL#2]
34A89E:  LDR             R1, [R0,#0x1C]
34A8A0:  ORR.W           R1, R1, #1
34A8A4:  STR             R1, [R0,#0x1C]
34A8A6:  STR.W           R12, [R2,R3,LSL#2]
34A8AA:  B               loc_34A882
