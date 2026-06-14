; =========================================================
; Game Engine Function: sub_1B9F20
; Address            : 0x1B9F20 - 0x1B9FAC
; =========================================================

1B9F20:  PUSH            {R4,R5,R11,LR}
1B9F24:  ADD             R11, SP, #8
1B9F28:  MOV             R4, R0
1B9F2C:  MOVW            R0, #0x5622
1B9F30:  STR             R0, [R4,#0xC]
1B9F34:  MOVW            R1, #:lower16:(aZnkst6Ndk14Fs1_14+0x25); "eginEv"
1B9F38:  LDR             R0, [R4,#0x18]
1B9F3C:  MOVT            R1, #:upper16:(aZnkst6Ndk14Fs1_14+0x25); "eginEv"
1B9F40:  LDR             R5, [R4,R1]
1B9F44:  MOV             R1, #2
1B9F48:  STR             R1, [R4,#0x14]
1B9F4C:  BL              j_ChannelsFromDevFmt
1B9F50:  LDR             R1, [R4,#0x1C]
1B9F54:  CMP             R0, #1
1B9F58:  MOV             R2, #0x1500
1B9F5C:  MOVWHI          R2, #0x1501
1B9F60:  MOV             R0, R1
1B9F64:  STR             R2, [R4,#0x18]
1B9F68:  BL              j_BytesFromDevFmt
1B9F6C:  CMP             R0, #1
1B9F70:  MOVW            R1, #0x1401
1B9F74:  MOVWHI          R1, #0x1402
1B9F78:  MOV             R0, R4
1B9F7C:  STR             R1, [R4,#0x1C]
1B9F80:  BL              j_SetDefaultChannelOrder
1B9F84:  LDR             R0, =(sub_1BA000 - 0x1B9F9C)
1B9F88:  MOV             R1, #1
1B9F8C:  STR             R1, [R5,#4]
1B9F90:  MOV             R1, #0; attr
1B9F94:  ADD             R2, PC, R0; sub_1BA000 ; start_routine
1B9F98:  MOV             R0, R5; newthread
1B9F9C:  MOV             R3, R4; arg
1B9FA0:  BL              pthread_create
1B9FA4:  MOV             R0, #1
1B9FA8:  POP             {R4,R5,R11,PC}
