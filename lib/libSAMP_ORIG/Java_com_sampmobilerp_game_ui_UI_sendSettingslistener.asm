; =========================================================
; Game Engine Function: Java_com_sampmobilerp_game_ui_UI_sendSettingslistener
; Address            : 0x6A8BC - 0x6A9A0
; =========================================================

6A8BC:  PUSH            {R4-R7,LR}
6A8BE:  ADD             R7, SP, #0xC
6A8C0:  PUSH.W          {R11}
6A8C4:  SUB             SP, SP, #8
6A8C6:  LDR             R1, =(aSampOrig - 0x6A8D2); "SAMP_ORIG" ...
6A8C8:  MOV             R4, R2
6A8CA:  LDR             R2, =(aJavaComSampmob_16 - 0x6A8D6); "Java_com_sampmobilerp_game_ui_UI_sendSe"... ...
6A8CC:  MOVS            R0, #4; prio
6A8CE:  ADD             R1, PC; "SAMP_ORIG"
6A8D0:  MOV             R3, R4
6A8D2:  ADD             R2, PC; "Java_com_sampmobilerp_game_ui_UI_sendSe"...
6A8D4:  BLX             __android_log_print
6A8D8:  BL              sub_68858
6A8DC:  LDR             R1, =(dword_1A41E0 - 0x6A8E2)
6A8DE:  ADD             R1, PC; dword_1A41E0
6A8E0:  LDR             R2, [R1]
6A8E2:  SUBS            R2, R0, R2
6A8E4:  LSRS            R2, R2, #2
6A8E6:  CMP             R2, #0x7C ; '|'
6A8E8:  BHI             loc_6A902
6A8EA:  LDR             R1, =(aSampOrig - 0x6A8F4); "SAMP_ORIG" ...
6A8EC:  MOVS            R0, #4
6A8EE:  LDR             R2, =(aAntiSpamClicks - 0x6A8F6); "Anti spam clicks" ...
6A8F0:  ADD             R1, PC; "SAMP_ORIG"
6A8F2:  ADD             R2, PC; "Anti spam clicks"
6A8F4:  ADD             SP, SP, #8
6A8F6:  POP.W           {R11}
6A8FA:  POP.W           {R4-R7,LR}
6A8FE:  B.W             sub_10C158
6A902:  LDR             R2, =(off_114B18 - 0x6A90A)
6A904:  STR             R0, [R1]
6A906:  ADD             R2, PC; off_114B18
6A908:  LDR             R6, [R2]; dword_11769C
6A90A:  LDR             R5, [R6]
6A90C:  CBZ             R5, loc_6A920
6A90E:  CMP             R4, #1
6A910:  BEQ             loc_6A966
6A912:  CMP             R4, #2
6A914:  BEQ             loc_6A986
6A916:  CMP             R4, #3
6A918:  BNE             loc_6A998
6A91A:  MOVS            R0, #0; status
6A91C:  BLX             exit
6A920:  MOVS            R0, #0x58 ; 'X'; unsigned int
6A922:  BLX             j__Znwj; operator new(uint)
6A926:  LDR             R1, =(aSampOrig - 0x6A932); "SAMP_ORIG" ...
6A928:  MOV             R5, R0
6A92A:  LDR             R2, =(aFlowscreenFlow - 0x6A934); "FlowScreen::FlowScreen(%s, %s)" ...
6A92C:  LDR             R3, =(aTrue - 0x6A936); "true" ...
6A92E:  ADD             R1, PC; "SAMP_ORIG"
6A930:  ADD             R2, PC; "FlowScreen::FlowScreen(%s, %s)"
6A932:  ADD             R3, PC; "true"
6A934:  MOVS            R0, #4; prio
6A936:  STR             R3, [SP,#0x18+var_18]
6A938:  BLX             __android_log_print
6A93C:  LDR             R0, =(off_114BD0 - 0x6A942)
6A93E:  ADD             R0, PC; off_114BD0
6A940:  LDR             R0, [R0]; dword_1A440C
6A942:  LDR             R0, [R0]; handle
6A944:  LDR             R1, =(aZn10flowscreen - 0x6A94A); "_ZN10FlowScreenC2Ebb" ...
6A946:  ADD             R1, PC; "_ZN10FlowScreenC2Ebb"
6A948:  BLX             dlsym
6A94C:  MOV             R3, R0
6A94E:  MOV             R0, R5
6A950:  MOVS            R1, #1
6A952:  MOVS            R2, #1
6A954:  BLX             R3
6A956:  LDR             R0, =(off_114BD4 - 0x6A95E)
6A958:  STR             R5, [R6]
6A95A:  ADD             R0, PC; off_114BD4
6A95C:  LDR             R0, [R0]; dword_1A4540
6A95E:  LDR             R0, [R0]
6A960:  STR             R0, [R5]
6A962:  CMP             R4, #1
6A964:  BNE             loc_6A912
6A966:  LDR             R0, =(off_114AA8 - 0x6A974)
6A968:  MOV             R1, #0x29D1B5
6A970:  ADD             R0, PC; off_114AA8
6A972:  LDR             R0, [R0]; dword_1A4404
6A974:  LDR             R0, [R0]
6A976:  ADD             R1, R0
6A978:  MOV             R0, R5
6A97A:  ADD             SP, SP, #8
6A97C:  POP.W           {R11}
6A980:  POP.W           {R4-R7,LR}
6A984:  BX              R1
6A986:  LDR             R0, =(off_114B34 - 0x6A990)
6A988:  MOVS            R2, #1
6A98A:  LDR             R1, =(off_114BD8 - 0x6A992)
6A98C:  ADD             R0, PC; off_114B34
6A98E:  ADD             R1, PC; off_114BD8
6A990:  LDR             R0, [R0]; byte_1A39F9
6A992:  LDR             R1, [R1]; dword_1A453C
6A994:  STRB            R2, [R0]
6A996:  STR             R2, [R1]
6A998:  ADD             SP, SP, #8
6A99A:  POP.W           {R11}
6A99E:  POP             {R4-R7,PC}
