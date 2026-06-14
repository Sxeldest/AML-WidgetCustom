; =========================================================
; Game Engine Function: silk_encode_do_VAD_FIX
; Address            : 0x1AA814 - 0x1AA894
; =========================================================

1AA814:  PUSH            {R4,R5,R7,LR}
1AA816:  ADD             R7, SP, #8
1AA818:  MOV             R4, R0
1AA81A:  MOV             R5, R1
1AA81C:  MOVW            R0, #0x13EA
1AA820:  ADDS            R1, R4, R0
1AA822:  MOV             R0, R4
1AA824:  BLX             j_silk_VAD_GetSA_Q8_c
1AA828:  MOVW            R0, #0x11B4
1AA82C:  CMP             R5, #0
1AA82E:  LDR             R1, [R4,R0]
1AA830:  BEQ             loc_1AA84E
1AA832:  CMP             R1, #0xC
1AA834:  BLE             loc_1AA858
1AA836:  MOV.W           R0, #0x17C0
1AA83A:  MOVS            R1, #0
1AA83C:  STR             R1, [R4,R0]
1AA83E:  MOVW            R0, #0x17C4
1AA842:  STR             R1, [R4,R0]
1AA844:  MOVS            R0, #1
1AA846:  MOVW            R1, #0x129D
1AA84A:  STRB            R0, [R4,R1]
1AA84C:  B               loc_1AA884
1AA84E:  CMP             R1, #0xD
1AA850:  ITTT GE
1AA852:  ADDGE           R0, R0, R4
1AA854:  MOVGE           R1, #0xC
1AA856:  STRGE           R1, [R0]
1AA858:  MOVW            R1, #0x17C4
1AA85C:  MOVW            R3, #0x129D
1AA860:  LDR             R2, [R4,R1]
1AA862:  MOVS            R0, #0
1AA864:  STRB            R0, [R4,R3]
1AA866:  CMP             R2, #0xA
1AA868:  ADD.W           R3, R2, #1
1AA86C:  STR             R3, [R4,R1]
1AA86E:  BLT             loc_1AA87A
1AA870:  CMP             R2, #0x1E
1AA872:  BLT             loc_1AA882
1AA874:  ADD             R1, R4
1AA876:  MOVS            R2, #0xA
1AA878:  STR             R2, [R1]
1AA87A:  MOV.W           R1, #0x17C0
1AA87E:  STR             R0, [R4,R1]
1AA880:  B               loc_1AA884
1AA882:  MOVS            R0, #0
1AA884:  MOVW            R1, #0x1674
1AA888:  MOVW            R2, #0x1270
1AA88C:  LDR             R1, [R4,R1]
1AA88E:  ADD             R1, R4
1AA890:  STRB            R0, [R1,R2]
1AA892:  POP             {R4,R5,R7,PC}
