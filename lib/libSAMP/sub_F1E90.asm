; =========================================================
; Game Engine Function: sub_F1E90
; Address            : 0xF1E90 - 0xF1EC4
; =========================================================

F1E90:  PUSH            {R4,R5,R7,LR}
F1E92:  ADD             R7, SP, #8
F1E94:  SUB             SP, SP, #8
F1E96:  MOV             R4, R0
F1E98:  MOV             R0, R1; s
F1E9A:  MOV             R5, R1
F1E9C:  BLX             strlen
F1EA0:  MOV             R3, R0
F1EA2:  LDR             R0, =(dword_23FBB8 - 0xF1EA8)
F1EA4:  ADD             R0, PC; dword_23FBB8
F1EA6:  LDR             R1, [R0]
F1EA8:  CBZ             R1, loc_F1EBC
F1EAA:  MOV             R0, SP
F1EAC:  MOV             R2, R5
F1EAE:  BLX             j__ZNK6Arz_tr2trENSt6__ndk117basic_string_viewIcNS0_11char_traitsIcEEEE; Arz_tr::tr(std::string_view)
F1EB2:  LDRD.W          R0, R1, [SP,#0x10+var_10]
F1EB6:  STRD.W          R0, R1, [R4]
F1EBA:  B               loc_F1EC0
F1EBC:  STRD.W          R5, R3, [R4]
F1EC0:  ADD             SP, SP, #8
F1EC2:  POP             {R4,R5,R7,PC}
