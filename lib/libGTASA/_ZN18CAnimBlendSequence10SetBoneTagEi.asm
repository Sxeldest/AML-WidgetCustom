; =========================================================
; Game Engine Function: _ZN18CAnimBlendSequence10SetBoneTagEi
; Address            : 0x38B860 - 0x38B870
; =========================================================

38B860:  ADDS            R2, R1, #1
38B862:  ITTTT NE
38B864:  LDRHNE          R2, [R0,#4]
38B866:  STRHNE          R1, [R0]
38B868:  ORRNE.W         R1, R2, #0x10
38B86C:  STRHNE          R1, [R0,#4]
38B86E:  BX              LR
