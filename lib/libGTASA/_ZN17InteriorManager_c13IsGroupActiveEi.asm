; =========================================================
; Game Engine Function: _ZN17InteriorManager_c13IsGroupActiveEi
; Address            : 0x44C7DE - 0x44C806
; =========================================================

44C7DE:  MOVW            R2, #0x428C
44C7E2:  LDR             R0, [R0,R2]
44C7E4:  CMP             R0, #0
44C7E6:  ITT EQ
44C7E8:  MOVEQ           R0, #0
44C7EA:  BXEQ            LR
44C7EC:  B               loc_44C7F8
44C7EE:  LDR             R0, [R0,#4]
44C7F0:  CMP             R0, #0
44C7F2:  ITT EQ
44C7F4:  MOVEQ           R0, #0
44C7F6:  BXEQ            LR
44C7F8:  LDRSB.W         R2, [R0,#0xE]
44C7FC:  CMP             R2, R1
44C7FE:  ITT EQ
44C800:  MOVEQ           R0, #1
44C802:  BXEQ            LR
44C804:  B               loc_44C7EE
