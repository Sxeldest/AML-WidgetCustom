; =========================================================
; Game Engine Function: opus_packet_get_nb_frames
; Address            : 0xB1E90 - 0xB1EBE
; =========================================================

B1E90:  CMP             R1, #1
B1E92:  BLT             loc_B1EB4
B1E94:  LDRB            R2, [R0]
B1E96:  ANDS.W          R2, R2, #3
B1E9A:  ITT EQ
B1E9C:  MOVEQ           R0, #1
B1E9E:  BXEQ            LR
B1EA0:  CMP             R2, #3
B1EA2:  BNE             loc_B1EBA
B1EA4:  CMP             R1, #2
B1EA6:  ITEE LT
B1EA8:  MOVLT           R0, #0xFFFFFFFC
B1EAC:  LDRBGE          R0, [R0,#1]
B1EAE:  ANDGE.W         R0, R0, #0x3F ; '?'
B1EB2:  BX              LR
B1EB4:  MOV.W           R0, #0xFFFFFFFF
B1EB8:  BX              LR
B1EBA:  MOVS            R0, #2
B1EBC:  BX              LR
