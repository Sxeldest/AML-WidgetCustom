; =========================================================
; Game Engine Function: StartThread
; Address            : 0x252B14 - 0x252B7A
; =========================================================

252B14:  PUSH            {R4-R7,LR}
252B16:  ADD             R7, SP, #0xC
252B18:  PUSH.W          {R11}
252B1C:  SUB             SP, SP, #0x18
252B1E:  MOV             R6, R0
252B20:  MOVS            R0, #0x10; byte_count
252B22:  MOV             R5, R1
252B24:  BLX             malloc
252B28:  MOV             R4, R0
252B2A:  CBZ             R4, loc_252B6E
252B2C:  MOV             R0, SP; attr
252B2E:  BLX             pthread_attr_init
252B32:  CBNZ            R0, loc_252B68
252B34:  MOV             R0, SP; attr
252B36:  MOV.W           R1, #0x100000; stacksize
252B3A:  BLX             pthread_attr_setstacksize
252B3E:  CBZ             R0, loc_252B48
252B40:  MOV             R0, SP; attr
252B42:  BLX             pthread_attr_destroy
252B46:  B               loc_252B68
252B48:  LDR             R2, =(sub_252B80+1 - 0x252B58)
252B4A:  ADD.W           R0, R4, #0xC; newthread
252B4E:  STRD.W          R6, R5, [R4]
252B52:  MOV             R5, SP
252B54:  ADD             R2, PC; sub_252B80 ; start_routine
252B56:  MOV             R1, R5; attr
252B58:  MOV             R3, R4; arg
252B5A:  BLX             pthread_create
252B5E:  MOV             R6, R0
252B60:  MOV             R0, R5; attr
252B62:  BLX             pthread_attr_destroy
252B66:  CBZ             R6, loc_252B70
252B68:  MOV             R0, R4; p
252B6A:  BLX             free
252B6E:  MOVS            R4, #0
252B70:  MOV             R0, R4
252B72:  ADD             SP, SP, #0x18
252B74:  POP.W           {R11}
252B78:  POP             {R4-R7,PC}
