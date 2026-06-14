; =========================================================
; Game Engine Function: Java_com_sampmobilerp_game_ui_widgets_MobileMenu_setFpsLimitNative
; Address            : 0x6AA5C - 0x6AA9A
; =========================================================

6AA5C:  PUSH            {R4,R5,R7,LR}
6AA5E:  ADD             R7, SP, #8
6AA60:  LDR             R0, =(off_114B6C - 0x6AA72)
6AA62:  MOVW            R12, #:lower16:(loc_F57EC+1)
6AA66:  LDR             R1, =(off_114B64 - 0x6AA76)
6AA68:  MOVT            R12, #:upper16:(loc_F57EC+1)
6AA6C:  LDR             R3, =(off_114B60 - 0x6AA7A)
6AA6E:  ADD             R0, PC; off_114B6C
6AA70:  LDR             R4, =(off_114B68 - 0x6AA7C)
6AA72:  ADD             R1, PC; off_114B64
6AA74:  LDR             R5, =(off_114AB0 - 0x6AA80)
6AA76:  ADD             R3, PC; off_114B60
6AA78:  ADD             R4, PC; off_114B68
6AA7A:  LDR             R0, [R0]; dword_116D04
6AA7C:  ADD             R5, PC; off_114AB0
6AA7E:  LDR             R1, [R1]; dword_1A3A68
6AA80:  LDR             R3, [R3]; dword_1A3A6C
6AA82:  LDR             R5, [R5]; dword_1A4408
6AA84:  LDR             R4, [R4]; dword_1A3A70
6AA86:  STR             R2, [R0]
6AA88:  LDR             R5, [R5]
6AA8A:  LDR             R0, [R1]
6AA8C:  LDR             R1, [R3]
6AA8E:  ADD.W           R3, R5, R12
6AA92:  LDR             R2, [R4]
6AA94:  POP.W           {R4,R5,R7,LR}
6AA98:  BX              R3
