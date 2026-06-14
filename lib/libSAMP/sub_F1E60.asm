; =========================================================
; Game Engine Function: sub_F1E60
; Address            : 0xF1E60 - 0xF1E8C
; =========================================================

F1E60:  PUSH            {R4,R6,R7,LR}
F1E62:  ADD             R7, SP, #8
F1E64:  SUB             SP, SP, #8
F1E66:  MOV             R4, R0
F1E68:  LDR             R0, =(dword_23FBB8 - 0xF1E72)
F1E6A:  MOV             R3, R2
F1E6C:  MOV             R2, R1
F1E6E:  ADD             R0, PC; dword_23FBB8
F1E70:  LDR             R1, [R0]
F1E72:  CBZ             R1, loc_F1E84
F1E74:  MOV             R0, SP
F1E76:  BLX             j__ZNK6Arz_tr2trENSt6__ndk117basic_string_viewIcNS0_11char_traitsIcEEEE; Arz_tr::tr(std::string_view)
F1E7A:  LDRD.W          R0, R1, [SP,#0x10+var_10]
F1E7E:  STRD.W          R0, R1, [R4]
F1E82:  B               loc_F1E88
F1E84:  STRD.W          R2, R3, [R4]
F1E88:  ADD             SP, SP, #8
F1E8A:  POP             {R4,R6,R7,PC}
