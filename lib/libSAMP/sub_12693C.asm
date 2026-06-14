; =========================================================
; Game Engine Function: sub_12693C
; Address            : 0x12693C - 0x126966
; =========================================================

12693C:  SUB             SP, SP, #4
12693E:  PUSH            {R4,R6,R7,LR}
126940:  ADD             R7, SP, #8
126942:  SUB             SP, SP, #0xC
126944:  LDR             R4, =(aSVehicleaudios - 0x126952); "%s/vehicleAudioSettings.cfg" ...
126946:  ADD.W           R1, R7, #8
12694A:  STR             R3, [R7,#var_s8]
12694C:  MOVS            R2, #0xFF
12694E:  ADD             R4, PC; "%s/vehicleAudioSettings.cfg"
126950:  STR             R1, [SP,#0x14+var_C]
126952:  STR             R1, [SP,#0x14+var_14]
126954:  MOVS            R1, #0
126956:  MOV             R3, R4
126958:  BLX             __vsprintf_chk
12695C:  ADD             SP, SP, #0xC
12695E:  POP.W           {R4,R6,R7,LR}
126962:  ADD             SP, SP, #4
126964:  BX              LR
