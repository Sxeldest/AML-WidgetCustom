; =========================================================
; Game Engine Function: Java_com_sampmobilerp_game_ui_UI_sendCustomSettingsListener
; Address            : 0x6A9E8 - 0x6AA40
; =========================================================

6A9E8:  PUSH            {R4,R6,R7,LR}
6A9EA:  ADD             R7, SP, #8
6A9EC:  LDR             R1, =(aSampOrig - 0x6A9F8); "SAMP_ORIG" ...
6A9EE:  MOV             R4, R2
6A9F0:  LDR             R2, =(aJavaComSampmob_17 - 0x6A9FC); "Java_com_sampmobilerp_game_ui_UI_sendCu"... ...
6A9F2:  MOVS            R0, #4; prio
6A9F4:  ADD             R1, PC; "SAMP_ORIG"
6A9F6:  MOV             R3, R4
6A9F8:  ADD             R2, PC; "Java_com_sampmobilerp_game_ui_UI_sendCu"...
6A9FA:  BLX             __android_log_print
6A9FE:  BL              sub_68858
6AA02:  LDR             R1, =(dword_1A41E0 - 0x6AA08)
6AA04:  ADD             R1, PC; dword_1A41E0
6AA06:  LDR             R2, [R1]
6AA08:  SUBS            R2, R0, R2
6AA0A:  LSRS            R2, R2, #2
6AA0C:  CMP             R2, #0x7C ; '|'
6AA0E:  BHI             loc_6AA22
6AA10:  LDR             R1, =(aSampOrig - 0x6AA1A); "SAMP_ORIG" ...
6AA12:  MOVS            R0, #4
6AA14:  LDR             R2, =(aAntiSpamClicks - 0x6AA1C); "Anti spam clicks" ...
6AA16:  ADD             R1, PC; "SAMP_ORIG"
6AA18:  ADD             R2, PC; "Anti spam clicks"
6AA1A:  POP.W           {R4,R6,R7,LR}
6AA1E:  B.W             sub_10C158
6AA22:  CMP             R4, #1
6AA24:  STR             R0, [R1]
6AA26:  IT NE
6AA28:  POPNE           {R4,R6,R7,PC}
6AA2A:  LDR             R0, =(off_114B34 - 0x6AA34)
6AA2C:  MOVS            R2, #0
6AA2E:  LDR             R1, =(off_114BD8 - 0x6AA36)
6AA30:  ADD             R0, PC; off_114B34
6AA32:  ADD             R1, PC; off_114BD8
6AA34:  LDR             R0, [R0]; byte_1A39F9
6AA36:  LDR             R1, [R1]; dword_1A453C
6AA38:  STRB            R2, [R0]
6AA3A:  MOVS            R0, #2
6AA3C:  STR             R0, [R1]
6AA3E:  POP             {R4,R6,R7,PC}
