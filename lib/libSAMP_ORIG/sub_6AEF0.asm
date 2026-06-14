; =========================================================
; Game Engine Function: sub_6AEF0
; Address            : 0x6AEF0 - 0x6AFD8
; =========================================================

6AEF0:  PUSH            {R4,R6,R7,LR}
6AEF2:  ADD             R7, SP, #8
6AEF4:  SUB             SP, SP, #0x18
6AEF6:  LDR             R0, =(sub_6B36C+1 - 0x6AF00)
6AEF8:  ADD             R4, SP, #0x20+var_1C
6AEFA:  LDR             R1, =(__stack_chk_guard_ptr - 0x6AF02)
6AEFC:  ADD             R0, PC; sub_6B36C
6AEFE:  ADD             R1, PC; __stack_chk_guard_ptr
6AF00:  LDR             R1, [R1]; __stack_chk_guard
6AF02:  LDR             R1, [R1]
6AF04:  STR             R1, [SP,#0x20+var_C]
6AF06:  MOVS            R1, #0
6AF08:  STRD.W          R0, R1, [SP,#0x20+var_1C]
6AF0C:  ADDS            R0, R4, #4; set
6AF0E:  STRD.W          R1, R1, [SP,#0x20+var_14]
6AF12:  BLX             sigemptyset
6AF16:  MOVS            R0, #4
6AF18:  MOV             R1, R4; act
6AF1A:  STR             R0, [SP,#0x20+var_14]
6AF1C:  MOVS            R0, #0xB; sig
6AF1E:  MOVS            R2, #0; oact
6AF20:  BLX             sigaction
6AF24:  LDR             R0, =(aDataDataComSam_0 - 0x6AF2C); "/data/data/com.sampmobilerp.game/lib/li"... ...
6AF26:  MOVS            R1, #1; mode
6AF28:  ADD             R0, PC; "/data/data/com.sampmobilerp.game/lib/li"...
6AF2A:  BLX             dlopen
6AF2E:  LDR             R4, =(dword_1A440C - 0x6AF36)
6AF30:  LDR             R1, =(aDataDataComSam_1 - 0x6AF38); "/data/data/com.sampmobilerp.game/lib/li"... ...
6AF32:  ADD             R4, PC; dword_1A440C
6AF34:  ADD             R1, PC; "/data/data/com.sampmobilerp.game/lib/li"...
6AF36:  STR             R0, [R4]
6AF38:  MOV             R0, R1; file
6AF3A:  MOVS            R1, #1; mode
6AF3C:  BLX             dlopen
6AF40:  LDR             R1, =(dword_1A4410 - 0x6AF48)
6AF42:  LDR             R2, [R4]
6AF44:  ADD             R1, PC; dword_1A4410
6AF46:  STR             R0, [R1]
6AF48:  CBZ             R2, loc_6AF80
6AF4A:  CBZ             R0, loc_6AF8A
6AF4C:  LDR             R0, =(aLibgtasaSo - 0x6AF52); "libGTASA.so" ...
6AF4E:  ADD             R0, PC; "libGTASA.so"
6AF50:  BL              sub_6B030
6AF54:  LDR             R4, =(dword_1A4404 - 0x6AF5C)
6AF56:  LDR             R1, =(aLibsampSo - 0x6AF5E); "libsamp.so" ...
6AF58:  ADD             R4, PC; dword_1A4404
6AF5A:  ADD             R1, PC; "libsamp.so"
6AF5C:  STR             R0, [R4]
6AF5E:  MOV             R0, R1
6AF60:  BL              sub_6B030
6AF64:  LDR             R1, =(dword_1A4408 - 0x6AF6C)
6AF66:  LDR             R2, [R4]
6AF68:  ADD             R1, PC; dword_1A4408
6AF6A:  STR             R0, [R1]
6AF6C:  CBZ             R2, loc_6AF94
6AF6E:  CBZ             R0, loc_6AF9E
6AF70:  BL              sub_5FE2C
6AF74:  CBZ             R0, loc_6AFC2
6AF76:  LDR             R1, =(aSampOrig - 0x6AF7E); "SAMP_ORIG" ...
6AF78:  LDR             R2, =(aNewSoFileDetec_0 - 0x6AF80); "New .so file detected in the lib direct"... ...
6AF7A:  ADD             R1, PC; "SAMP_ORIG"
6AF7C:  ADD             R2, PC; "New .so file detected in the lib direct"...
6AF7E:  B               loc_6AFA6
6AF80:  LDR             R1, =(aSampOrig - 0x6AF88); "SAMP_ORIG" ...
6AF82:  LDR             R2, =(aFailedToOpenSa - 0x6AF8A); "Failed to open SA library!" ...
6AF84:  ADD             R1, PC; "SAMP_ORIG"
6AF86:  ADD             R2, PC; "Failed to open SA library!"
6AF88:  B               loc_6AFA6
6AF8A:  LDR             R1, =(aSampOrig - 0x6AF92); "SAMP_ORIG" ...
6AF8C:  LDR             R2, =(aFailedToOpenSa_0 - 0x6AF94); "Failed to open SAMP library!" ...
6AF8E:  ADD             R1, PC; "SAMP_ORIG"
6AF90:  ADD             R2, PC; "Failed to open SAMP library!"
6AF92:  B               loc_6AFA6
6AF94:  LDR             R1, =(aSampOrig - 0x6AF9C); "SAMP_ORIG" ...
6AF96:  LDR             R2, =(aSaLibraryAddre - 0x6AF9E); "SA library address not found!" ...
6AF98:  ADD             R1, PC; "SAMP_ORIG"
6AF9A:  ADD             R2, PC; "SA library address not found!"
6AF9C:  B               loc_6AFA6
6AF9E:  LDR             R1, =(aSampOrig - 0x6AFA6); "SAMP_ORIG" ...
6AFA0:  LDR             R2, =(aSampLibraryAdd - 0x6AFA8); "SAMP library address not found!" ...
6AFA2:  ADD             R1, PC; "SAMP_ORIG"
6AFA4:  ADD             R2, PC; "SAMP library address not found!"
6AFA6:  MOVS            R0, #6; prio
6AFA8:  BLX             __android_log_print
6AFAC:  LDR             R0, [SP,#0x20+var_C]
6AFAE:  LDR             R1, =(__stack_chk_guard_ptr - 0x6AFB4)
6AFB0:  ADD             R1, PC; __stack_chk_guard_ptr
6AFB2:  LDR             R1, [R1]; __stack_chk_guard
6AFB4:  LDR             R1, [R1]
6AFB6:  CMP             R1, R0
6AFB8:  ITT EQ
6AFBA:  ADDEQ           SP, SP, #0x18
6AFBC:  POPEQ           {R4,R6,R7,PC}
6AFBE:  BLX             __stack_chk_fail
6AFC2:  BL              sub_6C0E4
6AFC6:  LDR             R1, =(off_114BE0 - 0x6AFD0)
6AFC8:  MOV             R0, SP; newthread
6AFCA:  MOVS            R3, #0; arg
6AFCC:  ADD             R1, PC; off_114BE0
6AFCE:  LDR             R2, [R1]; sub_6C26C ; start_routine
6AFD0:  MOVS            R1, #0; attr
6AFD2:  BLX             pthread_create
6AFD6:  B               loc_6AFAC
