; =========================================================
; Game Engine Function: sub_15FBD2
; Address            : 0x15FBD2 - 0x15FC08
; =========================================================

15FBD2:  PUSH            {R4,R5,R7,LR}
15FBD4:  ADD             R7, SP, #8
15FBD6:  SUB             SP, SP, #0x10
15FBD8:  MOV             R2, R1
15FBDA:  MOV             R1, R0
15FBDC:  ADD             R0, SP, #0x18+var_14
15FBDE:  LDR             R4, [R2]
15FBE0:  BL              sub_15FC08
15FBE4:  LDR             R5, [SP,#0x18+var_14]
15FBE6:  MOVS            R0, #0
15FBE8:  STR             R0, [SP,#0x18+var_14]
15FBEA:  CBZ             R5, loc_15FC02
15FBEC:  LDRB.W          R0, [SP,#0x18+var_C]
15FBF0:  CBZ             R0, loc_15FBFC
15FBF2:  ADD.W           R0, R5, #0xC
15FBF6:  MOVS            R1, #0
15FBF8:  BL              sub_F629E
15FBFC:  MOV             R0, R5; void *
15FBFE:  BLX             j__ZdlPv; operator delete(void *)
15FC02:  MOV             R0, R4
15FC04:  ADD             SP, SP, #0x10
15FC06:  POP             {R4,R5,R7,PC}
