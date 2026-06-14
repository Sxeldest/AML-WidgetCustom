; =========================================================
; Game Engine Function: celt_lcg_rand
; Address            : 0x19B850 - 0x19B866
; =========================================================

19B850:  MOVW            R1, #0xF35F
19B854:  MOVW            R2, #:lower16:(loc_19660C+1)
19B858:  MOVT            R1, #0x3C6E
19B85C:  MOVT            R2, #:upper16:(loc_19660C+1)
19B860:  MLA.W           R0, R0, R2, R1
19B864:  BX              LR
