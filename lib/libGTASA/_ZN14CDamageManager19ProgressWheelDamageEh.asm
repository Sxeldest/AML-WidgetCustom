; =========================================================
; Game Engine Function: _ZN14CDamageManager19ProgressWheelDamageEh
; Address            : 0x56E86C - 0x56E880
; =========================================================

56E86C:  ADD             R0, R1
56E86E:  LDRB.W          R1, [R0,#5]!
56E872:  CMP             R1, #2
56E874:  ITEEE EQ
56E876:  MOVEQ           R0, #0
56E878:  ADDNE           R1, #1
56E87A:  STRBNE          R1, [R0]
56E87C:  MOVNE           R0, #1
56E87E:  BX              LR
