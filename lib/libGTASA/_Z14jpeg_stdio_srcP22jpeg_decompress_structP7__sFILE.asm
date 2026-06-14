; =========================================================
; Game Engine Function: _Z14jpeg_stdio_srcP22jpeg_decompress_structP7__sFILE
; Address            : 0x47BD38 - 0x47BD98
; =========================================================

47BD38:  PUSH            {R4-R7,LR}
47BD3A:  ADD             R7, SP, #0xC
47BD3C:  PUSH.W          {R11}
47BD40:  MOV             R5, R0
47BD42:  MOV             R4, R1
47BD44:  LDR             R0, [R5,#0x18]
47BD46:  CBNZ            R0, loc_47BD6A
47BD48:  LDR             R0, [R5,#4]
47BD4A:  MOVS            R1, #0
47BD4C:  MOVS            R2, #0x28 ; '('
47BD4E:  LDR             R3, [R0]
47BD50:  MOV             R0, R5
47BD52:  BLX             R3
47BD54:  MOV             R6, R0
47BD56:  LDR             R0, [R5,#4]
47BD58:  STR             R6, [R5,#0x18]
47BD5A:  MOVS            R1, #0
47BD5C:  MOV.W           R2, #0x1000
47BD60:  LDR             R3, [R0]
47BD62:  MOV             R0, R5
47BD64:  BLX             R3
47BD66:  STR             R0, [R6,#0x20]
47BD68:  LDR             R0, [R5,#0x18]
47BD6A:  LDR             R1, =(_Z22jpeg_resync_to_restartP22jpeg_decompress_structi_ptr - 0x47BD72)
47BD6C:  LDR             R5, =(sub_47BDB6+1 - 0x47BD78)
47BD6E:  ADD             R1, PC; _Z22jpeg_resync_to_restartP22jpeg_decompress_structi_ptr
47BD70:  LDR             R2, =(sub_47BDAC+1 - 0x47BD7C)
47BD72:  LDR             R3, =(sub_47BE12+1 - 0x47BD80)
47BD74:  ADD             R5, PC; sub_47BDB6
47BD76:  LDR             R1, [R1]; jpeg_resync_to_restart(jpeg_decompress_struct *,int)
47BD78:  ADD             R2, PC; sub_47BDAC
47BD7A:  LDR             R6, =(nullsub_21+1 - 0x47BD8A)
47BD7C:  ADD             R3, PC; sub_47BE12
47BD7E:  STR             R4, [R0,#0x1C]
47BD80:  MOVS            R4, #0
47BD82:  STRD.W          R4, R4, [R0]
47BD86:  ADD             R6, PC; nullsub_21
47BD88:  STRD.W          R2, R5, [R0,#8]
47BD8C:  STR             R6, [R0,#0x18]
47BD8E:  STRD.W          R3, R1, [R0,#0x10]
47BD92:  POP.W           {R11}
47BD96:  POP             {R4-R7,PC}
